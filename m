Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17AFF4C97
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767828834; cv=none; b=K/qenCpa9GNxBEXk6ON39zONAFbScGQ6AuvMaYmduSz8WaORe9p0McfTUP9CHHCtI2Jqp/zwDCsJXclb0hf+61HOJxLokGB4qjlMIYZUxOcVZ2hzfCdRQmZCixbx7C0AeD98GBa9PR9U1GRNQwArRiXSgvomdxRkhg+TTY0+s6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767828834; c=relaxed/simple;
	bh=VQzTRrinagZvXuy/Z1Tsa2g4Jf/68n23obOLs9xqrVo=;
	h=To:Subject:From:Message-Id:Date; b=ouIW8tilFcpyDikHFjJEWNKntFVzt4GIQV9krWE3z7KKEN6I4zQFiQJ1dhVgPtpMFco7hsGrEh5CNsmOcaUyLWwdr3SHe8XGg5NrykI01l39VGZdz8PVpVdlSl7CUy21zxwhrSFnoWOBQF+FyRFJqPmt0Npthw348j/o4B/ithU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK1uHe+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK1uHe+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1801C19421
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767828833;
	bh=VQzTRrinagZvXuy/Z1Tsa2g4Jf/68n23obOLs9xqrVo=;
	h=To:Subject:From:Date:From;
	b=HK1uHe+S/Pc1ziCqV1PPD7uIfoAMUAMY5xmMA6GO6wMaY7Nb918Lukzy16mgHvaFq
	 wmjvb4VztTgO1W8+Mb1A1VGaF7H+P7HtuiAcf3yXDJgyyavF6adhdtikTzgwjK50DY
	 K1+mUQDt88B2DZRpJkxHuVuzoYlYER+No/wpUgeTG0v8UUfrXkgk332VOrBvnpYl1V
	 x1p6OzhYamBTpbV+XBYqYWZg6aoWlEa+SGaDhjXSYxvPQJ10L2Odi3iKqlZEXhQ6AD
	 Ow72RHp4o5WxmgVMf/gqTDprYoSFZru2nLzGvjouYoCc0MbqB0ZTcKyV2tEC3lkhJg
	 K0XZ5l6AhcFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9091AD0D17D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782883358.17048.5713961247445798520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a2ab59ce3e672943ac0f1e020c29fd0fe2820f648df452b4e9b4812c0e5ff64
Date: Wed, 07 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767828833
