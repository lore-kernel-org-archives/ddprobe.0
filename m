Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF3238F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713574223; cv=none; b=sU7ne50nAf5T6WWd8I/i4X8IixcnuH+2SC9HbwqkmmRjlyNX08ZshbjEgTOh/Hm0XX3xxXXDPw13yoj3vA+5wO0T0Q5nLto8XGR9UmZIbWcsgj5TFBH+ilneFIGYEGgh521K189OooTCYzW12IoP0xJ/JBoghp1f3qpjfF6Imjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713574223; c=relaxed/simple;
	bh=bQYaEzuUPXKbRmEFGUzG9I387H1FDNg6zTTzjJSuKPw=;
	h=To:Subject:From:Message-Id:Date; b=L5YnmJ/bFe1XnUcaZpii4ljMxbIn30pklxdwE2yJtDskDE+r+8Rn1omfWXdgaCAO1P15kat+KTMQY1ar4ZaMs7bFjzvJ3x4HN8F8ySZP0rmefDt/InoXSI+nzdzqISb6UFi8kqKnMm+Yabig5GP3qwVIBpTQrNJnsk5tV95a+ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+PnQ3Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+PnQ3Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00AAFC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713574223;
	bh=bQYaEzuUPXKbRmEFGUzG9I387H1FDNg6zTTzjJSuKPw=;
	h=To:Subject:From:Date:From;
	b=e+PnQ3FswcuAs7n31xR0EinWuqy+PSCPs61x0b4Vpdsz6tFjqfkaoIDXIb+TkCRiR
	 5xie/0pJGi6Ap+VFmRR4+6YS4X1XVHPnG8X+7Z14RtfV/AaRcIzew+ThsWPpFI3yJi
	 GfwUou+8/N2/3btMFh6SnnljgaXFfOm8777pL8wL1xD2OalPnQcZmUtKn6dnRNMhTf
	 3tkTzHRN70QcmBaxNuTPEx7TjzgtNSjWtLsh0wAtslZiSeNzdypE2eK0Qe+LCRewgE
	 SfTgkbzbWi4+bxr3x+ASMle/g3VKr4ovLY3DMr/PUVsW98athVQd4W1zw6BPM1vx8u
	 DKLkFzxa/t7tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5B89C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 00:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171357422282.5334.14002955253304299915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a7dfdecb6541d1ecdc903a86f7e54109e21e332b553f7509aa8908f778d5ef6
Date: Sat, 20 Apr 2024 00:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713574222
