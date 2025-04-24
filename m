Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662628B4F4
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745524194; cv=none; b=fVj5K59t5XzJyqP33ARNml5TtW0O6Q3ieIrgYrETVWYyUtE6fp/Iv/zfdsALF+BPVOOIs+nRltsAYHTCF2j3e7kZUG9qawPCrLEda0pHyyrS/ypfchB5nsEAS9mPyvDooVfVFqYUljJkv20I5HknMLbGFY9RwiMRt8mSAKZQnCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745524194; c=relaxed/simple;
	bh=gILqYMg8Cw+dS0FpwpxjYcRtKLKP7M3YwveWu9BVqaA=;
	h=To:Subject:From:Message-Id:Date; b=NQi0fxnOF7yjDruFzTK2DBcgI7eIAxz6tsoUjQz9RYhET073n1DVMdovPrBQjvxSDZCeiybPYe2SviaNtxR8kIYjCOupyQF3Kc52Vm1/ovApSfTEEIzuIHSqvQS6nEJ+cu6Od5J8C1etFAmydHNHT2EMXhxjBl/R4h/t0iO4K78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQAlLNzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQAlLNzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0018C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745524193;
	bh=gILqYMg8Cw+dS0FpwpxjYcRtKLKP7M3YwveWu9BVqaA=;
	h=To:Subject:From:Date:From;
	b=IQAlLNzbs0rb/30stIqQg8oorn+O3f7K+gMIrduqLWra/DTOCFHujAMwLCxQlsfnc
	 nsJhe0ZGvMrk0UaGN/A9egXR8vUIAPOwIj1V5MqFmYIXmrGMC5cG7Tu8Lc/TwhV2Fx
	 B2Dl2l+I9tHVmYU90xV72o225OwYbv5dPQ9b0DoogvgeMtsj+5CavtP7rJfqE9Ahp3
	 6T1At+asjWE4B1fEPsOQvR7rLvK4F5WOGRv14OhDQ1bmeq0jYBFo6VTejIQUsNPSXj
	 BpiKQUSPFJbaweaDGx8CUR8UtvUDlk8Dw1EcAYg6hkIN89Lb7sKSCssPjcNqFhiSQu
	 FuvDbFPJg6y9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E521C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552419357.32213.16284377893599267479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652e19e0c4a4cdcf5051bb8ef13291111de4bcdd59cf9332925f61f1ceb201a9
Date: Thu, 24 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745524193
