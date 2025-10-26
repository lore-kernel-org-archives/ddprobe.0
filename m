Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C959A95E
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761470994; cv=none; b=sQEdhnBeOIVIe27s1aMgwBSTV+7+FYU4PX0QO2NLaf2jnhpMZuTI1pHT3yL1eqA4X90N+cjHLrdnQqh+egoM6wEDYHIEtIY2tupbFYmlFCGOYhcypAKgsyz4pqPmVPI2S+xaOGz2NFsm6n56P5twultDac4E7p8pbKOb6hpxv1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761470994; c=relaxed/simple;
	bh=RkINJG7BioZXw7gcBNZieBodW2Jh14DteVMm7zO7Wt0=;
	h=To:Subject:From:Message-Id:Date; b=R+JJmSSoAES3mqbdw5RGrSXN425/s6rAD3GoCasWj+LOHLuLHHMlBDMmDvNmlOegs+y7JWyc9lx3MliFLi8COpwLbQyfoBruPGjQpeXs2wETGOUQj+h1vH81eyLAFbHSX/N94EF08f/JJbCXRJF9wG79KKlu36E83DNTOKSOj3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sm1Q5aDO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sm1Q5aDO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7533C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761470993;
	bh=RkINJG7BioZXw7gcBNZieBodW2Jh14DteVMm7zO7Wt0=;
	h=To:Subject:From:Date:From;
	b=sm1Q5aDOp6OXV4DoIjvvP6Fgc4UyB6CkP4wZKeS7zqk6+2QWrwyHLniMLps0q7j0K
	 8jhBZgd5NJ59XbKFPt5+xjV1jPvBe908PFeMtSAYNj+qa02x+3H/2uyvy/5WBqlVCz
	 CpfI+3p9lfNiI/s9xGDm3pbezq65XxsJRliPgc5Q9JfLKrVozLK8WhtJBZsVdQ3O63
	 tcf2AwEwgFA8IgLzlRi/owlOjcZMUvMgE6DFvlNLB2W6KYn7At+kk0AhlvGQHFR9Mz
	 GLkNVvRqJbfqhfekRgbrxOixGRFkNEw2gzLqFrnRY5Job9nDSiHK5sN2GocEtiH02Q
	 GpZzp1a6zLtMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9535ACCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147099357.30665.5272413307951325418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88328a45491bfd6f24150212cd6ea8cc0972326ab9f4ff944bf8643d17a386e4
Date: Sun, 26 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761470993
