Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE66296BA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761038394; cv=none; b=athqxwDnCVe6R4SEh/KbpIzO49w3uUWMqbhMMqN4qZnSibGAtzXRYJmy3mk3929uH0VS4Xt6m7n+X+4mm81ZKbU0i6tDXnVd+BwT1nj3mP6Jaj0EUwoBnOBVEKaJcaVEGbCB4UDsnOsET6iM1uPE1NxWNSpn52HvmIv+MnAfU0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761038394; c=relaxed/simple;
	bh=rBX+w4ltMZ1Gla4ckPegZI59w9BeA8luNaveWtk75tU=;
	h=To:Subject:From:Message-Id:Date; b=sIkqxPDQd56YI6g1nJAvCjVRo5v3X9OqxKNbOQ6ZsOtNEsRj7Wzyuw9X05gjfcK6jPmCG+yZjrER/3JuK1z1CnTMbBdACo29+bSZ54MCtXn0VpuqGhNKDLb3qw/nCxyShNc3772h3oVww2BiOGCLbN2KuEi9D4Zy30OLfy+G8qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz0o7GKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz0o7GKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0815C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761038393;
	bh=rBX+w4ltMZ1Gla4ckPegZI59w9BeA8luNaveWtk75tU=;
	h=To:Subject:From:Date:From;
	b=Uz0o7GKBP1OnDuWzfwWUPcQg2lAZFZK3YMaTvU7UhkfK7J+FFho4zdlfvuY7ZJj/f
	 qy6fgo3syFKakEf6pbEtwAD9EaWSCaE7D4ZEqBXQulvShu/pJ9OEDayFEXD7bSvcjN
	 6GX2A79t3Fexlem9PqUUtOAaROc7Z99oNz3HGnQg/adrFl3VJjepWPjxGRms94gtfw
	 G56dW4zJ1UmHsyqd5mMHzav/1fS38lsXtF725YW7/ieYQc9+WPyDsP4NK16TJ7ohhX
	 7b2Bt7avOibiTYdokeVFO2/GwUtkCTa0y6TPu271RLz0ECCvtyJJj84m+B+hYCmvf4
	 1P60/zZ6H7srQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90180CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176103839358.13558.6753276821824303984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c16f77f927891c0ecf742eac9ff04a33ca675c3a5421f72ddb4b628969390a0
Date: Tue, 21 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761038393
