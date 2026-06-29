Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D78B3769E5
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782742114; cv=none; b=TGemJn1ofock3dXUPvsUiVNmkOnPBYO7VrbIfXomIQ0MfTD80ANaBmfv/yBMLaoWrS+BCzRaNLVNjrCBy31bYdRVBKe11M0y6oWW79dfEjIjvq0hWb4rHBuJpd4KUNOvajFBELfp9sol5VQ4Gbf2qung5DHxBq/efwd8g78I72E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782742114; c=relaxed/simple;
	bh=KBKJ1Ftt6OhxtvtAwqVpqo3EHh53UA4Xve6G8y81Ic4=;
	h=To:Subject:From:Message-Id:Date; b=jZINcDCfm/quhqZM5pHSspI3CmpeW8l7aCwXmbhWJY0bBkYhIEazs9yT0HTlQ/h+s0gTJIDI9/qSNM/m3Hcik8bbEESXuyjXbOhn89NXYB3oO+1T+qsjdv0p4fSc+ujga2/HuY1SmvUxuPIpqHMzYplsNMnNi/xjYtWb5B3z8jM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnP4Y7Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnP4Y7Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE64C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782742114;
	bh=KBKJ1Ftt6OhxtvtAwqVpqo3EHh53UA4Xve6G8y81Ic4=;
	h=To:Subject:From:Date:From;
	b=EnP4Y7IwGCGYKoLz7dtb0CTNoQ/gyV1Ip6O/SUQKiB7LyLbAggPFWJTHrtuV09hSw
	 RPxPOMm9yxfrNjrmym37bfML2jQhsEyGCzInYXf9P+9lgNgIYrNdV7dU8WHHxZb+TY
	 urD05oO4xEgMQ1d2IIAP/DP+gI0frr+W6+fQsHSLt/cKUc4wTjVREEA02QJIRUMSEP
	 SGClagUGlo5CvA0JH4XY4KTME2kKZgXpX/CEfxoSd+WKw8I/3a64QOfVVKpbNHC5dS
	 ZnU3ET6aFS4aIIyChVdhr/6rkJI16Zhutvgnh/UnFTCVy6kpaDxO+c6/Nh8jCTw65K
	 OF6LFUuv27mMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7630C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178274211374.21361.8743609813687371606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1190704bdc164ac264037cb48a1f98cf1dd3678d05a033eb5f90ba75b8d45a79
Date: Mon, 29 Jun 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782742113
