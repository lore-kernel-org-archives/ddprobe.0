Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9132686AD
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745959195; cv=none; b=n2anSBlFy/Ucb6ucVO/zyKR5S7MY/7vUJiLmaqBvHZ8cHQQH+r6tfE9aWe9J+bauhEptFYw/e3NmN7Lbs3XmmBVBiZJgmxZl4+Z6CYHtcx/ZiWFppd1mOC+p5sVROfNp6onbQXxUcnuXzYC/GF+hkJ7H4nR9EUfiG4716OCMnhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745959195; c=relaxed/simple;
	bh=nZFSiQEufhH5fLnZY6Oh5Y2K0Y/lb2C+sPEBX8Nqe+E=;
	h=To:Subject:From:Message-Id:Date; b=XLeYzn8LS9utSNPRV/bAgR8TkjZgBI/YNkD/K8SrxE0ckuR0xXDRVq3RT480DBoZAO/CZ77pD/zq6Hl8ZZDfedmEsAXkywxWBMy+SPKWn1uQ3N/M+Mou9wG9KTBF/aWHGIyYqkA8QqRXzgNoQMHZdenYx+xO/ZqYuaSOUYsNnAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4Rtvm+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4Rtvm+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A082CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745959193;
	bh=nZFSiQEufhH5fLnZY6Oh5Y2K0Y/lb2C+sPEBX8Nqe+E=;
	h=To:Subject:From:Date:From;
	b=h4Rtvm+JxfephgMI1ntOiIOjYbmWHALsSROrEQlRJ1mOOuKA9klNcW6PapU7GAOKQ
	 IROG9KJjqv3adQoRkeBC0nhUN5lIOFJyzsCDR8+aAFQWRXw7ops87od45WCqffE+LO
	 UE9AoQ7fyG73BD7RbBA5J1MENLkq/TKehoOna6mmAxunQuoNWZN03x3gvp6druLD9b
	 z64Yu1a3SrOQU4jwuYEKBq7qJpmXfjWRDnJJ5cY/JaAIAezl7eM59Wdg+bqLfgZfok
	 n2KO5IXQ0Je+Pc//lDzG9lz4D329ND+TvGvrFm541EcVHjsvbA/yiBaAjYfhNWxD4t
	 VCzh4Nle1P5uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCBC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595919358.10598.10082620012640692275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea73488c9e20bc44ece72a986f12dd6c95e450ef72badd5a6369288c68291f50
Date: Tue, 29 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745959193
