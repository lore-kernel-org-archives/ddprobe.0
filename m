Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C622C3257
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781061334; cv=none; b=kYwGLgV9CXhhfzcwM3Obkva9hkmAloXEvOgf1L2ibAwq68/d4JQhTEzWB4AcNGtWNKxwsyAdIlJoY7o+TeO3Jdp4gFJ1b851yVwTVcwu3d4HcqEXfJ44ADsYCk70Rb9511i7cu09p9rz6xdVbueJwDSC8Sf7hZRaobzXRTYWxEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781061334; c=relaxed/simple;
	bh=sIAXIua2pOZcbi5q+P3+JJe6OsNVnnNP3iCkTNLtiYw=;
	h=To:Subject:From:Message-Id:Date; b=LO7Ue1XgtGRYrUknzVni/rDDbc2PmtuSnuDBLF4iDsll/8A9u/LD3hWHcMc9NQDwMCqU3CGWA6yCZbtip3PU1uZFebUbiQ5ciNx7shNtKyEFrXVuNZI5Igi4t+lXd7Q4jnk0CHSWwx6KfnxLN7eX8lqPSTDLPN0hg3uPO8NfeCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLsm/Dhw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLsm/Dhw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC13C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781061333;
	bh=sIAXIua2pOZcbi5q+P3+JJe6OsNVnnNP3iCkTNLtiYw=;
	h=To:Subject:From:Date:From;
	b=ZLsm/DhwV8QC3gCFeI5lKeH4VRm8gavrcOKQGsuOcEVM8zrawEVYgu9eJ8qR3N6Ii
	 xvoYRi76F/y2d5e7hPqXNfrw58r0938/Ye9vjpwobhOLfFrKMVC95WnO4d+T+OTloI
	 fed1Qh/PwJaSJIcMaFr6kzH+50p5lI8qnyjueg0aUcgzKn5CFUdD1HpPpGqPwk57qi
	 V6UQxR9n7jfMCaOPFnR1lwghiKOdeyYgFL6raxt9pk6PkHfOI5IrU9SK243Na9eaMi
	 Mz4+LQ57cpA9yDEarBgTwW5F2uPZEASOP6aoZDUX9cayQLatpdmRwljhP2KGY8/O3+
	 Q2XM8cLQ/qgQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B489DCD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 03:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178106133372.28491.7589629474794010478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83ec9f92a6afcccb95693a3bc3d12fce0a2f8b14b3c5e24fe5ff3aa6f9de038
Date: Wed, 10 Jun 2026 03:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781061333
