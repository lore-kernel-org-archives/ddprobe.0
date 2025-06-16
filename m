Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2179F72626
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750046394; cv=none; b=J7JdvbfNdBHn86MaX7sgakA5IleCaHFsP4Bs04YiFYqHbaPfnaU99GwNRgBFSOhYDiXxRp2tDSjiyfFB82O08fHOgc4ZRBpe3fs41BVUIDZFOanD1yH6S7jB+4Pc9t9ENSzMNo0047vz89uz0aqLhCw6P5ipJ9tmCWt0scCpS3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750046394; c=relaxed/simple;
	bh=WroZZ8SqNhI4Hvc0nfgczqfoM10eLKk59sLORNUEFLg=;
	h=To:Subject:From:Message-Id:Date; b=FV8FkY8ck8CWF7GerTWipwUpQuXW521lxoFml3nkQm7sHmH9puA57tpUhj+zA1RGaFnIPhRaANb5ze/We8VvKZZfrdSadHE8EIjdpuyXzvWzrJEisoNuC7uR6xlsoIrBWn+BHDH6BONq3+qkamESoM7Z4lbC7IHzKObJ8046Se4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHJ9YslA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHJ9YslA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9776C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750046393;
	bh=WroZZ8SqNhI4Hvc0nfgczqfoM10eLKk59sLORNUEFLg=;
	h=To:Subject:From:Date:From;
	b=aHJ9YslAxVmm9iUhKu8opzJcN/wShJ3wKTYycOZcQ2TTDRzCYXK9V+VZ92XfDgfMO
	 NRl1bCZc48HYIt++sZ70yBSN4sGeEH8+7QNmzvO0bxgWJLa/PVkFLjTbwPSz/2itsP
	 HUHGfGOhReKx1Tjo94MDTwT2KnkTB47jPaHHMSaQeUfFWloNpd2l6ZCv0qNL9vbYT2
	 ZrLP8r18N+6ibxY93yqgZ0ZaRVpoXxk+FHFrFDfMNRqTB3Xr4lhNtkeFvDSvDIiO9n
	 74M9MeFa2Q0vcBcsPus1CDHvUAoR9g+9AyIlS4/voPLiaNd+UOW7mAcblohn88KAJS
	 /DaIoeE3zTYfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B12C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004639357.3408.1465035247050499572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6622fa4f343ce79e954c57bd343e56c3815e7181b4e0265e382b79903820aad4
Date: Mon, 16 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750046393
