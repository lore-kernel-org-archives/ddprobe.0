Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549423812F6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791353434; cv=none; b=p160jC9mNjv6gjnBK/mf4S6X61iqHAsNUfl+9IP1oa1YSZ/1nXK2oXskOM611Da0hAEpGlg5F+x25Emwjg6QozW3SDHREOsfnQsRuN0PwoSfcOWCvUEXe19uPprGciOZm7IH7LE9dKlqR1GTcBWBM0mDYPfJYLX6TYVP3jnCV/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791353434; c=relaxed/simple;
	bh=nX7x7ipl9XE7BTCEoUFDbI1v03m8MoZU9tQA6HBEgQg=;
	h=To:Subject:From:Message-Id:Date; b=iAw1ovfWJN/dN9QreZWZRYdahtU3t3KjUe2eEwBZ6QAYhXogpzrxaFPG+IdAAON2p+VtuLCPTAVzm96l9DB0I5C1SB23X5scCMEuWBS+0pSAOykJVOz2TesP/wFhu3gIVw9uCNXvNF4sw0INX5CLHREBP5Tr6UwwmBMgT4eKUW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G32B5FP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G32B5FP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F89C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791353433;
	bh=nX7x7ipl9XE7BTCEoUFDbI1v03m8MoZU9tQA6HBEgQg=;
	h=To:Subject:From:Date:From;
	b=G32B5FP6GpARQYUusrfXQ5WNB/AmQc6R+EIUMc1smuuQDJuOOjQsP2KmL7T81n7/5
	 gjjzhZ+sznfAZTLPz7R2gQKoE/ufJ1FFWM0rsPAw1dvnLUDShkOFbLRRCwln0ZsA18
	 EEwgBeisFiIuXV5ZG32btlMP6VDr/ZK3/etb+Ohx589vmt+jwNBJ1avKDlDC16lfiD
	 z62uarOD4VM11d8gvITjuQTdcJrGvdWKNc0VGQwLVUykiMqHR59hqm8FoyMyZdHT4l
	 4azAJjtEmIEAZZh7Nz4jhgAH4CuywCrF/0joZNIRvM565pMtC5OqrGlxEHc26iQS0G
	 sjsG0gQkbdmGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC39DCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179135343369.11670.11993748526614556535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eacc98aa69921bd7eb3a3df0c5eb0f0a747ef8c33e784a41ce57762b877113d
Date: Wed, 07 Oct 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791353433
