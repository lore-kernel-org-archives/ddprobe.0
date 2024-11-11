Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296872595
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731294954; cv=none; b=CZfL+ldZTCrAHkadZv35D7ayvq8pbFOR2E3hx1HP1tk+6oOx934kuJg4GWvbf0yrSrgwGpYUm8jjC+RhNSwTKxi5cvCIuPb6Gak+ekeZvtDOdB9ywP9HaTlbtSRJ5+Av6zN9ltYR8YiiGaMjdR0EwkRghZ9ajOPJnoi95iEH/WQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731294954; c=relaxed/simple;
	bh=EdviQR/t+Gk/iCvuLW2OWP9ZgA+cSiIGOo+f8ACoes8=;
	h=To:Subject:From:Message-Id:Date; b=h1CVMm7bVFE1+sSc0reNFcQv8pa4wsAU+jgvbh9rmYUXzRf/2xyJHza20KoC2lm8MpZQXx1mtyacerlOl8yBiuKDWDKAag7q7yErDLLUCKPj4S/oNrTSAehuh8ISc+ydsC3jtgbbIiyb2hMSb3LIp0Jj36nhrA+JvjLmaBAOUc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOMoMPCl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOMoMPCl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD7C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731294953;
	bh=EdviQR/t+Gk/iCvuLW2OWP9ZgA+cSiIGOo+f8ACoes8=;
	h=To:Subject:From:Date:From;
	b=oOMoMPCl9kDH0E4v9ue4L2We1vS3bwMhQPSAKc1ptP0L1kV5lBm62T1G2KnjsHNFW
	 CDb37heI4No1UUXvXgrGYzqs8A3VlPk2Zxj2yQNzDk4weVM33Ptuq9OvffNeIhQBWW
	 bMc6EaHsl+HJ4k55ilc0HdVHyFcUxcZe9VptE9Q46xVbGhO0cYuNWGNGxwh0kh7G3x
	 kM6BJSbqTK5HlmN7mbN1vi3mDEBElhjn6fC//tt+3vcaqtgxJYKJLR75CjICkSFxNr
	 xUoXtlBdiCcK3eCZ5/JP74f0gutvCF8N0DItOAyARqLbE2oROHaj21Bwy+6KOS8Dpy
	 adADnuhFSySaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DF9D12D63
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173129495358.10321.17897311294057602130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed581eb7001c108407ab636d3756046c40c4649ab0b44f40ffa268953a4ad8bd
Date: Mon, 11 Nov 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731294953
