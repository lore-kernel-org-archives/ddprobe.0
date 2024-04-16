Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C5A12BF2A
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713274763; cv=none; b=FZgOxqzZsoKmvrnZG4lYTC+LkH74M+UPeXHuoMmDCvyZoIAzrw9AKlf8P7dAXiRQ7mr4uIDxYREYANgFPsi9AJhiO7JmJPBQThjRhxmarFZO6xq9fl6LV7VCbSd8SJ9Wg6kLCaKhZN2aFpGqTECAszAlX4QoMUjvL/oS5LPjEl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713274763; c=relaxed/simple;
	bh=iK25as+hTjSHxPZEmWwoG4m8t1eW8bs02pJcgNWRdoM=;
	h=To:Subject:From:Message-Id:Date; b=I+sNmoB3x6ojs2vCdmOuQKyKicHUsFAGwRuLb0KwbpiuRPm5KTbzMMWPDPfwGBnxJnmtWDvwgiV/w7eJus/CpGynbMHeCiZfIcy0yFlEVDm7yWo/oSBykP1nmePrtDcEprr2cnDQQeHBeijqXd1S6CcNz4v1mcnzHx731SCCehk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJwSO6n5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJwSO6n5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82A8C2BD11
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713274762;
	bh=iK25as+hTjSHxPZEmWwoG4m8t1eW8bs02pJcgNWRdoM=;
	h=To:Subject:From:Date:From;
	b=DJwSO6n5Z+DZNKWOa5R/OFgRIqlvEXQUo4v8u9UYIXwA0lKmuudTToeI0/9CqH3XO
	 uE+Szr2lMQ42gtNDwvugBxpMhbJvPh0wIe6TlH2cFi2QU/RWZw6Vxnb9s5XEV7Uyah
	 KGBhpPIqta1uYgyTyV2gnyzaiHCknTaP1qcWfiSZzNtrdBG1edjyAykXIzzemCPpzX
	 /KvVvnNvIYQJsGDyI9xE8vtGh6p225g0XSnXppym0w4Xhon8FWkDfEpzgSE/YeSE38
	 TTXY4dp6xlC9eKLNXuls4zUuXXMuU39XGUuyypty7X4obXhOZRV7MJxMCQoqJbo8Zh
	 kWkQ7xnKDLHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF98EC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327476277.23399.17479272417660408028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f37d8b1247382741249021fc3cc2cf7d7e7fa62d5b010f9546e9211e99096db0
Date: Tue, 16 Apr 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713274762
