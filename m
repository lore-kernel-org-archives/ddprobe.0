Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E82407576
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777542454; cv=none; b=Lyc/0zGxDOFLfNiOk4YcIYxqBx01q48jpbPqgcH1+Uld+rx1NipghZNvooEj+d1lv6ACd61AaUOk+5JeOOr9Xdm7kz4+uIsPJ7o/bVj6ZL8E8DtMMldfsV6qlyvphVLsvIzWkCdikFlUIz227lTaOcdteC8/c3YPJgPAq5RCEoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777542454; c=relaxed/simple;
	bh=glxyqNYbrH27yXqjmmy/FPgbQi8boZbobyUSI+VRquE=;
	h=To:Subject:From:Message-Id:Date; b=nlY9QEqFOdkepGkq1ExnRYZD/V/q2ka0ojmDXN0RPWNpYYtSR8Z6lXxj6C8dY7qtH/SJr/tL5034QooLbhzxnV7iBthvKcPnvIo2Cw2I4hKv19FpK1SxcFHDBrI5vx5Q7S4S2aEF8UIXD71HTtPhL6x1HeEBOWOM6sr4Pv4O9+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGxbB3r8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGxbB3r8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0A59C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777542453;
	bh=glxyqNYbrH27yXqjmmy/FPgbQi8boZbobyUSI+VRquE=;
	h=To:Subject:From:Date:From;
	b=UGxbB3r8ojJmeTHI7J7MulG3ztjYZ9PjdIGhwjXa9fWW9q2a2+0PBm3f71t0TTwqG
	 KrbVW4ps7+zgNLQ2HoP7GUVmVVK49bglkEQeevW0IbmFffLr8AzR0KewC4BUNJ8Q7v
	 3KkVPg4r4jiQDKh20PYJpWtaa2++AtinjWF7iSQojKRVMazXTECnxocxxcQ56wL7Sm
	 Z79IpX2ze+0meTvP5JhK6CTDYB8Y0qw8wNwvFbTXIAaUQjNVlfr+AX7zAl0FQ68Rih
	 zygm13b0wFkLQSfypssDja0JhrHd+cDm0cKy23MHNEbJrNg7zWx1jD9ngZq70TXY8T
	 jiZvJqgl66qpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC60FFF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754245369.26886.12298376037278076752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefd560520a065223d52d0c929ce825729e10abcdd0634d660fc53f066b43d2b
Date: Thu, 30 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777542453
