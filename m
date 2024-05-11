Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6187C53390
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715426543; cv=none; b=ItXwORrEP8zgAkZc4aCZXV+dlqWana+JwrFTG18s+JDpBrZrvl/x40SPlv3UVrgfAuQhXv7NFbHKfJmgOI27XaIhDGRTfsGSSkpkr5fJhIQKrcaC17Jg5UfFys/SFoWfnWwpk70Ovw2c5k62BLk/kiH9DS3nF06m1ba6gaHIi28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715426543; c=relaxed/simple;
	bh=/XElSBCBMqnE8WgPfzJb0Iitn5NHrKhZmsvReN4WYnA=;
	h=To:Subject:From:Message-Id:Date; b=HBSSAnrT1zmzKyJNoTj9gg+BupnYJCJhaYApJ9CmRhqT7Fpg1efIpGaFL7hpXqsthmH6a/HFj0NSqNDMKkLAqB9O8atdfxHct6NkSsTOH/W/1GNxSMOPpZAeWw/rFdX9XTaId4bPoyZbLkwjOj/jvBs15NomBmLvJgOdf8MNDX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nN08mVML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nN08mVML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38A5C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715426542;
	bh=/XElSBCBMqnE8WgPfzJb0Iitn5NHrKhZmsvReN4WYnA=;
	h=To:Subject:From:Date:From;
	b=nN08mVMLetRvdWlwW5jFGSuv/SPda5RlN8rZf8Y/xK10obRXdXDfQTo/zPgx1adCv
	 JWlE6YZFPK2j9zwaF8FVoQMDxdbTfPp660VX8g5A78GalayZBi7lElcMmLRn9v8nC5
	 qfLzCz1802Ubx3OB643MAzilh1XWJj6pJcioGyLd4AUAHjWhaI9mJ824I4vGlwk+4e
	 oRMcRvzcjxujchrSmYgw2TesgBSFhKvgjf2csMygot4OMz0fSo/sHp67ygwEYyqKeJ
	 DWVz/+eVdwqDKQKlI1KBoFR5Bb1VRj4zVhQRzlxaKdmj4Tl7UhChlXYZermIRwOqv3
	 Y8Qvb8FZrfQnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82ECC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 11:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171542654279.28178.16504873580639690528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea80d92204cb3cd570dfb050ea66fd98aa7eb40f897b0d4258a8ea6dd59a28f
Date: Sat, 11 May 2024 11:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715426542
