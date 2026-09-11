Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7325430566A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789100434; cv=none; b=mUE1eTa1+RJ7fYCy0Bz4k91mFago1GHIDR5YSyFea5t0rMQcCVwit5cyZPoCP5vbhuUkqFZGiD5dLPp6b3zzYnBEihsyztBzO/heSXEvmUSlVixkTyPEqdC9SBOSK7SFgMyy4fZK0Fy/w3tmGF6soTGDxQnX4UfMoETCGPc0mQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789100434; c=relaxed/simple;
	bh=AW3Ee9aNnSmmB4KSZJujy1K5U0m1p47e312VvBNT3js=;
	h=To:Subject:From:Message-Id:Date; b=KInpKi0bXavXPWPY9t4noXLCAnpfMDyAjDSGKDASorGNlpsPWpntVSdrdgbZ42mA6+JXuRd2xD8krmFORK5fMRD1Jl0HvdEFcQMRSxytcDGI3Y2ib7MLyOEmdkY5MNWgrYtExA2W74mpp+8Rw+EzHQny0X+LV+EqKsR2mF22OrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnYHaQNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnYHaQNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1067C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789100433;
	bh=AW3Ee9aNnSmmB4KSZJujy1K5U0m1p47e312VvBNT3js=;
	h=To:Subject:From:Date:From;
	b=NnYHaQNIldfIPA/7x5QjabIts+HMczB0nl1ou5spZqt9Mv6aTwkNNRFSl4R3yRcc3
	 Hb556YFF9aUUKjZmdQ7ENuO4o75R6ZF3FIsloJpUNwOyvfM4jH4r9sicAMAEPR/hbI
	 0fym6+NuKEi6pu5e1Y2IZti1qqywVjt0PSkfM/uNC2/9631vsFU5RUTwAmJOjfOYKB
	 2biUpulbNZpsJjOpx4yuNb6FqES2WbkqSNFR3iz5EVrd0RzhdHcbi26kq2L58/WdID
	 apudlY0vaRVEaDLTLCSrqQctiyL4N5IsmiO7crL5ZQKuc4iSgecfIOExrr8y8JjF9X
	 8JNC1QhvT8Y2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DDFC79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910043375.22152.3905719267421384312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5450da13d51b79964489c161c1d1fda821706c860951348afcf6e31ba53178
Date: Fri, 11 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789100433
