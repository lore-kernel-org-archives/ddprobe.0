Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA992F5B
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763532115; cv=none; b=mBZxIRkhYN7lA+rKJ9RLaUXF+4Lj6Ek9Kp6Q432QP66nGiLRlMUEgbQQIlj/bPGhkJBJBaZMs7Yh9pbHj957U3rLRkK9LZG+/VdRpil/zYdvR3FKyvbq2zksfG6v1hQE0aev36mC0Mp1dOfCBg76K3QysC/AGhr5P4P7n/blQlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763532115; c=relaxed/simple;
	bh=XMS431M0yCT690d40NnVdwdn+V9L2omcDbcWE+UmFAk=;
	h=To:Subject:From:Message-Id:Date; b=W20LrfPb8Zm2g70wAzTyZhSIjfI0hJB0YOGxT+6jft3Euz5odePKztoVoJxF3N+ZfHXieaCe/eRujJcKccwz5xfXe2eX3dTZZIfmSCRPYop1g6amM6QLnwuFjiZl/JRQ4k75KtzuoFP+loQs8pdi/HcCwrM90E4tdwjQygvFkUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8I1YWyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8I1YWyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AA0C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763532113;
	bh=XMS431M0yCT690d40NnVdwdn+V9L2omcDbcWE+UmFAk=;
	h=To:Subject:From:Date:From;
	b=U8I1YWyQVd5DLRDY1nw3gxIzdA87YU1QuiPFYRpZUNvaRRug4PBMOLBDS3ZOwAf2Q
	 9x6ODpBV/j1GX6kw8bhdfUuKQIpmI/JRGkLc8V5JqtyrXZ1mtPguMPGGNkg9M4w/X9
	 OUUx325IpqgPSwdEFI1YD6/bBJyiXEobF+X4TVOYFZACyuWnyF5eYLdw9ow1z7A/yU
	 vg36BK/NCyfqQBdmJQYV7j0z70fw9759w5v7NUo8gg74c0XOAYKCNhSAQyi3lMfvaa
	 VZxnHljULTCyAHfrCnIBwm9DrhMITPzHSZYweOiVsVg3XmWgVlW3u3bdVfbfjYjFyf
	 60QqLRaTVstjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90665CF258C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353211358.16951.8636205298709375693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8fba1c936aaca2b2be371aea32963910a1b8b857753dc12cfad2b5fd579f54
Date: Wed, 19 Nov 2025 06:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763532113
