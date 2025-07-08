Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40003188596
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751945394; cv=none; b=LJIqYoTgr75x2Imu6+agap49MzE5pnoojPvf1rO/7UKfUEq2ekMLz/kmfLuPqvv8Y4rvt7YnUWLZEr2yfzFSwqsHfkEHj/gARZuAlDByOUcEQjaOUDvBVzImAsj7zolSKW5SwF0JtLwVE//PC6GkGkkyU/l3qfXrLCW7phjh5aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751945394; c=relaxed/simple;
	bh=NnIbp8T8Mda8SdGhsNLKBPZiaPAD7yQPKgn+hqEG/Kg=;
	h=To:Subject:From:Message-Id:Date; b=cun8b9TpEpV9PzOfcUbfgNYbjq1uuhseYklpv2H47Sz2PKl/prLPuJAFrWD1Hkw/1buVf/MIVjayOUyjb00RXaRV2TQl+G5a+GR1+HKu0JDYcUNtnL9KFHL5G5fWJMflpomH7eVh4jcx1K8+dy7i95aHkonMrPH1Xiyxb8zz6vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQ0Rjlc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQ0Rjlc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751945393;
	bh=NnIbp8T8Mda8SdGhsNLKBPZiaPAD7yQPKgn+hqEG/Kg=;
	h=To:Subject:From:Date:From;
	b=qQ0Rjlc8ltw3cbPBpfbKvmUNmkzYXA409YlnIGFUUqeV6rHPw5ZuKpf+XPfazLHgM
	 cz1DOzHqp3LYyBH3FqjASQU+KxXGpaB/IKjVIUVeOsSL2m5sPdftgzC7eUvOG40Y7o
	 MKC2L/KXf4NWbfqQXtTbTRNqDGQbeHpRO3hA/7+9NASIwMHhK3VsNL1PjqDT6BcUq7
	 p/MjVaMGIjsh5umHv9D9E6ehX2OGTz4SIBv7iVRhXi+Rx73Y4Ywy1b1/LFl5/EN8jO
	 xj4dMRnxvkR7bYWmQqxwGb5W+G7GN7MAS01xkoYrzauhuiUwJOgcFA1eBvAkmqNjB9
	 Pogj0NMWo2K6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F9C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175194539357.14903.14264985957573387938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2af532bcd75f57c44ada0d30ac351e13f08aae783e31ed51ee45b16bb2efd7
Date: Tue, 08 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751945393
