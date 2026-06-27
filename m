Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120423395E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782540514; cv=none; b=XFxk9ZTY+xtmvXoBzDW4T+WcqyTlVyhnz3LqOEmS3RmALP0zOfb14ejqxksVDXzYYOf+UeSGhtx/3JORZL3FiwZGwTsdAnzQaXUsBSRxr6FgRzzMe6QIROstFEIo+OmDR/I+PitXNAlgPVmftmXZ9o13lR27Zz+23kIZS21w3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782540514; c=relaxed/simple;
	bh=XOrTIkSea//DYaYhJ9EMxgp6mITjGr1CBpSKADDxuVc=;
	h=To:Subject:From:Message-Id:Date; b=E7iXkz8hz86U8vo2n9972sYmpZY4uD4t+dctvgcyMmjWkbGpeh3oV+CzyhQhLGkdfs3nFkVvTTVJgHZNoHO2su1wT+rLisdh+eZSYGGdRfGU8yRVdr7TZwk0VKntuWb8A92Ix/ABg1lJdnfSySGvziQer16+XjyTKc1OK0LGOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mk7T5fZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mk7T5fZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3858C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782540513;
	bh=XOrTIkSea//DYaYhJ9EMxgp6mITjGr1CBpSKADDxuVc=;
	h=To:Subject:From:Date:From;
	b=mk7T5fZvd2TTM/h4XLylvnGhnB0ccJX4CTPIfk3F23s9jPSrzoWXmcW1M+aCMuy3I
	 n4qVQhD/BHmUom6GQKHHHQ+hWHPueufyaahuqc12RcV0eOSIq2DL1lLMUWz6phR6bk
	 FYqLtAx0RQCUNDVoFKtwOVYedAJyes5xxl28jnz/bI4XMX23c9EPIeP0BBXrq1tl5O
	 nGrQDcOpdQTMIjXB2CBJNNNH9bXVXgW2yJwwfEn6ody+l3dqXJ0cdyUlsfv89r38fY
	 /oI1MePfyjPRRijnGhbyAscCdsnmEK49blAvSewPUTwAretGQ4x4l0LHPKWXO0mfFE
	 WvfwtAtmsIAeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACECC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178254051369.20319.800605301858741818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30454f3ca2d3774a4cc0ab0203c326bdb2b6a40619a7803620d84554f33bfcb8
Date: Sat, 27 Jun 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782540513
