Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76338D2FE
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716945263; cv=none; b=JjZ1mcCn42X5K8jDsdkMyUBtwGJDJQqgxSQ5Qu1w0FZ7+uTtOUfFHg25RNf0JJInQoZeLXbxMdMUuH/YpYchtibxfh5U9RmyNNIvmia7rq/0BGSJ53YzJmPL6Kc2Cu++rmXKEKGOt36AMASuv4M5x5ZCQeZf/W3gX5P+HztCQg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716945263; c=relaxed/simple;
	bh=5k6DQHBkiASPsZwRutDioqRfFxdfiaFm9WeONcKGydY=;
	h=To:Subject:From:Message-Id:Date; b=Rc1GWpS78T0APlw4+RLBZFZsaru1vEOZTZt6LViR/BRMPGGfg51H2b/JnfYAaR5VmiZ2u6P+JkaymDJaCkgLiDu5bp/0luH9jeISJFM4R67YBe8NoyAoXvk4KLbW9Z9FxYSYfMTbv3t2G9uT4VNbj0qAs6vt4XuKZzJqVmsnkgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHTYaPKe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHTYaPKe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C7EC3277B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716945262;
	bh=5k6DQHBkiASPsZwRutDioqRfFxdfiaFm9WeONcKGydY=;
	h=To:Subject:From:Date:From;
	b=rHTYaPKe5FDgxP0WDKhT918yK2s01AGfXj/Q5SXXJi190UypegvIJmpq59vMKHee4
	 Qr05gJO/aLtyyqdlu1GxAJGV9yTRIs9q/PHGNKq1DeaZIHeHE7Ep9b+elaFPdlSaMf
	 qIvjw1lVjak2DGFf5bmPyXBxbnQ0omnC062QW7Xgyd2pv6R+Dd84+PH/2C+e7KUAS4
	 l7Tc2BuJK8MqyukOEbXVrzjxIroBZDoyDhZrGTQAlaqDocNTgkplYhwqeuTq+KWaBe
	 jbduYPKLjcTPav36AGyGNhRS8gMLSu8rvA1LNhEkK0IiW4J4EQtRebUngrfOAwmAIS
	 Y3WwmGBlvRF/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17C7C25B78
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 01:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171694526277.13710.16053420430294895938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1467bb03690f692d2402504d9c12ac6bc50c592cd4e01e7d217b62f94fa7ee71
Date: Wed, 29 May 2024 01:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716945262
