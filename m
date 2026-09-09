Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4958336654C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788975034; cv=none; b=qtertKhm0rEQaMnqRQjY0qdayb20mloeDEMfXuR2AU556X052B+g7I14bGpteiXkhYO091FWiAYgyQBVLtvBrLew6jZ2dNM2EaYdCaD4KicWIopKGEvUaLHLhMwe2NdU1lYcGodCOtVzsAmNigc1m3RcNQgTwCr6FaLA2ZBZ9M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788975034; c=relaxed/simple;
	bh=Ue8SHxGtJ8XQuj0GC7vXq3SRlbnHyVEc1j0/YHHU92M=;
	h=To:Subject:From:Message-Id:Date; b=UXP4VahBq7Am2w8t3iddg6y4G98YhmfXIPDWg1denAf5UFiuS0OQ8NYv0syHT6I2Q0CRklM+wDow8DGtIWnT4XE6z+w+qKe098QJmYwfFUBz/ZbCtAJIXZYeEzC4j4Ai5mbBsZKfbUwBnG2qkqmMN+lqDWTdSgN+QdMWM8QFxVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MATkDlFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MATkDlFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3252C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788975033;
	bh=Ue8SHxGtJ8XQuj0GC7vXq3SRlbnHyVEc1j0/YHHU92M=;
	h=To:Subject:From:Date:From;
	b=MATkDlFLJNvSobcHMy8QiGNxAMvfdhMGfnEODJL+zcyO4dMPYE1S+/vof4cIHFL5K
	 kyCouBNVWPqBgJHtZaqBpaWG1SuOI9z2y1B3pa7DFcRtIgP4swKj7a1PPfL1Isyvn9
	 1sY5KV7GfmE9Sy3VUD7tSdtC+zFv/udPJFSONG5T9AH8/htDUjfzFsGttA7cG7VQAB
	 XS3b3LQJgAThVmFVsEobVkYrex3SDzxWRanROG3yxC0FeXoC78dFvWrZuehDGS82co
	 HXwf+G7jaoHE/G6GViKEBouRipJcPJvwBjvGhaeWmFJb9O1wo/6yo05wxKkJJze2MN
	 qaDtvqcGUtixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE374C79FBD
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178897503370.12868.16285233385715801639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868896942f4789c19edbd4eabc226f3a03f8da836e29b7e02e0506de138680cf
Date: Wed, 09 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788975033
