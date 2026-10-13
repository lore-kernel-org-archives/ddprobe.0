Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59BDF53F695
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791919234; cv=none; b=jG2epal2bEfut750dpawxwwD4HHylXZ/CTAalN0DrDjKiFNsh1Uvm2+x2d8bC3MVTwfUDpQ6pY8Y6oeMx8Zsh7oM4MmzJ1PXBEByfqXVJFHfjrOpGw27VMAQaevRbMOGWEz3hYstlRONI81Jw0LC21RAsSXoIrtYr16SPHCk1Sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791919234; c=relaxed/simple;
	bh=tKckSl/z4FaRFAcyidIlzYphqmwi6mPtVPH9r++rvcI=;
	h=To:Subject:From:Message-Id:Date; b=AAY1uB3qx5cTqYSubMWPijfnYNS3Th1k68d3UbBt3d+zx9n5mF/YyrwSTVRQbpXOQxycJOGFxdhHO0MAiWJA7NGvFcLYl7QZ9A6vZSTC/HtQjcOmmx/oS1VUCY/s6sgpRX/RLmX9T+q9vqkgcvxNAilbB7p4Z8GZ+cWy4udtTMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qnYQag0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qnYQag0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE525C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791919233;
	bh=tKckSl/z4FaRFAcyidIlzYphqmwi6mPtVPH9r++rvcI=;
	h=To:Subject:From:Date:From;
	b=qnYQag0fog5FnNw1ksMvdt7bb2IlURkj+R4ekbsVoEgXOAn/3OPNN7AVXh68e0wzD
	 2d2mNXhSioJEYdGMVaKLu9zleX4kkFa1OiaWLsfZ7Hl9+XA6GpnSj8s3Dt7ADEeVoU
	 6TBT2iqJhZRUDHBy6zK3U9USLF5KBt61XsI+nCVKHCYmsWaf9J0usFKV9wbve2b6mu
	 aC3T9F2ZR8OJ6Gvmi1+71tmKxT3zaxq5DJBmeuy3HzxJAgxsVmyfxNfe0+MafdkRfT
	 tGpMRwcPjo0KJFOmnWB8FeNGjaGyFr9hv1zqXxQofXpWW3InJd+fX3O0FoyK3bUEc2
	 PkA4DPBU+SUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB827CC6B1A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191923369.25624.12679758121594761242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0713e55a9f50e8b670092c8e2f9f06845cc8e169dff136574dafff8293b17c87
Date: Tue, 13 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791919233
