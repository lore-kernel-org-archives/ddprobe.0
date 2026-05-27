Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B634314D18
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779910954; cv=none; b=lcMyArjml7qYmy2W6DWSOG21AEV/N8CmMZ1pF5M3Ri6czya/IBOGpJ4+RzXlku53kSGmqpcsGV0WD+a9W2mL4ms57BMh67Vv8f/TNZu+4h3nEiXrWbHCp0RxXHs9oRTaEc+ua06eYfvmhElY9LStcUOqpHnM5HYhs3B6YWtjDzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779910954; c=relaxed/simple;
	bh=rKsPly0f8S6uAehTKH/P8b8gRkz80EAF7DSi/4goR+0=;
	h=To:Subject:From:Message-Id:Date; b=oyRiE86zMwGtpHsei5LQAlvxu2MfRE3vB3IfXlC+9LPti1tQcirnWGMLMN0+6xOGtLyi6KjH0XVFVlRPDW9BsahD0S2NNmJKQgkhYg5tzOTNMJJBk6AR1NGhBtDoZvisubS2Hwuezf1p77bjleK3uAs33h7Zsf9T9OxDHOB5/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdSeZs/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdSeZs/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32E6C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779910953;
	bh=rKsPly0f8S6uAehTKH/P8b8gRkz80EAF7DSi/4goR+0=;
	h=To:Subject:From:Date:From;
	b=KdSeZs/44jZn0D5EcMTUhtgcmx/7V+BJwsbAtZM/TTGkAJTM6F24A8g397Pz/15Xd
	 l54v/uJK0PBcguY1Bu1WmhR1EfpDbWW8zvENsYDTH2ulv9W2StfF3ASGvj93Jv/tIT
	 HAAje9JXyKJQ8a9uerpP5+zlLP7ZanOGp60wdojtnIP/iqaXyQNqxjkakvTACdTseZ
	 CNKX57MiyE2EqxETXsEAzh40TFpwC16JWKQ7wDq5zLvCdKSZpdkpaTdpgFHxpmJUri
	 G7wTa3Ja3hYVtjHoT1jOns7JZLf97MaGLYHX58h9MRVx1OnkYjfTqCq8WRpWmiMEBZ
	 ehzJQnks3Cbdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3798CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991095372.30646.4711362430824247610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c77b6dddf927af40cc3ea8d0a36e709685c48e0b0c2cc7f3f7fdb65a241865
Date: Wed, 27 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779910953
