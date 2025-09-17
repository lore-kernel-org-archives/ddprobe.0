Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C30C33593C
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758121194; cv=none; b=b/NiruyF+dxYWfQGOh2dg1AvJtaCw2bBK8QbRLYfcT4WRyDTgHTqymBxTJlkFYnSS4EVMFbRkoVeO3/lJkx10+S/dGoQy/enGZZwnz1oID6VzjiFlrmgzYxHsG0nqR2IM9d/5uz3mrwhvni8hf7Fz9Kw5Qes3+xHon10MvaBr7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758121194; c=relaxed/simple;
	bh=/7k8MadjkPkB+pvOtg5aX7q8dmyEdCHZa/lKaAs7aRU=;
	h=To:Subject:From:Message-Id:Date; b=nPpZShr+aF4LEIcB9ggVFBmlWDbzZWdlFR/8StDOHuuVI/92X1Wdq8A2sMjM8zzVMRBMxg/LG04pzIz8ILqNsP3YUjfIz5s7zPaDFWUMQrPS8gRnwRgp3SHhV7AsIkxjVRiBGvaTyEkORJzq7ZQR90n6E8TJd7jBYNCXdMdclms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAqPZl+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAqPZl+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE84C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758121193;
	bh=/7k8MadjkPkB+pvOtg5aX7q8dmyEdCHZa/lKaAs7aRU=;
	h=To:Subject:From:Date:From;
	b=PAqPZl+mKCWFJh8vGy6eTjLzsFA5NVRUhSrl1YE+HNvxAoPgoXX7ZXpIsk83sbBl/
	 M2O+2yOtRDQtA0bVu7G0saOtz5aTNmr4OGRk74KVIo0BIozGVM1AO1oGVIaJ/xi5aY
	 AdM0N18ct+aDfDha0O3MpTF9hdv3YrdQTfitRGpqoLiKpg6PyUTJ+XUfSSYTHfssn6
	 ReB8Om/xetR8pSRjJu+luRMmava06K+dDDAb+q+qtBXX9OWBOVuG2/nSWz1A057Pqx
	 qGHuYQ77wpkKNI2wIiRHj0jzqyPUTiiYUry7SKbXfyESvK1KwC+e9foUkG7EEOm36F
	 T0e6w54Nn0UtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A3CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812119358.25328.14564337080168303454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def3149f1da67aae173cbe481a6f281c6fc11e2fa9e17f06cf5e56db693d8256
Date: Wed, 17 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758121193
