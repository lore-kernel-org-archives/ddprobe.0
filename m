Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1883911AA
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783720714; cv=none; b=hULPMXlarf0uw8wDD4vKhcqyg8cOL6rSRpv+QnbX/UaWAM4/s0pPkaHjtkfAmUnWhU1TmqgytGe6i2ekhxwK1BsdQG7AuPC25zutKOQjS4RmrxnIEoO2jtWX5c9qlqqP8CqNVEJVnYmCbm66LslWo9znoB8SjfOe2KzYHNOwlTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783720714; c=relaxed/simple;
	bh=e/DEfjfp+IGFL6ZTbCB9XeG3VFUEQOzyT2PGpFySkHw=;
	h=To:Subject:From:Message-Id:Date; b=o2Wg3lhsCONSW3Tiy6IpPyOWgKxO4QqRST1xedXggdXGh15Rm5pQQcfDDTxsi6eRNrtDzd4GSFh7jt5GZA0hKr0QhIsRwc4MuFldqzQiQe5ygyntT/GkFZOdpaENahOy5bPFvHlRYyoJK/VQ6SK1LWoUb3alOqMrMYKsQrYhkZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdHoBpxJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdHoBpxJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA322C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783720713;
	bh=e/DEfjfp+IGFL6ZTbCB9XeG3VFUEQOzyT2PGpFySkHw=;
	h=To:Subject:From:Date:From;
	b=XdHoBpxJ7IvdCRrsLvhuVuMqyOz9faAAJVZDbNzydjqyyPiuyOj8xDmzglGEL8yXO
	 yEM/6JW0oz84Yo6aiHm6pv/GAoMuSYevFX08lc0+NBaZfCztj4rBA1ET+YZ2DsLoD+
	 KA8Sn5VgHhJxw9ohNSZ3OysyCfaizbdAZ0U61OXQoqzWf/E/jKN1niZvGn2EF2YB1u
	 ltAocXIPU/SlZosdQVRK+guj//2vPyVFN6yLCYhdrq5v+X1zCCPAVyfoY4zBwV3ff5
	 t4jJTU/ZheJjKQ82+CpYAzsGtK1X9q/tVGZC1BEbAKXM5ywqNsEAzbI4Sbow2Pf2Hy
	 MPVVUoMoQEV7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C54C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372071368.28195.3696462995074177778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08019b87adbe5881e3afc6bd805b1d0a939fa45af16367061ed64f4d54c1f80
Date: Fri, 10 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783720713
