Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8841DDF6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721492754; cv=none; b=u79G7YOlQMLj3O6awJAwwF1FM5GsWh8Ak99+IcUyUX0lRnDGzdSVoM8x/zmNaLhPmcoakvunC9z+NiA4RubIfI8MgpA8Q8FQcyIpUOGS2IpLFX17lhMZVvpOVcsWNAcHXie2MZLCM2sQHG4Ni/D8qo6jlM1fNGc3Pyq4VLZINc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721492754; c=relaxed/simple;
	bh=Gkbsod7xx9FG10Ok6SgL1nuyNsxQ9aA1OuKoE3xiYPA=;
	h=To:Subject:From:Message-Id:Date; b=nFdKc5wVxqJNxdtLAxaX0pje3IwZmXPq8bGC09qe0oaH4+bVKkO7B0tfdtwaqoikKYSRGDCUYjnux2n0Au9YdfQX8GyLRYuaCkvPMWtuBIqKd094swi5BF97KcGldvFd+NfGEFpDE+H0dzfp7txYKS1EbVGE1wQ0YDIpOY54qFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+NsjNtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+NsjNtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B931DC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721492753;
	bh=Gkbsod7xx9FG10Ok6SgL1nuyNsxQ9aA1OuKoE3xiYPA=;
	h=To:Subject:From:Date:From;
	b=L+NsjNtL3sNtLH6M8vvexWYpnt6+eSjEm6YR6/HGVfHreQ+D6QAXHTCroi/PFy1Fd
	 VIDY8oRBvYS6JYaBQN1WnQYRpWpsFrHOX1ugl1jpJPVLcsNnB0ekCNBlB50bkF88UK
	 2arkVH9fW9NNOVzsfQtnvZG2DthS2GuLIJQ1O2FytE08s6Be1QOvP+3tsLXU3WHggN
	 zVMMqeQ/bso80MKH/Lxp/z0u/GOVlNqhRu4j5NSApdVkNrKnT52/lAH1T5y1ZVztTK
	 9l3dZzdMJ44/OC+Ccr1Yin0+YybJiAlbGNXhY0ueX0VRPHkYigDVtLUGUqPY55DANU
	 7c/fHvOqHDL/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E5CC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172149275362.17543.2352615997755033267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8e5e538b7534af8c1a6f814c4487d1e136ccd6994a971c5833f8013cedabb9e
Date: Sat, 20 Jul 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721492753
