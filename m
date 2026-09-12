Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538BB2D5C83
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789182634; cv=none; b=SwINHsvLtXgXM19Q6ap18/Hb366VNwL/xyQz3T+mc5WntBgMG2SpQBsueHvtm0uWI3joNAh6i+edGfj7ttwZlci6JX3fPz6juWOo74sYgnf47X7c149HYb6ob3MsK3l/BQrdZyOVbGymu/ONaYwAQpp/vVkl/gApwB/RvbBAW6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789182634; c=relaxed/simple;
	bh=f5LHE+FNIeeLkF6aSjzvBvvePLRvBeKh/oCt3w/BnyY=;
	h=To:Subject:From:Message-Id:Date; b=gzHRvbfclCLHYijBXnkxGT7452Xp2/UcZ4cXWZNse8uqyBQukaUgjfKhIFyRDM811AIedkD+9s9liWJlOLF/gidAN6losd9JntXtYmqZJwBNT8vnBzXNgXXMIPCTsKVQAyGhosy1EHv/QQSIcw3eQB9Yp6JjDs9i+1Nxk8FVmuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQKC6KFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQKC6KFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3921C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789182633;
	bh=f5LHE+FNIeeLkF6aSjzvBvvePLRvBeKh/oCt3w/BnyY=;
	h=To:Subject:From:Date:From;
	b=gQKC6KFuehqmaXRrvDXHz6zHDRUBkD5azIDb0Aij8yreodVG8wokBl8Tv0imIYLwC
	 mNKlj2yJJhBugU+fpbXc4167CT60vwOU5bZQzE1NBhJMMqRu0RncLPoMA3d+ifeb2s
	 gO6DNnTq03wEM/XyslbyGQwi6CWqwXF6TBTPiWLt0kfHv2n+GBx0cY9r51hgKSt2lG
	 nwWmIrZ6HY4srZxvFu1BGQF0d9/NRJCoRTowYmrMC9/3fJemLwnv2Y3ateVnJXzoU5
	 OUo1dwd4KzeCpZ03EpRyTGbdHqJHALoK7rHfh582LrfSebatdmvVL2sFm+V8Iy4Lxn
	 wgDq+ikGw78xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD3AC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178918263368.551.6874621477743388607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b634e0f5bbb7fed4d1f725fd19dd2da9e2753374fa497bec924f28c2b591a783
Date: Sat, 12 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789182633
