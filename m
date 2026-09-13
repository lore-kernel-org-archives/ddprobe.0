Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57CE14BEE57
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789263034; cv=none; b=QMqHu/ZwTlmXv6T6J9FEuOlh6afsqyl4y6+fioGkHso7RERw9v260EfQsOkrhLDqaXeeaccVa0O7HeEla1i84hAoA3QrvDPVP0hdIjXorkjkO1ZEb17/FhlJVeRb+Nhzj5MCmG2of+jTO/AvNCFXXqbSkKuFyiEEAW4fnN06LLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789263034; c=relaxed/simple;
	bh=hDPVgornI/H9+8hwZNPodaC2VxyI8J98QTZavzehrCk=;
	h=To:Subject:From:Message-Id:Date; b=MLzpjDGm1+Nn2hsKGa5kVPSA/TZ6JxJS1NrtLMrwqmwmTxSt76zxsj6PEIHzeP2kQ2/x3NQG4+b2KB8oC1fybHGHAPAo1Qd28nMYqXXGAxKIMZVeRdJ6YaskUOZkZDFEHOJ96WrvklBat6l0JHBOHeUDc1e8araCbJ7CdgETHzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXFI4VYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXFI4VYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB6DC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789263033;
	bh=hDPVgornI/H9+8hwZNPodaC2VxyI8J98QTZavzehrCk=;
	h=To:Subject:From:Date:From;
	b=DXFI4VYkw+S7L4JeCT/hsUjyFpNR+FFYeQWiSfQElR//1HPfR4/OAfW8Z+5BlImGR
	 QIVuj1Q2LKvYSK9G8Z072XkoXp8iCCyN0kIZ7Ltzv+/pGhis5l8GCauzc9AuCJrYwX
	 zYzwxpiBZTjKl0vuJKRT9yS7oBz3oD+M5t5cvdz3nTi6KUkPrfoNPG00QHKm6AXaEg
	 oglOqgk+o8YYd+4sNz8x9gLCSDlSFV/zVptkIdTlqQ/R9bZxbgETGaGNO2xD4D3Nt/
	 cK+adlrB0bBpxheNLbuZcbiJ6tZeRtZaDkAOj237SJ+922xpzx+yj05R7bx/W3tl0P
	 JDkaS3Uknr7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB68CC88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926303369.26743.10955959597472815646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0307bb407ad8b78b5ea08abd2aa1867f3ddb581439e398e07ccd25e9bf926e0
Date: Sun, 13 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789263033
