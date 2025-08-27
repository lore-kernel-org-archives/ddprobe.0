Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221D43597C
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756257594; cv=none; b=QFTcAJ9I2eRLQ0Z2F/sgjBXbp3ogMz0bJUXdkETzGZXgscgSet9IB3w9SlvKy2TMr1+m9ozOPXqWABKA4WJ0tx83yHVHtNPWEMqMCvGmrjJ7LGMU2m2n3mEGvEQkHGJnX5RZpdlXrFVxckiWkLI52l0iJCWJVXNZL65qP4oLJYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756257594; c=relaxed/simple;
	bh=AaxQhcbtx4KWWMozI4s5+NBEX/D+gLW0WfCTsXwDJRY=;
	h=To:Subject:From:Message-Id:Date; b=TuKygbDQuZT87EwW7hE25JZEQ5e4Vz1Dk60A2tFhuLbxIeFNl96UqDRROMZvP8qY2RkT0nfSVFarUl0JlwVy3ZfMEPi2hkKmUbi8GYqjPlzeILk9ZHyKiSFDR4/Eggz9FGNdSVX5QZiCrn1Qiz8qPWf2CCi4f/ynPInp9OR+scw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XmQSP8bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XmQSP8bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80F3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756257593;
	bh=AaxQhcbtx4KWWMozI4s5+NBEX/D+gLW0WfCTsXwDJRY=;
	h=To:Subject:From:Date:From;
	b=XmQSP8bWqD4xgqh4u+cGUIqxRrhRHi/O7qXO9D/WFHZtN8o7/WnHa0SdsoBMHrrS4
	 +r8Ui6KxyzZUjJQCnQPe/5829moL69AE6WrmknI+gmAKm9DO5z4PdvkEQHI5sIYpTP
	 KxJ/KObK9lYFdWL3NV7zOE6ngoO7VPITaGLMBKjby8ASSyWSBJ2UmzmorVqXZOQzB3
	 VtrC7JpO8r3NesBpYYcs76CDIOBmGqDb58Tiv0OXP57HaMDjWGiiwidBjrLYnzWSQP
	 bF5+Hr5JTfc1EKXSP4RUqnWqwYYClWTGpSsMDDtxSIR2ahlTPN2VdRcR4WksOa679q
	 jeQrnXT+JNMqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A262BCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175625759365.8540.7248753746715723888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6106cbdec4a6724cba07bec0abef71c4766d4a5e6f1eb0775a68e6f99e7e11a1
Date: Wed, 27 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756257593
