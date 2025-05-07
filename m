Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D0280325
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746634195; cv=none; b=gyML8q7SmVt+h7KpNAVUTnv9ageJkuc//x8Du/dKpVTJ4MXjI08SBzwQzuQjRp9dDmUUgdIlCmIpPR9p+i2Pk09Xz4Mascwenv5PSi14RGKH9rG4o9QiBVqnmouq7T3JQCMG8kinLHfyJQREzs898d1JW7E/8BcyKDh1GJoN3xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746634195; c=relaxed/simple;
	bh=LwKLYgVCqeM/kN53YHPbjdLfDVOQzHB8JDLu7kPm+04=;
	h=To:Subject:From:Message-Id:Date; b=cvzHXajDkKUlvmFGW/H8mGqBsOooGm3rys5YhsUcfnK+SbiClT6u1I/fq+SFiT9ovZfMBBLBxPFXTVLjvRLZlXFFrX96qUwFRVmI+zVy4LqWXsvbUJ5fU1azYx6nj9lO5iuxvygQWJoIOZSyzrGTQRzawzpHUHGEui4x8nkX/mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9JaQaGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9JaQaGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F03CC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746634193;
	bh=LwKLYgVCqeM/kN53YHPbjdLfDVOQzHB8JDLu7kPm+04=;
	h=To:Subject:From:Date:From;
	b=f9JaQaGBYAAQ7BCT7hSJNoILsAJiMXz/z/RdPAsa2mLM/wWOZbLiKMQDHFzD+REe0
	 QOIGGVi0qnaX6zKsN8eU509g3G97KhetJQGSq1jg2uKtoGHVUVLXKViqjlKX+iZWsD
	 dqJUtSqH0hwJwP8Y9Ldb+PhWlYQzioqWhQtoA4Di4LRbYXmdMh069qg78fEnIXQvLb
	 WUxyBI8AmBFKPxQhss+PGeHePHBiCKx3edDhzu7hHxx9awCbocCXeObVy7rf6hVTTF
	 OTYlHjdXhcqR/XEonMli17TJ/8PNkEpZVk9r0xxCSn4slx47ZrWrsMV+eNjLbxLjNh
	 CQFf+Ov8jiv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE4CC3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663419357.27726.13654112945932564135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498a75d8d5c2f719d00c5584ec7ac7d10d388fe6da0e245d922ddbbab8cdf5ac
Date: Wed, 07 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746634193
