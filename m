Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E52F1DD0D0
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730834754; cv=none; b=MLk4xK0Lt7df5bl+e5XLghesm1jvlDV/19yI9Tr33dKbIvwKm6LQ73h3BIqm7xqAn0OHlyfj9yJTwPvukdwWQER7J/ZIv5EGwwBgSVVvU1GzA8lfohx4ZSPyj0SFBQ9NS6OOzyn5z6+o72Z/vkmALvvmbg+mqHPA7cFFl3T8ADY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730834754; c=relaxed/simple;
	bh=zWoWHD9TXQuTiyQePqwhRZsHEj/NhGYbDab1UliNl00=;
	h=To:Subject:From:Message-Id:Date; b=lYH0rTT61XqK6IO4lpo2GJQ8nuHCdRyE5M22bF4X5T19qVk+iHNAgGWGPPWO5I+NinL/MVpBt6hBSkQo7rkcq+kFs4oc1LjHEnDdP7PNA9QmARISzppiq7cvZGG7j5+y3bC6Gh3Mlm1Y4h2VUia3l2knhqb9zJyzsZVYAcvj6gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orbJFX2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orbJFX2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA91DC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730834753;
	bh=zWoWHD9TXQuTiyQePqwhRZsHEj/NhGYbDab1UliNl00=;
	h=To:Subject:From:Date:From;
	b=orbJFX2psiaPprbD7Bfuh1zFIcFFkxthLmovGt29EZcsGKdjQDI93O31YubdVyETR
	 Cr9XOC/AmDbpPrbzzBHPXUwf4x/1aU04CaQKHNzvJ0hTV+CkWWXrl/sothuXRgmIZP
	 UXq7F/BuF1OjBlK/33LJjnHhznlNGZUc6A+twQEUdQsvAmLYLXlx9a7Whxsma0Lpub
	 9zaGPVLidmuZIJR3Qlws1Dl2nxLsBcyvm0pmLTSeErbzDfjfnujf0CGbxMfROK5r7f
	 pc7qAKsqKDV7htsdm4LQQIX7wNZ44UZ/kIGJyMztVMBeB0uYda/qjRyCDxpRriJfcc
	 /ZLkanEpvdKHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64F7D3610E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083475366.25492.15296971522250259006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f331963438c006c83b3ee615c54ec37a044ac53e7110ba523139d082e14efa1
Date: Tue, 05 Nov 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730834753
