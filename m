Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C8017C69
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726386954; cv=none; b=Sh3udIuvVHdHzzHJfViACBC/ZC11A4LIQqb8Y3JgdhTtwWbv12W+bb032bd2v869G/2YUPwt5kO2KgOf7Way0cEtQ/ayODlNS2Gxwxe8HGBDHFpRTAznvpVqXKnt7yLH3jAwKQV8JoGaMyq80MSLD10m7tRBYuYBnhDMPuT3EsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726386954; c=relaxed/simple;
	bh=3bjiMzb0z3SSqyPlLeWWu5RCEFT6PxFQlo72amZP9PM=;
	h=To:Subject:From:Message-Id:Date; b=F7KvhOXD8DE8c//huONut7UgHPpOqY2BPHRx9r38Cdu3iT17ijHbpdYxHPsrCVzJAswgowS0y9vMO9g77IvAcswBbrslP/lVgVq6jEr0R4iZo8+ukfMuuNkjS+mPIkRh5Y7j3ChIS2Fog9EdsR1yPqUvhF1Pg6JwBe69O1jwSSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZJ+ZsqU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZJ+ZsqU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E5C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726386953;
	bh=3bjiMzb0z3SSqyPlLeWWu5RCEFT6PxFQlo72amZP9PM=;
	h=To:Subject:From:Date:From;
	b=ZZJ+ZsqU4wWcPKwWUuxPsa3S05P+tCdgtVPyN/loP63NhB1Ciec/3a+RFkfCSSCF+
	 Aim+LJcONVDq3kncqeLOeMUsk2JoGwALHC/GseHQ43nu1UtWlq4/Gpk1Hzeda3T5gE
	 NEJX3CnWZyYCM9lAh9V/aq/rhvZ/oPVwiKgsqVnzgPCWvcpWEue7VpMlrdaEq7Q2nQ
	 3s8/Rnrixi2Nb/JyXWcBrTOwUCWAM875D40YHijrQLkdzwPfENwRbyDROZTbbcjFBo
	 XHe8YslFCUYZx6/q+7kwyutfs2ttBVxmUszFAIfV6s3mN6NSckb4V8Q6YW2UgJwHll
	 Spet/JzW4m9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6AC35FE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638695360.25807.10189635640492939641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1268bc210b2ff8f52fb6be1301d3585ec66b00e73b31f53af16f9673e32bf5
Date: Sun, 15 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726386953
