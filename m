Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 738543CAA57
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781173594; cv=none; b=OFvXOsfWvh0MkvTg0/FvthiHfShzj6GkIhhedpiyUCZ1hpRgdN//h8pucneS2yfdsFPQOS6enfWT2PiUitRKqAQ5QAPSbPEGvlw9y13JaDzfz3RkKxkI3+kklF/VCgXJwyFeTC5x8xI1yuOMjSyQv/fiUeSsFmOYYz0VIJRkkZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781173594; c=relaxed/simple;
	bh=mSk0dTTqgSpQGyhFFMKxBLTy2ttUzgDZg+TiqGo14bk=;
	h=To:Subject:From:Message-Id:Date; b=EQW7qOOiqlSXVqqv0kgoYW2Q9PVikUeQOz9cALGEhJGWX4UJ5DKRvdoHZ/luX+j8gEWq1GgEncHc5pkKCMHk7zpoUzypTL8pE0EOUrP0o8vzvGyX+Sb565PeFWlN8aDjt+SsjpgDvMpclHtsRR2lT4DI6ydjCNsqNl6C7M4pX/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeHhjZva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeHhjZva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1ED4C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781173593;
	bh=mSk0dTTqgSpQGyhFFMKxBLTy2ttUzgDZg+TiqGo14bk=;
	h=To:Subject:From:Date:From;
	b=oeHhjZvaAdI4WHNrb4INQK+7T8FWYP8wc19Yp7HABD1G6vmMa4URwPu7J03xShh0q
	 AlZa1ZwrOs1oMEjXyhkM3HskY6K98MAuYH1EMglcfOqB0HgkmI4vKm/cASzqnPii2y
	 XvFxqd8HMKHUC3Y9TXZBu+hmEQ87fbDiepo364Q4Jv/MSK8Kc/lBIQbpQHrcQe9wf1
	 0J2/n3aoWfL5PgKqEjGqUZSu9z7tXMw8HL5RkW91eSpXotGqmwSVwDMycw4mnEp1nN
	 JOqgKmOqpeCsJXIOkOSxRLHaZZS9svLn+fWbY6XNMHirylW8muzmfnu2TceTKDyYKX
	 vdNneZz8tbz0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97DCCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117359368.6335.17532065742963475277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58774724061e9b08233f00bb54de04b0f87d86858335b8ba17891dbe991708f
Date: Thu, 11 Jun 2026 10:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781173593
