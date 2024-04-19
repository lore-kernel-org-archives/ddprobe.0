Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2C3387
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713488363; cv=none; b=B00XkjwwEGPZZFglFCF7rRaSedT+AN3HUObK5aqvMNio4ZEvV/KcTl93iUNBumj5HBD4iQARbuXIvKqEmMFkJ/+qW3Vm2Jy+vM2SbnNy7O6+kQhP1T/73qC7PC3mxIgyKbVGdmxI/AqHM26hx2hqIIluf4dtgUTvtkAxdtcMGrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713488363; c=relaxed/simple;
	bh=a3020SRl3ypPrQbCeSiAeoUEFbytVXUZ7DLS8HHw3F8=;
	h=To:Subject:From:Message-Id:Date; b=lquUr3VPy1F5Uq53WTBXq+Wdg+pk8JZg/wQhBhR8lvSTsFFCOxybjG34SkZsNLasbOcWoDmd0TySsCShoduYFUOd51HZ8gmqH/Q6ImKH2iggiEAOp+ON0O2tPJTRJ8kSdLSUvqFsRys0d2f2sx1cKw1Fh+028EI6a3Vn/6NmCEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4F5PL9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4F5PL9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A13C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713488362;
	bh=a3020SRl3ypPrQbCeSiAeoUEFbytVXUZ7DLS8HHw3F8=;
	h=To:Subject:From:Date:From;
	b=L4F5PL9CKW86o1/my32TQsben7twAWBcDqpqV9y+JloezYgjznOSGQ7gPQgc8qgxy
	 rXfhI1jXsZI9yWwCfQwMIJ0fOercIbGdUaxiKnLJaXK6KLjNcmPAlyRciM28oV37o4
	 iHuh5QDeVLzhNNTKrI23ko9nIdXusyaBDu8gOIRouFC15+ifoGi/78celgWv+EHmwj
	 xZfQVbYNdoAANr65w/j2Z6hCT+9s1WnMwZZg5iN7ZYXoB128pmBQtfvAZoGS1+9ECG
	 /QX2IGrdoBuaj9ACGV81He577jfFILS7lD+tvVFv6dtRxgX2684ZxyEScJgIKOd5Q+
	 3tZlf+P6lw+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF6AC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 00:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171348836276.17205.16574670966229419739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1651f468eb376ed547c9e47806a88c8b848a835fd81f4eeed32799a39cff26b6
Date: Fri, 19 Apr 2024 00:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713488362
