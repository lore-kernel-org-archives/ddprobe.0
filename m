Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3AB261B75
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760818794; cv=none; b=DPRRBQoOmMOE0WQpMsTFiUWnCKCNUXKWVPg81GqAv/xokeCwvBPBoriAHRW01PQZo4YtlWZwsbvuh437hBA4NheMZPcewo5LWasxfsTPLcbIIhhqFhce0NJb5oJI/TcRhZHaXFXnHbpwJK4UxDVEsQOAIyVtPTSm95oehJePI3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760818794; c=relaxed/simple;
	bh=ZM7rJS9yoI1S4wKRRHqmCr4WKeJajlWBQCW5bkTTKsg=;
	h=To:Subject:From:Message-Id:Date; b=p55d2QFgOxdFPTJz59v19qMq3MyKYjzNzZosl6sbALIV/RAjO0ojIFvtX0TdbiKQaq0uUeyYowGZKKbecgwsdzU7RAk2zON1DeToPp5Bx3e8wnQZClK9FYhJQJRdxCJvPNI3tKK3JnjvEg5ZbeLVBdtnw9f+5xvUVZ7kdJua9T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/yswjAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/yswjAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39E8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760818793;
	bh=ZM7rJS9yoI1S4wKRRHqmCr4WKeJajlWBQCW5bkTTKsg=;
	h=To:Subject:From:Date:From;
	b=l/yswjAx3rZrjkN3ZPzh/Ng0JrsDK6nwMOWlFFnLsuR7TnYf3WSdnjWs2NgustiHh
	 teLzBfnz24vMDHMcIpzE0FpddcNTY3q3EGtG6bu8jrxkIFKjZ9GT3wL/GvVTZHuppt
	 hWKMsAMfSA7q2t09pNIxMzsQIsO2PYRkmCG9ZWQRIgj/aqV3aOIQuXLr5LdJ0t12c7
	 p1ADJL2n6EkTrwJ3IggJVXjc92aKplaT48JsBuOEbEcZYAXcXNsbDTojhNNDIA8THc
	 AqYe9TZi4zV/M3o+lMxLt5xoSQJov0KeKEyrc4kuvQCyscRDJGrs3cDOH+6QfPzyZI
	 lVdsrlu529aNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D47CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176081879358.29875.7183627370966890077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 984766868736d6a414cc30c3504c852a3d4a721c34065a87e7ecc51b8b8b71bc
Date: Sat, 18 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760818793
