Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A87318FDB1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719424403; cv=none; b=WluUOiQXrJEcnFcACWxUUirmylO32nii3YCO9VinxykOoYicKQx2HX5Hk8RkRwbxKedgq2gEOmGv/YgJY2EzPCrRkMm6eGOU05GdbL2pVuIE11IYvGVRLZVwBltP/kMA6FM6gCwhjjMSO9geIn2rCtbvi0Z0LCC6CL3WrRt5G0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719424403; c=relaxed/simple;
	bh=ocrRQAbr6eVto3NyMZ/V4OlfDRig7/E47xCpvxrnhec=;
	h=To:Subject:From:Message-Id:Date; b=BqrHJUsVU2vDgcbJxLAIG9x9kU3/UvSG6rMvGxAf0FV55EV5jRix588heoclHE8+bGufq0swZ5PcsOY9eqxkfio5nTrrGpwJ8iFc2MwembZU6MQfreyzTdSMvYaYmF4sEsbkaiycBSY640iGY2Ij/06zfOTe7qyEbYWL+fQFmAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL6dw9cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL6dw9cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBB1CC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719424402;
	bh=ocrRQAbr6eVto3NyMZ/V4OlfDRig7/E47xCpvxrnhec=;
	h=To:Subject:From:Date:From;
	b=eL6dw9cnaxhKiIWh+GIekdaEuzSYJKm4GV2iOtE+rnv0UOQvUsyqvAfnEoz1jUjA2
	 ONalCK7Dd3ZEuXMQSV5XBTIjguBuoz31QmsDsVsrV16aOLy6ru7e0WDreDaYrdpNJE
	 NbeJqQuVrAQbN491wgohAOpHyRfaehtHECJ1Sylfh2dVPuKGxWFekEVwpLFEPj1Q5e
	 j7mM0Tr2GyIMjEZC2OEOkHFcr8NTNsg+fMC5sz4iyvH52EDV9jI/0tnA1z5J7MFnDB
	 CSoBe4HOH89bRqcf/p2Lc50tpv15DFxy8wNXf7GIZFLKE/ynGVBI6sLmRYYRv6REXv
	 f4tdbskIhpR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A9CC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 17:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171942440279.26754.6866358324153950523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4c1ad6efa83a4b242083057e344f6d53593742514f3eba66ccf4b9a39b4695
Date: Wed, 26 Jun 2024 17:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719424402
