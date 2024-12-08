Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364C5211C
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733684754; cv=none; b=Wyn5CB62ptiPUtaswxmV0Ia/EG4AHWcNK/W47/u3nVsO/oPexTInIzQaTUY3bS06aTsH40KpYAmp4N842Z6MsbXTeUrR29E3RmdVgAGt0E+I1pCVsZzYAzpn+AxLcqna2PWb5HcyiT0HU7gYD/hH+UcNf5bRgLSpUDs/wpBO10c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733684754; c=relaxed/simple;
	bh=0H8rAOpe8PSZbEPbaf7sVP2gob4Dpu3qT8745I45e6Q=;
	h=To:Subject:From:Message-Id:Date; b=UPWaqr+04sx1+fYcOGZOqC0REseNNWwuUxN0mzRSITus07iceelHMFSuL605/9XKyONiSKJm/Ar4FN0ZCmK4nSxS+nXuj7GID0jw/vIzk2a457ZMBBQx7p5K+HMyEYI+Gou+EjetwQocBB4KIOWXzknO1AH1CYztZwTEOJURZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGEdoJnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGEdoJnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A36C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733684753;
	bh=0H8rAOpe8PSZbEPbaf7sVP2gob4Dpu3qT8745I45e6Q=;
	h=To:Subject:From:Date:From;
	b=XGEdoJnPQ6ipmOhgnxzTmKbI5CtGk5pF4OGigGiWy+Ey5TFT1/9+dzw5Jw0nOskXI
	 B0EG/2vj4Bdmg7la4/jq6NQBKLa/jaYgh52uZy2ezt25eYFapK3vBoceOviWcX0oht
	 xsQ5Ham8Z6A0X7/vSwGBs+j89CKP8HHX+vJNl6RjK8V2SxSAP/AcE8fUNP6v6x/p6s
	 ig952Amb5WEfjCYRpx5rIz3WKtnxLQopwE+WNXwg15EanQgXbNUX3SB/y5aQ/BclR4
	 mpWSooOD6WiWxzcv2J/OZUq9y7W2xVLEXA+HY/325LmmXDaxviwgdRzzQXfZEhXzoV
	 9PNlx7YaXO8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975FEE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368475359.16881.13307117384333827265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64092a33a6813429fe8a7182c14716dabaa8153eb7fd051061eb1569a17198bb
Date: Sun, 08 Dec 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733684753
