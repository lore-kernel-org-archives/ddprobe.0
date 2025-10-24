Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894F306B12
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761320394; cv=none; b=s8QoqDE9r/kPU3vQ+bc3ad/dyNCsh9DRuRfQnfkdGISCzX3pY013Ss1otixWXom1BDfk4h55DXLcSg/FBkuKpdF2fkHk0KEU8OmywfibQIpXTypV3Hrb/tcHmc1rpMlYI5QM6185AHgSWTU01JQ51XVmcvrxZ/Uryv4k9pp7mCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761320394; c=relaxed/simple;
	bh=ZvOgwmBcT8inxANNW15xMmQKzye6ZHS6BxEuonjpq+0=;
	h=To:Subject:From:Message-Id:Date; b=h80z8OqM60Mnay87oh9caDEM6VhHCo7y5DQ23EjwpXW45CU8e0mXCBnBhhcedA8fCARHZ9DoIs/VvFHEtUkbAGxh3PxXUy3ievi23dfZQ7wJA+QGmFb5Ut1d7t2Bim54IVwm/XucOfGhCw883Xz7hzDvCt0UljvsgZAfeQNJ6iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu2CNT34; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu2CNT34"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A4EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761320393;
	bh=ZvOgwmBcT8inxANNW15xMmQKzye6ZHS6BxEuonjpq+0=;
	h=To:Subject:From:Date:From;
	b=Iu2CNT34DuURKP4OvGdXAVndXy71X38BsirJ8zv0ckoRTMAnjP0aYrPOG2OzAt5YZ
	 eujx/vETBT1wVBMGEFXUrlL+R4fRPpnXvw+ouM4AZNLBLOj0oyuUJf3lY7dx9/WrQs
	 1e4qhwvXVGu1qvWmh3K+sGdSDAqV8HxH0XE7UxXqMXai5sBHIZIZUy1GgQgqnyNHNn
	 cSZFMj1UvSqNIykxhc2YLQ6ki4QUlYexlpP+8NYr6Sw/cvBZEKDij/BlfI7oEw3kIP
	 mNSF1T2SZPM4xhLK4ExysUl8dBXGG5A/xixvP5k8c0wooAVsIhRgYxPf5TtCxDf16r
	 GEXVMlnLkFv7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C81CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132039358.7836.4030299591115786679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b775c936c06284b1bd0f8e01b1240830654a8133ee5e76b0eaa010a4ebf8c9
Date: Fri, 24 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761320393
