Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4F256C8D
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775700333; cv=none; b=opyKDdkC1b/BcMlSR9wE8zGC5gPNgMsImMfzR9378kSCRRZPF44Uurcj/1GuHVKf9ezedKg1lRJdhBn0N756SmnpsVwfMDbIJZVkDzmOfV9HH4l2Qti2RJyPCnDpTpaqlUkoJVMxLPdSCA2pvUpAJ5wv+xkwU/iLnGFTv1pFjU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775700333; c=relaxed/simple;
	bh=VuJPriGSAGvw0BqE5W/SfEAAQ1fFQIP5ysy8wCUxD8o=;
	h=To:Subject:From:Message-Id:Date; b=DOC/h9J4OCIGIkZ3Ap7VOW/bTRJMFpb8dkJ5bp31vRGd1p0RucHikP+SMPLiE9QsPcksFGcn8ONVBQXHzGd76u7ayeseMWTAta+GDIaSbxOrCj54zhZBSfR8ueyf6xLgGTix+76xYipr/pWbh21POc5fryorBu67M/KqHCjXOh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7cqA/4b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7cqA/4b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD39FC19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775700333;
	bh=VuJPriGSAGvw0BqE5W/SfEAAQ1fFQIP5ysy8wCUxD8o=;
	h=To:Subject:From:Date:From;
	b=U7cqA/4bva99m4zB80O9wkI18Dvm6ahE4wVTcboTiXJT7kyxCNLj39Betcmw75adz
	 IxrL5in+BilKGvNRG2RxsZS/BFnJUA0+4Py08XETCFYiTkoM6VyHGe80E1dUxsD4uV
	 6PiQAXwcKSG3YBf2hQkV9gABPVG4jNnNsRfO65AFT4EKchL7TYOouquacZVcWPynQM
	 CbLoRmGGicG9gR2IhPrrHT0EdwwVcuJXK8ReuPV5NlcqovMWavtwFmUSFNdfP6+ymK
	 A8/V3wGY7kJLpUDR+pig6KeDMVimtCLQyGQEZ/L2FziLfjjWpUm/KcSRnfvAl5PIPZ
	 2N/r7hWFSkddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92A10FC465
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 02:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570033369.29878.6311340857808029063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbf196a6ea176aaedfd1510a0e8a16911cd0a1cbfce64e4eb1e638e2b112264
Date: Thu, 09 Apr 2026 02:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775700333
