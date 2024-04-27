Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6053F36AEC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714197743; cv=none; b=mHELGA4V+QzrsyyzgUTRtP4+SxsWB7ASQKIsaCTxH/WzKbeP8qJ7v/dLuT+Qo6KFnyWq7TmLC4euxlVc4M29PHCBv1QnTdb1oEUhyFH4PD81nhCneC46pqeIwY4UGZSL42FQNajeEEMG9Bo49CauJqO1ec3Oc7lb+OjxNuWac9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714197743; c=relaxed/simple;
	bh=uF0ibBWjb84dX7ZPEIiZ5JpSgTQqJVe0qudSpRKP5z8=;
	h=To:Subject:From:Message-Id:Date; b=u4BKWO7RDpN0n660hw2ROGfeHHJ+ajOCUCIVwxwqSc0Lqr2vfNe1JNPP4BOUznXfckO6IdmZ1vSq8+8lVpFKGJuGf4RaGUF+zg9VYa3QbZkLOfDk9eUfNa/Zeds8CKewcfRV27nIkHE05FNED5LSYEKwKwPZucKmnsThzJDLIvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdlrmRwa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdlrmRwa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55E8C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714197742;
	bh=uF0ibBWjb84dX7ZPEIiZ5JpSgTQqJVe0qudSpRKP5z8=;
	h=To:Subject:From:Date:From;
	b=hdlrmRwa59zTUBwZajdkFViODSRsjaLijaruGaFeDAK74eFPgeVJwf9iLBFUTFmIp
	 bAZwuyTqWkYVvw0uALdJt3DntmQ9ZbquFd/xQftzy+YeFky9U16fzHsmZZgBGL+HNY
	 AvljYHSP2tWefBeN6o8XMVIK6T4hidEM//8uiLjtCHXWBYE6Q/dmdG0pmnxFepyPC0
	 6bh5QRY+NYb2qpy+rCzjonvCnZ+5j9iUrPmd1oycO9iVuWDkrqfMlnzhh3O7hI7ptV
	 Bi2+zE0OiwPtu9K9MmrC+bPOAo/4VzmKCmnc1XsQ0HfCM+AKnO0KKf7tF9UFM+VJd3
	 U7ylUIYxBe1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2B7C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419774275.852.2163256595917284406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee855465095661767dac4cd04a90132d090b3ee75a2a2ab0907c56fb6a20350e
Date: Sat, 27 Apr 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714197742
