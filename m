Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323FC3770B
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753658395; cv=none; b=Hmf4OX78xQVGlNx3vFvx9cSWL1E8Idz0HWYIUfLBoLPEW1lovQJVcLn2RigBe69SbhK4sPHYGdZGOnjH2Kh6+qHeDSKhtg6EnvaD/bVRDy0Iu0q7fBGUEp1RqOHxok9kHr3sTF1Ocf1/Ka46PayzpUm7AMuylfYkgpTKpHeYrAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753658395; c=relaxed/simple;
	bh=07BZ6CNGTLHN+WYL97H1B2/ZYl9zMnvEYqt/JhcTfOQ=;
	h=To:Subject:From:Message-Id:Date; b=RB+4zRB2vxT1+fFWgOW8iRYYrCnN5GlZEwwMyj1ICLQao+T9/YqymZJoNAjD4/rn1zG+mjTOp+da+wteg/xe9uLqMJMi7QtRtYtLGbH+E+VdFfXJOZyt4E0AWiVMGtc7AEw+QdxZmG5i094fbYPUH3H0awead5M3riG1nMB9YP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyEgjZnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyEgjZnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73CFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753658393;
	bh=07BZ6CNGTLHN+WYL97H1B2/ZYl9zMnvEYqt/JhcTfOQ=;
	h=To:Subject:From:Date:From;
	b=WyEgjZnJx7h2I3xjijY2L6wXOX8ykMJ5QVCaQS2ub8MPKAV71ZfxceOrnKe2eQsw6
	 kaBiH2+3pg0an2K+yKx2e993es5ejPb4V5+kVxk8G9ZBFfBO51WP7XaXiVEiBJV/ld
	 hAXYABr9z8Lvf1dFb+e1GLdUApKRGpoo3G0+sHQVN1EtTIidg7gNwYu/JOv7Z8GoD0
	 BUV4OV4QhiTrdWetho6/L0mTDoGP7Ald7ipuqXoB8CBUBro8Wq6ySPQheqy67VIQLR
	 3/Ge9zKPCpehY+7ndGLEvspYdkM4Rek0yvpt53n3MQK2PBOLUKHFGTTumVEYhu2E3N
	 esC2kBXgOqRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95231C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175365839357.2460.18100529110553559917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc422f388c975c94bdd55f937b8de146aa534f4e0e48b2ba10d915ddeebb10a7
Date: Sun, 27 Jul 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753658393
