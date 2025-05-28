Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FF01F0E53
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748428795; cv=none; b=W9DvZ/6aAxINutEc5FwriSMI09puIIxTuDa9425bW2gk7M7/F99uvCSutFSSEguLfX6dsT+r7893+7bp5PIbN2WFhjK0BicQK1Yopy88K7QM7Ebh7pzXXZPueJFb6OZmnd6f5PhDJAWKc9a1Q/ZALRKiHPQp3BcFf/PLWCTOQYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748428795; c=relaxed/simple;
	bh=q5PTxx67yLG1lg5aDDgtgLcaMy3NzW0Qw0DTlIPTBEE=;
	h=To:Subject:From:Message-Id:Date; b=YlvDi0nePbfXnAKRrJhTQ6b1jYGcqcykU23hDtPXuUrL25BQaNGSHHEKwhA++hbHD4ya/ueH2DOTnonGKGZMohaIWBbxBrpGVELV5pBLr7qjC6+Y33L4VEpKGaf5iX0SHyWLnrdAOj6sfP2E5sKD4FZ01OojlH6js+2qxFrsOVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c29CiyXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c29CiyXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E4D7C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748428793;
	bh=q5PTxx67yLG1lg5aDDgtgLcaMy3NzW0Qw0DTlIPTBEE=;
	h=To:Subject:From:Date:From;
	b=c29CiyXDXWeV4ZA6Z52BD1okjlWatMuxZcc3aiNXfNd9UL9CgK0sc32SVF9EQBWvd
	 X3PZnqqJTJNT2K0xcuqlghwahp5I2/9rjKdp7xhuQjB1EZYlD/AUsugwJuyK71lPor
	 Mk3i6rdZPy01IYFEJ216VlecdYcBpSitIYKtOwGY/HEak+JcgHXo/YLeYsIQg66wW4
	 1BF1ZwoGVrzpC8XBUkg1Fs91qYFpb+6TMjXTn4J4fWFLhixxGSQy7pUQEMRAy9UitV
	 7cZ7K4T7/Dm7d6iBqUjVeP26hAbslF7rRn8DkkNnnkajXOCudlTB/5WJnArcsHZN9N
	 e8hShmj+vCqEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F459C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842879357.12419.15586281501156189081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0a71284ab8daeb90b6afa1ab5649397d74e89d457d2416a71007ab1b470e0a
Date: Wed, 28 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748428793
