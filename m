Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660532D949F
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778347054; cv=none; b=f5HiJ3SkpvLKTDBJFuzv0QqjGwfdRBVb1H0LZ5CUwQ53AHLtmeZ0bMC3UesT0iVRnG3UAaMhDRWDplbBEjBYJ1gUpeTzpgV/XSOCcYe45HHOxaEMdRHEvUa/uyP08Um8pNsm5e3r6HneGO8zar73oBVijtbke2G8ZwJhJnkFhwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778347054; c=relaxed/simple;
	bh=ca5EAA2hp6FaH0cT5ctPnDw7aI11jJ6UqPkPKbennTw=;
	h=To:Subject:From:Message-Id:Date; b=iSQYj3jtaDHMCSqUWdZZ1jPgs0Ny3H+XBL43IZJDwDXljt2X5c4Fgcqtm+oQsLdoHSmjQku7c8Mb3xA96rlcR45AfheGpmG8A62ede+fvYJlVcwexCqtZ+58Bfwv9LC8EciHT+3IWq1eBLPZ61QO30gOIxsuOyZzuaV1wY/9HvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUIMDE9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUIMDE9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A646C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778347054;
	bh=ca5EAA2hp6FaH0cT5ctPnDw7aI11jJ6UqPkPKbennTw=;
	h=To:Subject:From:Date:From;
	b=nUIMDE9Ul8R9oPvtpBdWdkB6EBGxS3Uk/qVwapevBSAdzEvP28RSzk3HVu5bBPG3L
	 DVT3qxjZGH0utHnYG71UsQZhKZdpqN9SEmiJx6wBaqmsj0jF3MxxpXCCzcBkWiBbSg
	 mUjlleATVgzHR6codmcrQunAZ8gfbt3BwhBiyCKyPhrLrDpT45Ip7AiqRulk97rXgt
	 xdI18NcP8Ck732/cU9ysl0eYwWKrIIQuM44Y7ngn2KGefBJH3Bz0l0vfsowk5MG/XZ
	 3MaL/C712tkAM881X0ESfKsi8EkQEXLvnTdWkmwdK6C/I74TWv3Z0GyOHGyi0jX05H
	 gO7MC0Y6A6FZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3ACCCD37AF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834705385.7905.8286133509400865164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4048e6b8298529a12fd588bfeea5cef356d5e49fd9f4bb09ce2a69cff888db9
Date: Sat, 09 May 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778347053
