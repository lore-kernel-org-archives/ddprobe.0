Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE47282EB
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760830194; cv=none; b=JkQ5tV/P2SCSsO5XJHtL+IqtbrRfIMCeoeurRrq5CcmTLy5UYhUjsErUQl+Qlntm7JvzJ1OzH6vMp7blUHj6faFmRusewbGTRivy9aVC7KV+e7oC39xZ+efA57kJL0yz+WK2KRLa5knFHA3iQkUKTW/53RB5kmIdXtRNft26hQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760830194; c=relaxed/simple;
	bh=Z0e7NgNKMxvgfbZY2zBy1mVHWOPy5amm0dsDDWpuiF4=;
	h=To:Subject:From:Message-Id:Date; b=qupbIxNvM67tMEWNbSUArhnEFIofylS+obfzM3PafDgzMngEZMVBZoCeGF1gXzHlkkG42lqj9M8FQI+6G6lt+TGiQMlox42vLQbSfKDbnBAdP51vwiQL9gBXAtcAczF4wr+7i3+Uu/k3Bagw6YlZgvKh8tguJbSNToQlXcC6ZDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mi6XoJSv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mi6XoJSv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ACBC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760830193;
	bh=Z0e7NgNKMxvgfbZY2zBy1mVHWOPy5amm0dsDDWpuiF4=;
	h=To:Subject:From:Date:From;
	b=mi6XoJSvRRXMnhLQDTH54VVWz6HaQGMA1EjKGo7shWKih9YIEGtQYPpxBzAxzzx+h
	 338LF6OxAppPVWbrzQOjYRYsiibNWRut7Q+wDVUuU/kmuMdrTUtxMuE9YFsqafM4KR
	 cC+LpfXmK4ge8s/u6SWr+dWyLvJGMJ5DEpC7VwSlDF+FZLVn8bTujhBSJ9s8EsK6kJ
	 B1+HGKvZJKJeCoEQVPbnMnNkhQytW3jVY3VgQ4pL32V9mI7peAVx/7b6RT1CgY76J/
	 C/HG0BcLLdsPkgrkCXXAMwTGaz+puTfadYFnhuX51kxGrqqAHgmi4Gf4HpTRTwm/kN
	 tz9Fe3pkuysbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C25CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176083019358.13922.12488010188092073527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aee55460e51b270187204f7fa21ffe8fd69ddfd53351448487f5c7c5647f664
Date: Sat, 18 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760830193
