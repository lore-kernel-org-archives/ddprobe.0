Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301B34C8F
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758692394; cv=none; b=OFSGQhmkGsjRk7A8zaPmd/19IOpqeC99+qlytUhPN6U2pRaV1is/ADIFhnRKba6OkctCS1DIK4seJ8h9dmlsGgAEal0T77bLICkaXjVwh31YZuj1nO0HNxhqk21CoScHEjHz/MXNVkgJnd2Mz0yVSJoXRCIxR4+SHNESeGOfrb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758692394; c=relaxed/simple;
	bh=mzcy0aB9RNoe67LQNayQq7oQgUo7F1yBq6llqS4l6cU=;
	h=To:Subject:From:Message-Id:Date; b=NjzHuSMLa7kHyVLq+6KDYv2wBHVW75d7mkFfEimgYSAX2tzGTBM8BIFemm3msyjtrPIkGAw873ETq09vHuLrQqj5iXCRkZjMg3+OjJ8ACzEK7YCD6/1iFl/2p7Repsr+kr/AMYNNMfCtm+HfOOubi1SVHl6LYG1/fHZey1oXeHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgzQBVjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgzQBVjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2208C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758692393;
	bh=mzcy0aB9RNoe67LQNayQq7oQgUo7F1yBq6llqS4l6cU=;
	h=To:Subject:From:Date:From;
	b=HgzQBVjZPhKLCxWNT6PWG80VO9lTYC6cNJb89bDrEK3nIZZDwvVwze05jPKxJxmDD
	 5+c8lj36N8sVvYR5aJpb6Ca/EsNAbN+K422Tq5sNkt9rAO7Cah1L4Ft5YXob38gzPs
	 8/iAaU6yVxUtPsKce2P4caFL/nQUsco/P5Ubj+MlEO47TjPZKBmtF7RK+jskfZj//+
	 PHRvAlFYVQpWKsiljLAK/cjyboLcExfbgzMYWq7TGf+xTKgWChafsXktxs7ni1ls22
	 PYRn+gN9esWJsx78MyR5sfrzW5aezXMixdNWwjEsjEwT78AQZ/9zNQPbnX8Ddsv4YI
	 XkgTV7qAQTsyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0BACAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869239361.9808.7666537424904551153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7db9ffac77139a6202b6535888addf6665fa3a13c3c120f89c33f6d73f9d199
Date: Wed, 24 Sep 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758692393
