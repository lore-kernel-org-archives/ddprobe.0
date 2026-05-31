Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF2023EAA0
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780199074; cv=none; b=Eo/cOL5SS88LIroK+xggM01FFMNjiBmiwNd2KI/IxtWInexei2C9vixXJpykgbsD+EHN09SILUiNpAmbC9aJd7e46HRMd4Hy5jKD4lDgoS/lnwVWQDLG4SXrByBukjaW1bhJerSRvB3vDjExhq12G1IsRIhxFPdS98OkkqGgad4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780199074; c=relaxed/simple;
	bh=LReqsxWRp6b3tM3snbPoNQcL97Gsue9BJGfVvlA3GAE=;
	h=To:Subject:From:Message-Id:Date; b=MVCctIGrLyAlxTZF5Pz0/O5aKutpNMRO/szIkWsctyNgU8IAbDiXtD+2/YECJ6p0ZAw8xhaRpyc40ZoL5u2X0iWwEW5swJm7fFnJfFTez/IDT1G2Ikj4rwyEalzrQJDbNW/ehJ0GuvVuoLk7osdSAde7vD7V2tVV+HUPj4Va8bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFnPExlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFnPExlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA16C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780199073;
	bh=LReqsxWRp6b3tM3snbPoNQcL97Gsue9BJGfVvlA3GAE=;
	h=To:Subject:From:Date:From;
	b=XFnPExlPyydJddu+U+pq7i+t8qZV3vvIXZzUUx32iC94AmYAl8xW8y0o3ul67w5uK
	 9q28F8H59wxNromVE9NJJ7j3Pq7Op3mMsEMQHYYisZyIuyufsF3gu+dgto4nDYa1gT
	 9khlayoyQPLJoMMY3qFf28QW9gq6pAWV8wSnr5gCBmeckauL2EXjunc0gsZpwEL0/a
	 W0zyXl3PCG45SjmX+17j7iL74wTXGbuifgaODuCyDaRpZsUulshz1a0sRFZk39b6nk
	 Pe1cGEB3EFKvM0+VAucoY0KG8cgTBj2teI6S6suR4l18wPWLvG4heSFASg00CAd8O8
	 /2mMqAcUoqh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E3CCD5BD1
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 03:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178019907369.15468.9845779199592728829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2d21f5f0037e98b871b82a3624b5a07f4b58a261659900d3b2fe2bd99ef4fa
Date: Sun, 31 May 2026 03:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780199073
