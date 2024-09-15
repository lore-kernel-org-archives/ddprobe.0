Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B111B969
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726398354; cv=none; b=IWVftbgvekvsp6kQSg35qPhuNZ5uWWYL9jcuCYD6ZKkv3DkjCy7XSKKXaSjtsmZGkYTPfSYC7YDiEuxTqXIIvrX/eQu3smKkRSUVVYiflHFlEom9TJoHL7oWzy8X2PoEUHlYITQ6/jT1os9erq9B+uTAwofGT98E4BdgmfAS42I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726398354; c=relaxed/simple;
	bh=Wkah6+OISIIWGIuu2o0ppCQ1mvylzq3/vykMf+TnOqc=;
	h=To:Subject:From:Message-Id:Date; b=rJg1Pq1rsClNhI7UtgJLnaOAZYEgjuBV02+1wWSC3hbpDy3eZwM34qE19fBb5G+sEoDWMEubhahGFGb3yoaOG+zfE6rL0D6O4R3bdLNA89zRiOYOxQAlogMj4WcMDawRPwp9wt0EoWQjZDh06lnV9Qb147hERxjK4JnxocRQ4b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4ab60gK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4ab60gK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C70B3C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726398353;
	bh=Wkah6+OISIIWGIuu2o0ppCQ1mvylzq3/vykMf+TnOqc=;
	h=To:Subject:From:Date:From;
	b=Q4ab60gKSNOPF4A1DeBKg1yGKjkIBRBrX+RWVKgCpHHx5oQIhZVRClIYF9UI8kKrv
	 kEROImVprh/gv66+iE5gyGGTXzd52ICprmON8ZdTyoSllj+aDTM6Vj9uv6h1JKJfFl
	 DgRAZxxMM7kfd6C2RT0zLMC0IR9IcY3ougR2Ug8Wl7TnVNKulNVwsvEJafJKM2v7ii
	 Vfvi7g3NlaarYZEZpEA6AXP69+u+39OSfq0tILmVsBZDTbaPuItntMYFCPaYDX+NHa
	 +Y7bx7R/FRvE3c3SHnbMFSDqtuW4gAS/CwBl6WDXvLCLNUtAF93qGqOW9mRXSitwGJ
	 Bxh9E2R/8FHvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BF7C35FE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172639835366.10417.820301735929217489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c9f6661439a0dd68394feb3bc086c475526ea9f70fdc88ce2352c95627d6d6
Date: Sun, 15 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726398353
