Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1810023BCED
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778038054; cv=none; b=frdsvZeU2E+8zZnQxpTXxWBe8msJtoSSMrfuagAj1gGwGsGd6LGUFEQhvt3zuypkOdoGNAXYO5FF0SvEBqBJLPml4X6J20/yvdknx0HM2q7qdgQHSnYYV1cEiLxeeY//bNj3zAdNPjb8QXegdb5AxQsAVPThVwsQBbxC0HRH7Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778038054; c=relaxed/simple;
	bh=KhOn+FHfawWSGrBF32wbWrYgeiT8VGIQGQ9E71Gw21g=;
	h=To:Subject:From:Message-Id:Date; b=fg7sjJaDYa0K6zt7ACwofD5VbtTEYdE+Zmo0WBVjbyrQGQGW5RezOQkBk+pYetosQNA+OZso2gXxNm5YT8vsQzYTjVwa+HOXFFkSY6vnO8bgw+DC2KkPgHTl5rab1kblyaV8wP2jC+4jINJ0JEC8DzD/Vk5yVKG700ABCrYYxz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDHQFx+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDHQFx+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF5EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778038053;
	bh=KhOn+FHfawWSGrBF32wbWrYgeiT8VGIQGQ9E71Gw21g=;
	h=To:Subject:From:Date:From;
	b=NDHQFx+IqkHHa3KCSbC/GVgUqhQFt5cnHblZw71JgQ3SIsgPqHZ9NMCeqeCfQKmcn
	 O+DoUUSxA8VHjdB8/iA9E0iT5qZPCWbtxA2fuIiGEeypIgfWFUoicFsNxkaEpu15Wr
	 mgEH6RUQrs8cD84wENK+mTlL5yrznVIPddrPMfF///pHhin2jhkItlwNL9+USFCu1X
	 RKLhscx4fnboJ/c8f01ZOWRKLJPMSVf8Wg5nzJ4JOm+zLJqUADP2C81Y7pmOwLzpB5
	 zdCZ8BJ4X/t9NpRPHPEuZH9Pvs/yTPrK3G0+bbA+B4q0cE+cWiO0EGxApcIpQXEMXk
	 ANR/vBOySosUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1D1CD342F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177803805369.31403.1147846771619554119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831be7b95757a5f3e086eb9d7906d69d1bf024e20d996c576a64ec2004d9d5f9
Date: Wed, 06 May 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778038053
