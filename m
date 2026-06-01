Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C00833F385
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780294474; cv=none; b=JN/3A6X3JnC9y3F2kIBIJkVQPy7MeMLaL6vgwho+GzBeyLLEAqDZIpQOD2RV0JoB4T5tIA4e41vKVn5N9YxCuV6nrQFNZ+DaI92Xqc/GbwP0GEv4k117sKznwh0har3xQQwLZCSXsuYHJo1Ic2J1+hn+eqSqtHgsNXz3CmGRjsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780294474; c=relaxed/simple;
	bh=hMf0NgjDbLLMKjfx8P4LVqPH0T6g16jdkKPzHc11FUU=;
	h=To:Subject:From:Message-Id:Date; b=FUNM3lWSzKU89rwALeXnUdOVwUDrhHXzxiMyJsI+xI5Qzp0VPl0hKmUwhHnz/rIFO9hGz0caNg7FqMc5hGb1812Y7MLsocIOwhEjL5PB/3kUi97zC3tCWGon0l55pvWynjBUngTwL5t1l9SVeOCSOMkg/EhmfyP9RL9MyMnk5F8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CsoTlH0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CsoTlH0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF4DFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780294473;
	bh=hMf0NgjDbLLMKjfx8P4LVqPH0T6g16jdkKPzHc11FUU=;
	h=To:Subject:From:Date:From;
	b=CsoTlH0nNw5sz7i4PmTLFKVwS4w6lAsIjHIwMhiOTNXrOv0FIrBd3lImyDPfaii4+
	 VhitmSyFMrCPdH1awa3hY92jiaatmmr9p+DI5BQwB7HFqqWU/YfSdlZ/TMbGgKmguZ
	 gWmzPIk4DYvINw5SzgDCEbqst2E5rR4DuBEcA6hyK8rvgtyR/y7/ILeFLqYCwqlrEu
	 te0Yhrqmkyl/7xdJNQdrdT/FF+/2/4fZoVTuAdn22le/uXRQBjLg3/qQM/0jvD9Ad4
	 pkPncHCsZBHMytpb9AnFKTAj2A1cN/90ocMA704CRc/+1VamielLImZ+bwcTQMbIDF
	 QLH4V/4m4A2HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE810CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029447370.24526.10024368641472927466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851d71e057e65765c6b81cde947e2f94755e5251e736decd99638d464afbb6c6
Date: Mon, 01 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780294473
