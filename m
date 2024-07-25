Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD4F132492
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721909754; cv=none; b=gL02vdMQ0MXVihqDXOiaXqEy50oMiluwqASBAezoWSOLliqI0p9mKUkZf7MWhKmyh5k8gE78ICZXgJ3VbXks6FQUsroYmkLCVr3RmAlvGC+Pqc4RK0PaLbCzzHIsOKY+Y+lwk087FO6DSUuYcsfeZd7v7A+O85ZrZQArOm+Mi2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721909754; c=relaxed/simple;
	bh=BR+ZbQ0b7HkiVfKQpYXebSN4S37uWoegDvQaUBF5hB4=;
	h=To:Subject:From:Message-Id:Date; b=s7vUhF6Pr88zZ1OGpzYBYvY15rfgk4uQDgS91plu/qBoA/HFT1urpxg197/kUaAkdq4K4D8L1chY16f+RrBvkJMWxERB1V4pyLUHIwVonWr4cg+VlGOPfRrh3qOufM6PCiqyJ5ec2VoCDWHBfVXYIyKNyTkA4KpC3SaPzqp0g/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ja/9OfmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ja/9OfmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBEC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721909753;
	bh=BR+ZbQ0b7HkiVfKQpYXebSN4S37uWoegDvQaUBF5hB4=;
	h=To:Subject:From:Date:From;
	b=Ja/9OfmR4RPEw1Xaf+b/1RFPsgmbUayv4UnaCq9LFkvvmvbP1bDVp6LoXdby5yHpp
	 wf9RohTgbynEY1h1twbGpQFFqCCoGtBeVlCYiLQ2zLc6RjiXiLMZZoYc2c36AHD65D
	 wpwRsMJMGUVHvN9QOaYf03FdrE4jRFJ5jcIURI/x3d5kGLBoCIyaiZaSRivjM3qnJM
	 6UdGT1FmgTFLKuiXgV3ZsYpGPwYtHlrfCmBWkltnnDgAfkbwpBPq8lDF7IHkSRSGDz
	 3sOge+k4y5DI26U6wdzGZ82E2ehGcH1TGXL8vi0znW+6A1uee353LLqIB8TZ2508wg
	 zWgBgC8ewyWnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E8C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172190975360.26690.5443364322663499777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c56cdf64c057eb4c9e1ea1a40ad99dd4bf76157cd864e865f9bc00daf20cc9
Date: Thu, 25 Jul 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721909753
