Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3395F2777E9
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745909994; cv=none; b=CenNijfZfWedCQrAEuFfyRDep0ulWEvDmG3+BmrET9mzR4gOeSzNOmR2LlvH/CS45ulS4qmhUn6E73WaxGloyP/Yt/JoEHj2+1Vq3OycD6SWI/4i5TBesKD2zeRuSL4tQHYuPH9orbTJI5/+lfOkW3N3CnFauXzVq0DWYy7uHAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745909994; c=relaxed/simple;
	bh=kBE7uWl5UVU0LUwOEsPRDtuEyYy/Qxu7CxoBFooeNNI=;
	h=To:Subject:From:Message-Id:Date; b=X4izXYYsd9LbIJyzl8ylYmtwQucFjfeoNLQDP8t0vjfzeJgLQrBI+6u0rn5/UpOrSNaCtKGKLApfU9WDneL44ul1MdevfmUnSDtRW3C6z4ejvT61/q9hwERTpm1biWllT6Kh6GpJ4BvNsoi1tzFrXURMmmcU31MA/ax4Cra6pwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KAQtwz37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KAQtwz37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A762AC4CEEE
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745909993;
	bh=kBE7uWl5UVU0LUwOEsPRDtuEyYy/Qxu7CxoBFooeNNI=;
	h=To:Subject:From:Date:From;
	b=KAQtwz37zBwFbimTxokC8KB0w+qQxNtv3+p1Dwtny+nTJ3Rv+oM1Mvb9vHoyCRs5d
	 5nYI+MDXDxYyqm7YCivsoSLQGojGOJ4ciB6T2Zr9LmWn54GIdW55VI0Wt8MN4Dlkn1
	 R1n3P8CpSWNtfrsl2M3imC3GPLn/08Fs3+s/JIt6wt6Ed9akFixswpABsAd8tzPGW2
	 6/w+Pr9aGnA5iRn+3uzvo/VGYq4lULGSbjTjif4YijcoudK+GNmv3CHH9hLSSd2z+l
	 nS+CGUiRS7ohVAtWBC363M4Ej0/wnJ38sAHS7viH2xd57F7Qce3BHA5paDlJL5nQEJ
	 Zti9Rj5dWGS4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E29DC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590999357.2216.12815861421293022729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef8796aeef712d29c6a004c84449fd70a495755d268378507013a0c5a5bbb651
Date: Tue, 29 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745909993
