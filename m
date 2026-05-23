Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502BB13B7AE
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779560554; cv=none; b=U2VbS+SAIw9gNBBX37WEFaJw+hHBYwhSp5dzX85QUu+6HraIP/6DsGki0JVZSpiWT1CcECmbagPSjQxh0iiYmyu8gGJwrfOAwQP+LVhXcZaT8swOOoC/2JAtGJK7yGOJoCA/reJcrbwlGRx92sBxeaY9SU2prVjXIiYv0Ny8wxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779560554; c=relaxed/simple;
	bh=3C9xcf569a9ALhOszDA7Y/wZ7T+GHfUmmshm8gVhXfo=;
	h=To:Subject:From:Message-Id:Date; b=Zn4qWzPaIx/QOz197XDeopxcCAvfIdXrlkfavsz/E9By8xYVe+RzkhbratkGC0KeU7U7nGwyWl2GqOzktcI7v1ITOhYDNUVfR2Jr7MQx0C280aMirvbtbHgz/5/AMu1kTNtGb318bueWb2Yz2+Km1nI1pz+2Ylwi2CdGc/9EsEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VloqMtqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VloqMtqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5849C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779560553;
	bh=3C9xcf569a9ALhOszDA7Y/wZ7T+GHfUmmshm8gVhXfo=;
	h=To:Subject:From:Date:From;
	b=VloqMtqkJAOZ+U4QFjISbGNRNdewaANQ92kGKLpOiukL4+PmxLmvIDEAtywBM7z7p
	 doO45p1s4hVl2yAeLEgqVBRv6EASuBOOFVTgidDDCYWAZMpH9hJNaJP0Pb8AH9Dhmq
	 yvhabjoFjY9ADVsW2z8Gn3V68MIZCv8w1fSck8SaBavtsWMql1C1kYnfKRCdEO/U4Q
	 zVWoPOuSz8xyaapeP+Tc4PCRFREfc/L6Kj518S9qvDhoQSOPwa87QG6X3oLonc0tTx
	 zYb0+I/shNH1KnIeoHBJyCGkN5k8UptQzyjV4UrmjQIvG0d/A+i+bzQARi45ggiYY4
	 Vpp8zXizerN/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDC2CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 18:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956055368.29141.8049511017660811570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341230a726880e31171d623d1c95c38c7ae1b93c2268e83d0197eeca7b80bf60
Date: Sat, 23 May 2026 18:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779560553
