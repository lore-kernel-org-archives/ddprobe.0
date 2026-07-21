Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCD3470446
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784668114; cv=none; b=K07oAQ0pMSl0vLn4SpLazJ+S2OOkwQAg6ttGcPlUREQ6VuFFYRvHkK1PbvPdB1R54kIVsKn2AkasUGcVMPXvX4ipBN00xpm31jMGzYajMrIDXRFN8fllgQnZ3LZQBG+uPlz4gxKbnk482OK0o2QR5QzgVsMp/oz4fteVkeqe6x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784668114; c=relaxed/simple;
	bh=lVNfik3IjB6nMuPTPyLEgna2GXDpaCmJjNCrB/B1IMU=;
	h=To:Subject:From:Message-Id:Date; b=H6T0YXqI8A2QvsskEXUN8Ai9duXNpvgWx6rQ1wPC3wV3TfCVQnpqQBObt7VYrJWTrcf3IwAggHPE2s/We9fWLerm/zDJVvixrOoE6mnkUCdrdbmSb3ddB6/ONZAuUMqLzx8KvcvumW6teJciZF87p/uZdYmXfYdgQSGXchM0Qu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wor4QHuY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wor4QHuY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF80CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784668113;
	bh=lVNfik3IjB6nMuPTPyLEgna2GXDpaCmJjNCrB/B1IMU=;
	h=To:Subject:From:Date:From;
	b=Wor4QHuYzz7BCscTqtvhVI80C6odiYdyo1/XoOuj2CKQMx82tmwX+s2HV9Z9g291w
	 XoZ6P5wuE7cP5vzaTSpxdAnc4Qqzrdkm7kAXffLYGsj1JOer0EWb/8ylHMajpDtOdk
	 aEOVDebfxZKUZoYJFAF/3rfsJNEK8cPy6eLW5qxY0T6eDEcOk20Jci5klltfrqMkkp
	 XrZ3U0uqKlI4YEoxn46o6NQA5V5M5zZ8UFdjMTDr8BwVScLL477A8FRY7ANsOnbR7g
	 DWT45kJFz7paxvnFxDoYZeWiknVvFbjoXIhy4pGtdKGDauYiU5ZwiVuhlAWgnsT2EX
	 mAOQVHMfwF/kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD91C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 21:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466811368.13523.3402295681626567995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7df42b6fc8ef117302496cf9fba94920e7545651392f7cf3915117cf87eb43
Date: Tue, 21 Jul 2026 21:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784668113
