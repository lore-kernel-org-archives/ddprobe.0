Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093A317C20A
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718884823; cv=none; b=b+hk9oshW7t0GnXwikeka+v/W3dy1EJ4t6qVLfi9VL+SIjMZbAQ+sX8GUMvp4d7rS5gn7Kubn25Ps6hRGGs7g4O6JFjPCvEDtIE7lNUzq9AEmIxrkKY7MU8VNSWtBQ/ipQsTKOy9CEplTuvNUj4cg6+8K8LWCg/6qg1KTqlY9uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718884823; c=relaxed/simple;
	bh=b406s+EDUSStXKWyJu13lzfi5cbS7vz219N9tvG6Qmg=;
	h=To:Subject:From:Message-Id:Date; b=Nkx/WhlPrALJ8Kd2lqd35FU6HGj5dQAlfSlMzxehcjmgST0gH9RO+5Ub1PKUAWZF6NaPFz+QobEFhZO7UoRlmV566BVzrJwLydDauLAzbWKKeibmJvmoNbo8a8GtLFS3hwfxM/2d1bffriAulwdgXYTWAQrd7htfClrYSJMoYGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPjNWCih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPjNWCih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D484EC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718884822;
	bh=b406s+EDUSStXKWyJu13lzfi5cbS7vz219N9tvG6Qmg=;
	h=To:Subject:From:Date:From;
	b=kPjNWCihKXkGa8v/pcgK1TUy3Dnxz9oMvpEUB9lRUjs02RR+oS/tugbnRIw+zzOpd
	 VFZFUQTDmF/Uu7pDyRnY4V/KSRRZ36ANd+f2RFygqysYO50CWPveAGSDAoZgiyYJft
	 WDbl+iWRKJkL0Ywwa5VjCaWiswpa/J+mzH2/ePcY/n/bfpi8JB3vIS+HJzdwshs2V+
	 PA1ou2lnU27NgZoLHb8E+Kr/jooQZe0khJBk7FLrsTQ6t+OELBs2vzJ9T83ao/J9yg
	 KeFlAiK54ANTVb0Bme3dTo26FrlXz8AM3exMcsCljhBIjLss/pUV6rABljnNPtK/iS
	 1toIgZYD5/ZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5F6C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 12:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171888482276.22737.367402910618411334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6db5a2f1dd56471cd28a9e4d5c1a68b2aff3f01b9070314e307724e240ca1a9
Date: Thu, 20 Jun 2024 12:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718884822
