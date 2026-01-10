Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EAD2AEE1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768027434; cv=none; b=uz0dXqw0K+XF0pbUFjVUgGbrfloUCzAkycLyfMu1IenfqB+evkVvhZY6RS1d/agGuuj62ueEcTzPicwFFS5qx9H0FlaRBhXxYmvBhq+XjJs3OiFlU/ryRTvbhVxwE1vEd3wro2Stsa1mN6vZylauLlPaEBCiHMsjY9QrOYvmdKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768027434; c=relaxed/simple;
	bh=Eb6+HKR7BNamfxv4RJTOJrMKyToWQxZYXEIj0oOqbfc=;
	h=To:Subject:From:Message-Id:Date; b=PwBP68BC76NDRkFZ1qo/P1H8RG4pUnDL79bNQJVGrlhMVOFx7pg4gk7mRkd9aepv2zUGUQlfFlxdC/AN+lVyO19GUEeVI8UyGjl2OGoWEjoCLai5pnSGACoVr5Y08hInar7OqYpKkwO2ck6erNDUAYEYKSbUrBgpiZyb3XNoknU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcR8EtGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcR8EtGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60A7C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768027433;
	bh=Eb6+HKR7BNamfxv4RJTOJrMKyToWQxZYXEIj0oOqbfc=;
	h=To:Subject:From:Date:From;
	b=rcR8EtGjqVTbbBj+Rf9PvDmSq+lFfqH+RATeyrcCAaDQLWhs0dqz8m8KgtJxnCOXc
	 EOj1kcVjFVmH55VXjJ8CHvLWB4CkDuU8U6QwLG3MuzwhOlHIrMJMPBOg2QFo8BOJzb
	 gRuKsW33J1mecey37fEefRPDGUu0blc/S3GKh3YIcj6s9PEVswrEwMtNms6zOzdPlc
	 GfNZNgOphZkmTUHYlffjsbcZ+yjhRNdlMkVFu1h6XuUUeOQtSTNyStsgA4ua2YfO54
	 Kk0GYbh9mMc3scYL3hGDZrcE8LDVVgUTYzsRPUYxr/JdUUDe4o415k5lBA9J5FTBFJ
	 8eqiEE/a8qNgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B0D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802743358.3868.3956636372039855133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 820ccb76b1e5780d519fcfd5db7ac6065cfb9ef82d044929537a43efc9278262
Date: Sat, 10 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768027433
