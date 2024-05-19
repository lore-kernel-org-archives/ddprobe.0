Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638EC71757
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716154943; cv=none; b=uLxUe19LFZpM4zz6A39D/2xWy6oxnIdYum6T1t21Ic/FJLDZrH0mFE+P0sVUUJdYBKbngd0Emg5dryyH0JN0mvrwwkSs4NwabNUL7bTE61h7iLCZyf8Yzrk52PafXECyMPy+P6/lPSxkK4emqoZtKABz21bIC+I25LFYggts3Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716154943; c=relaxed/simple;
	bh=Go8YmWWrbh3Qt9C9afyswOzMn8EGHrD+Hk5/+BVMyJQ=;
	h=To:Subject:From:Message-Id:Date; b=ikw3+3TEK/P/NaNkYuXeKRXt9v8x9EyYypdYOUVRRQ4QIP1wSau1V6lGQMdG1XLTP+e9OJP8tPo5zyHebh4AaeyxL0miuuer0GVOQQFemDKKgNad3q0F4iNIku56wiy3uQ8m314o28bnGKuDrB0SwvYyvs8SQ2kPEWcRDrqyNoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkIA7PX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkIA7PX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBFCC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716154942;
	bh=Go8YmWWrbh3Qt9C9afyswOzMn8EGHrD+Hk5/+BVMyJQ=;
	h=To:Subject:From:Date:From;
	b=kkIA7PX86JjAn/x8+w8Jv1miKCWcC1tUeI4wbocjGouzgZr8Zg+HE00qPHM6QULvT
	 6e2mH7PadG57uPS2YkbXVsLlj+3S9E3WoO4+eS3DVvvEPlzN+8JP8BoTRwSGsNUOVN
	 FB57bYpWObqv6sbwMTGfZvTNQmdXsg3KRLBvwb4uZqsh8g615SpDEVtZ3sY8Xa6gl0
	 pzrtBoq1t6apvv0QW1JJCbyzo3yPaDaclMDswcZfQN5RY6kYjl++5AtJnDNlAVCkmn
	 u9Ys406UoZnW3olPqLm9uLTq/wzDOQBzwcvvjWK9P264sm70FHIw2YYb/OAbzJRFs/
	 vVVSjmXNWp0Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA1E6C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 21:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171615494279.5553.4534440307592901243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c15145ed0872f99bcadee0c89e1855ab267ba91e120c91a8e84ece23c2c9224
Date: Sun, 19 May 2024 21:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716154942
