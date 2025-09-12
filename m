Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151CB2E7194
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757680794; cv=none; b=NnEDNpB1rvpHrOXAmv9gH34pIH7HDjbgZ+KKScQJ+5q3A6NRCyxXKwZntjpoGYryZY9O160ealeQe3uav1/pciWJkm/UqRQM1rmp8ocHbDcJw4XNxpCjgodfowY6QqUYWPUBZJW6/UKhd/il0JdLgcqzJT9V6SnEleHqXmdCN9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757680794; c=relaxed/simple;
	bh=1uA0CpVW3ZTtidQt/uk7Cd9MRnuraZZRsg2Vu4IKSO4=;
	h=To:Subject:From:Message-Id:Date; b=E/PnDSXWhj3Q+61sMv7vnVykrthQBa2j/dKyAdZyJNSqRsGYHteWgnb4ctwtjjpe+xkh0jnE/I4HdWmnEfR3KMxvy/JcLCJZLIbqmc/BMRZGpZJ0L85WeCcKecvlZGV+VoL5bXbgL4Z2qrMOugfzDtFI+mLu/7a5eT03jskWONc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ptYavEmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptYavEmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E860C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757680793;
	bh=1uA0CpVW3ZTtidQt/uk7Cd9MRnuraZZRsg2Vu4IKSO4=;
	h=To:Subject:From:Date:From;
	b=ptYavEmADcyuBJyY8Gdm4SLPBzgN9V/p9tCHOpeUtFT3OBtwsOyDCiOj8DSV0zQGQ
	 5m+RY2bVKWpM5ii7nSxCL9IwWc/60+anJb41RMkz6cp79k/kWTOXQQfg4L3yeG3zi0
	 3u1aWDo7z6NexH9i7G1voAb1ZfHpg0OGOD9XvRo6YB0f1V27g3FCxZo93IIRpwxbTg
	 pJeUSkFQrvvBRBMEoFyFSdzJsfkaedm1U7pInBt2k5NsjnKgTDclEoQ4livF5+lcg8
	 rqlIh1Xkzux9kVkzoinC9eXcDRjbL31T8xyCkHMC0dJwgeYddtY9+omwmRA1yG/Mq+
	 rzjME5HTAQHNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F336CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768079357.2295.9588510896436056070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20a94998fa0c793edecba6c01121e2eb2ffd8b29fb10a1ba296f6a78948fec0
Date: Fri, 12 Sep 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757680793
