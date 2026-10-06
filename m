Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE6545C70E
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791295234; cv=none; b=haJsTMUUQVofKR69F/ey2SzWrAohOgHGciCl0QHtRoEQJ7NRMZ0gY40a3yQfvoEulxaN7VFcgXp4XkBTeX5BuPfoRevjY2naxrbaO1ranEpBNE9fuQ8z5VObsH51/+xNR+Y0bgjeNZxqWxfpsphOaS9xEO3QD0ARG5nuyQShZY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791295234; c=relaxed/simple;
	bh=yGDIK9qtoUg//pUK8WeU34XeQQSOPBU2CYPJ1TqmPrk=;
	h=To:Subject:From:Message-Id:Date; b=N8OEszkCmq/cRrfpmF0rOzWh7pzNZzayqsWyWmTyLBIrtrkiRn05PB0Re73PaIjaA0piCF/5mfYBnZnhu4JVsjJbb7vVWxAh4jA6Vpk/quODs/oAMXTWqby2fee5vcfvbXd6SNTD6Z2Pm5vGws+Tblyl2juo5PPS3mzoZaP0AsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDxC4uKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDxC4uKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD67EC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791295233;
	bh=yGDIK9qtoUg//pUK8WeU34XeQQSOPBU2CYPJ1TqmPrk=;
	h=To:Subject:From:Date:From;
	b=vDxC4uKSW7puBLomsNrLAoj6zONJyu2hITX3INT3LSIhiE5jaqtQmfQYCn8l2PzeC
	 r+0UGm9Nb7u5wtn46GU2t1v0zIlEkQ3lUlyndK+XNV2sh+TrDHAGoyepV6kdedQnr8
	 wKloJhpWPdE3hzqFTimC1OVa8cCXNU9QsvsbcFRx3H4uN3Z2DuoYTQ4v0NcS1AZPrH
	 46BxS/Zo2MMz26AGvKj5ij1f0Fi3zwyhZ7TSHclTqCs4/qFNVFurC8OHIRlAYA53zC
	 13hLD2HaRkXmcuQ2lRf8MyEUsgHFtwd+BvetAXx3HsjODuAV3wSMN7Tk4F5GPrXYEq
	 KW80GDGNpwzwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B27CA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179129523368.22787.16744048827812195661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a19ef277332713eadc757923d612dc8b953e43594d16daae2bb16e37477b2d37
Date: Tue, 06 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791295233
