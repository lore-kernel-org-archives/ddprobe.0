Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75AA313D8B5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718275103; cv=none; b=jnJJynC6ALXlQFkFTpUEZ6JXrwNx7gMzW/EuIOUo7espmdY17oN2M9RkJRklPiFCyljJ8GK2eEo7AjbMREQalDKRJBRTUFsk/aCgSwHEUgzBAoelTK2yA+OC7C4huLyI11wauNR6gAF71SyhKgG2BseBdhTL3Oxntz3F6eFsWCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718275103; c=relaxed/simple;
	bh=1telWTpEqo6aSmjhfrGXdlmlZFL2UuBSl/1GarVbWaU=;
	h=To:Subject:From:Message-Id:Date; b=GDCULKnb5Bn7beLWkH/Wldp5s9r977hmT1Mms8s4rYxTdwUE/9jxWBhtQqneDTikbIkgtFZ7QOmMyaRNFkEkqehrtFJ5pFwPOuSGqg5DgzOEti0GmCja4aoBEIwNuHkyvUZiTdOs54TsMIYux/6WucFLvjHw0fq3dSB50WAV1mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltQd0yOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltQd0yOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E83C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718275102;
	bh=1telWTpEqo6aSmjhfrGXdlmlZFL2UuBSl/1GarVbWaU=;
	h=To:Subject:From:Date:From;
	b=ltQd0yOmPmxP83qMRziB8edKEcbfeeuVAqMDd2uC4TDuMw4vvK4vEJl31tZUaetnd
	 Robnm7LwmXwIv+B14zrQSCGQopE5hUNy0a2O7J2SschZBvDtzI4eQ4/JkChxh0eXxU
	 cqU/MjCcScKcq29lWtVHGnq7dfJLomzb5IDgiGcdiooZYt9PFQE5AD4nn2Y+t6t+82
	 WB9NIFyY2tAmpW9qKdqBA38KcEdkegP5c/Ye0KK5TSOMnjjSMPodhsFn3pKIVtx9+v
	 53r9KO39zoGPW/u0pGBBA6kDBB0QSjuctn0Cz55DzP7U9CJEHW5VaK7OSccaJEruQr
	 SI3i7EFw2OfHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D32C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 10:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171827510281.16729.9274853484841551886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039125f77b90862f236ddb762d70fc31537293ea09ad8ba6cdcdcf8111a5d0d2
Date: Thu, 13 Jun 2024 10:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718275102
