Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347CE28EC
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748024395; cv=none; b=nFkigQV4P0EcNFKUfnn638z3g9cj0d67dSOhZtZb9kI+dhFvmGijh4P7BPNksH5YOirm12B2hUSoUqMILkNO6+9NbizdwT+qkL1V4lWcdo6f3Sx77BiY7BLGEtT12Bk0IjZ9OV7zdazR/ycK6QL0aovJJQk+z5LvTzxg592YXJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748024395; c=relaxed/simple;
	bh=HcttCQkk0dB51jzyFc3VaIh3C1FqBl7EHqlRLzWGmzg=;
	h=To:Subject:From:Message-Id:Date; b=kKNZb65SsG+gP4QSRVWZfm5myPZ5E1R9LC++Z4ZZwzHCwQIZZJfCd8tiMHmH81SXcqp9O1bqlmQoEcJ0zCCDz9rqAd+A/uxLErk3ijRCAqrG1Wqi+mrocc3gNZsqA+7vp5H/Tqpd0LLYhahfUQGc0Wq1BREqevz9oGrCvkugWO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtDpaykc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtDpaykc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEBBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748024393;
	bh=HcttCQkk0dB51jzyFc3VaIh3C1FqBl7EHqlRLzWGmzg=;
	h=To:Subject:From:Date:From;
	b=LtDpaykcCGdvuRzg+31F3D8neJZ4KiuFlv237eFj+ICSfwwE6nUUj0MGsjZ72PuLL
	 NN/EF0UgXzm3/Wdc56p0pE8lVqS8QWAWkZQSPStkXdK74R2qIkpVUq4Pvuwe8S8G34
	 7gdfs5qRPRvQSIe6AJ/Mjw9aIcN+MaKeJ87zi6Co5Nd3CACzSimyigeGJOLuXbGofh
	 EE9PeS2g3ykAZPOUwMttq8tuYZ8u3X4+JY18VY9JlDMdqhA8cfukOeP+53itGHzLMN
	 +qZdqEyYJKUS1EHJiQPFs44GPggwBFEejY3iiAUfM38ysnzbmHmRmR+NPBQlVwkNFC
	 QN8kW3MilxJNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90909C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174802439358.30230.16212095335809282236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5affbecaa1b22bbfc476c728658ef48bba590f956f3722c4ee0af47906f93f
Date: Fri, 23 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748024393
