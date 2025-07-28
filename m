Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C25B9461
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753747194; cv=none; b=K5O+Cvr3/4mnvVac/hJMQtnqptQXupRh2WCuAeLZaFwW03bql+d6Wl+sVuJu64R7YuyW2vaJEyqMZgNipIPCOOMOZtliJn4EYuoybWYodpog1AnRH+f2qfuRJjXTLdGoP4zZVhpd8QWXbngS82uGfrSldE8aeaqnI3QjtOqdIgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753747194; c=relaxed/simple;
	bh=APaS46sTE/TUg0mvpgpKsnovM+imp5jAhFJ+XXKFgr8=;
	h=To:Subject:From:Message-Id:Date; b=OkFq5D3A/QmUGpuG4mYOmfIDhPqmm64z8/tvQB0zxdujwyuvoSw3Atmn/UKkSZmIbymbAKjhbT9RZnTy3VAKSKKoofdf6ZwtYymWDQ8+OTfvu4iDJ+o1p1DVBEa1Jcrsgw+S1bMfsPHXVnsV+4YQhUES23yAMV+0ClIPSlkUr/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRGfEye7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRGfEye7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21AAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753747193;
	bh=APaS46sTE/TUg0mvpgpKsnovM+imp5jAhFJ+XXKFgr8=;
	h=To:Subject:From:Date:From;
	b=SRGfEye7ahDyLLMVplhDgYUQo6FLJL0mzLEtnMbG+crivQVrqSJnkwLXj7C7yTkby
	 Cc0kRke8as5Lcw1W7tC8MUdHj5ACdFQ7FlJl6XAjp3AMDl02tMnaSDnngfvY5t0emg
	 iAUL9CXz4TETg+wS6GLt1wzQrGGnmgDxAOFSYSOh7ca1cl1xs5SFw8VzkU6EhpJe8y
	 uXNOJ0uxvyHZ42P/uEK2ijK4VDAysDATR1ihN4ObbbPOoa5yI98RdGERs6OBTpusNw
	 Pw1KGLXM/MacNE7XZmYA0SWh0RArjNhjMwpVvEB+i1baXlL+lCde2CnE7pspmjVxgz
	 uOVS3fKpW/GzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9092BC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374719357.31034.10403197800752293659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2dac23c60b78071f0ea9b4fe57d3575784c63348c9b5f19cf9bf8fed74ce21b
Date: Mon, 28 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753747193
