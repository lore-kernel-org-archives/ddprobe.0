Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FD8433C8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716800663; cv=none; b=aDGa/pV2N9K3gMds7fgvkBOPmCJTKHtBw1x9gi59b8G45g8mCt+Vi57SnDcn1G+kV+jy2xzfsP5VmTmpVL+brVU71Ps17su3z21MQmd9c0vgPOdXtxrTlfhGThgYg7bGw4YF0Mezm6mLtemeCZedbfDUYcHQ6CpIA0UXiqWciYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716800663; c=relaxed/simple;
	bh=Ay8Rr46SfA12tmGLl9Lm0SbIDf741tZBhRC3L6m+ua0=;
	h=To:Subject:From:Message-Id:Date; b=CL9uD71Xi8QZbuunfUGJ7zMlqZPBCnUEBcZxJuLfXDVOutqQHNwvbk9fIWjhnGVYm8YOrl1qYcwJyq4NmUvIFUIDorn6MqCc7Q6XCFy9ndhY92qLulsZE6GCm0pNDiJXYew8TNKza/SbxoMz5I1GBO/Saz6fH7L67tR2k38Aets=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNaWwOXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNaWwOXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD150C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716800662;
	bh=Ay8Rr46SfA12tmGLl9Lm0SbIDf741tZBhRC3L6m+ua0=;
	h=To:Subject:From:Date:From;
	b=GNaWwOXBB5RVoWgF43ntxIax6AWXKpX9fnGrKGx8RyGp2PeBjtypxnaRlPmajMiX1
	 LM0RevDaQCFHX9Qn6UI2Lj6Z4ldWk7zjOCukk6hzQCHDFCNH3+sy5d1dOl88r5JvrS
	 VO7WMjI9VhWLCcmyZMAYJ8PRN2gbFQM+FCHt8ax0SsQo+sl0TNEjFb5z5P9dqzixRj
	 IxukMAiP50wRYoasQGsAfwmcjqjpLxp52wr7xuTluM2W+nE3TVcNXWjIKfsG/HQS9p
	 sXFYNlAdwFXMDzXw6MDdDIl8G/2TV92vh4suQ1ahowNDp9npQpmmzkgMVXU4VgJj3M
	 TBscyEYBtXZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B7DC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 09:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680066280.19094.280727619302020214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba76f16ca1722a2a64c5d8f26b365121d46da8cdacf4e1d30e90474d530650e
Date: Mon, 27 May 2024 09:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716800662
