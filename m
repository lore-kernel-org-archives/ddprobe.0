Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F08371D1D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773649494; cv=none; b=pAz0E3uHtWN64Ag3GD8qsmC4of0ARCFkXM0wayfPhEKT6bdK+a5VMghN/ykGZLj2CbusZGlVyHzLlK4JEUrAfK0+1+1ilsn0j4t8rpu3WErDmlvtpPo8shaWqVV9eSDUMb/3bHBj+RTn3J52Ag0lKVQizfcCXv37xSDaiTzDFTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773649494; c=relaxed/simple;
	bh=wHhgUk4cEwm8ugF01XLHnxS3x1UcuNlfxbfFHvy1KiE=;
	h=To:Subject:From:Message-Id:Date; b=LklGnFc9KC6JTDK8RlEMeVPQA+WHO+id2yZnkyakcQ6QVM3K6beK++ZgkvYIGn9DzpFL4cvvKWYsqQJv0LGVOuE9QbjDo40LWjTJyswdnqdVuisDlTva7P7wOXMGRYWFwSw/6fwDKSK6uXnHS/ivnRM1jSFLO4M2yTcOV57Vkx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRxoYP5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRxoYP5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE5CC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773649493;
	bh=wHhgUk4cEwm8ugF01XLHnxS3x1UcuNlfxbfFHvy1KiE=;
	h=To:Subject:From:Date:From;
	b=HRxoYP5MWmRn9CEWgdOIIyCf2sxcs5Lfj+nYXSwLjJTcjumtl/m5woinYDjHsaqWa
	 h8Gqavb/htipk2x4scLF72B49QtTRpAcA4XgW/pgqictjd7hRigXEiUFlc8s1ZrRnI
	 Qd3QMdvozaKoXZcbc3llr1OLEyGid4+y7/MTkVINl9MaH6gO3YCm0IJ+BFrccS/3dO
	 Axw657Q1SjW8pLFF+UkbbR9cAsDRxSB4+MjYgKU7jyW2n6KPVEj320gqAjQoJyt+MZ
	 PwI5DKtCA5c3d48YL7T248QBIKUUNJt55kGLdQHUiynqQr49aIXlO2kmf6inrL673F
	 zTYG9EhwOqnmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02FF013CA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177364949357.15548.18067093245522152110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686677151966568785840172ba2b040b3b2f6f478cc7eeede4ce99bb6cad9195
Date: Mon, 16 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773649493
