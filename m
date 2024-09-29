Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F180AD2F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727578554; cv=none; b=oyI2cxayKGKZJ2JSKv2Thx/aC36giKHIriF5dh6rRftDvH0/krPrqt2ZfVP/BUKCzT5ZOjuqsFVvin8afGMTYGzdGYrlHnqE4S0b11fH4Hgzth6dCobMSaUJBeMUR40sQ5X7x9goFskLG7JqdUKHnnAi43vULDeuUh+5XoLZlI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727578554; c=relaxed/simple;
	bh=vVhjAn+z2XWnnSP08Sqs9y95lm0nwvN2vrYwe1VkWHM=;
	h=To:Subject:From:Message-Id:Date; b=WvFBDX3hFFISpFMDeta3aW8BR9APaVmFBLxxKpXYR/zCD+GiWGzN+RRCsZXQDCBCuSuvQil/9be5aO/TITNZ7GGTWSJyJS1FZ9ixrigfkNtjpsgVIGt4XLO1UabivL0lQK3MlMSzGfNOyLaFDofjusKLW9AirH76qLzpJn/GI5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rviKI3ul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rviKI3ul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53E7C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727578553;
	bh=vVhjAn+z2XWnnSP08Sqs9y95lm0nwvN2vrYwe1VkWHM=;
	h=To:Subject:From:Date:From;
	b=rviKI3ulkVMTr6eIPngxRKQ+hHNLbTmqCQxTu3SMQ2RkX4xiwcovE43P94gIDmYJ9
	 TSSrFnxko/KpOy9l/WxsgF6TavPv3EZE1pVr/0fH+ndtyW2NG9E6FIta68Lhdm4yqF
	 iiUJui1mx7OZZAV2CiLgtAlVnmhblfpmrIYq/cqVMO2DeswNeELN3JsJZaysUXNxyc
	 DMrR3/j55BpTdtOqmLIJEAtZVLUxJk/yNvCdiktuMlOCHxHJF6dwwf3X4CWVsr9+NW
	 S0dHgqMF4MelMZ5DjCQz3wMqsLZbWd2omXldsdRIFEJ0qJoVHSi9OnLHEtAvT310/X
	 ZoreeLtIFgUjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ACCF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757855359.3472.11112616810344221496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f5018d5baec9f22200f8607f0c25e9a64f2efca69cfcec89939cc18b9e85fb
Date: Sun, 29 Sep 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727578553
