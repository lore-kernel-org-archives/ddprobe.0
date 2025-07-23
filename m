Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1805D42A8C
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753253994; cv=none; b=gKU3uoKhh110VHDw+ntrM8+DRxUOm6u2ljPMRNF9g2OWmrxdKOK5/o699ua4Y0mB7xC5fPx79j4z9Gn5Kj1Yxkp92F54uF82m6oV8RwLJo2kee1MIFx4zM5MVrKJaCJE4W7yTU5cRuDnfPdBz2o5ii0jgMBPb3D99JdwlV+BO1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753253994; c=relaxed/simple;
	bh=+v7ZTapwNb652x20KY/0I+tzJv4v6QyeVeKedKI+6PA=;
	h=To:Subject:From:Message-Id:Date; b=qenawcrKkHKV5b/6yNjX1TrJXi2Pv1dWnAXODqzfxvLvGu3NIRVtwVVef6p9aLpwkg4tzwD8nM8fqTSPmjzL6KtjCQnwKyoW6aY579h04NTd3p3uIPQteVG2TpjDFFY59xVsahSM+HBuKmvZaWE5ez7DY17v3pmSjNv/fuZQPw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FmfuBjTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FmfuBjTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECDDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753253993;
	bh=+v7ZTapwNb652x20KY/0I+tzJv4v6QyeVeKedKI+6PA=;
	h=To:Subject:From:Date:From;
	b=FmfuBjTJh0vn7gvBQUt4v66GpO/KaC/4EDYGN1HYpqcDqvxghvx4DVYQT29IQYLov
	 mw5NALzkU1U+J6r1d7YoMZ1xGrr13ED2MWBako6ByDGG0ieAWnQqRw09ZNv/8HS5Cd
	 qqk8ovP2wD6XUmWjP3f/JdAAMulUTur2fGsNE7Fa5dqguSKDCvamC4nnoU1JuW9oam
	 mncR4yVGaunpPKNaZwBMATK+otZUDLZGBLAExVHibXls7zGbZqzLBn2FfigpXLNGLb
	 dWrL3KES92IU+f1qxPcVhJWm6YflCRFHgmN3gKfYMSjK7GGFDzZBjTHoruA05sfjx/
	 nGHF65HREmLzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D7C83F25
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325399357.3597.8547181856530245756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7feed0a84dab0bd57402c9747d92215ebcba85ec7b73d33cc3e8f6a58447c48
Date: Wed, 23 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753253993
