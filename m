Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C93317A2EB
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752528594; cv=none; b=Uij/p9cAWtejIHmmC4VCeclCLau9c0kZbX1Cniia+doKSVeCED6jlY2dRJBc8LeJT/UmoFuObXOUeS0vnUIZGhXyDcAtOYSrv4yRAkGoK1Ii2a2YQ38tFpQvgKO0pRiMYjxB32CNQzTiKsnYYccqI7If9EX7aVHk5OCKwhHTbVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752528594; c=relaxed/simple;
	bh=+KGVI3MDBSgeSTIH7A6Y5RdLtYClA8qhr8nm/IhJGY0=;
	h=To:Subject:From:Message-Id:Date; b=KpEsR/XDlidi9gxdzSYJR9s58apij2St+bTcUfkSjW1PiuuV6cxYAZDMgVX9zm5FKuOGtk69wLyliSbzCcX+qgsZktI/d6l/jkvqPVxAu9lXgc9am3BskWgSZB9lR4MQigDL9v/MIn7pdHv19rRdqlFyb6+B1DurUyf8qguS/Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIPTHq07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIPTHq07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C43C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752528593;
	bh=+KGVI3MDBSgeSTIH7A6Y5RdLtYClA8qhr8nm/IhJGY0=;
	h=To:Subject:From:Date:From;
	b=tIPTHq07a4x+ZGO6rHHuUYMO/ykag5vC76i6Yov9KVzpClweIggKKN3mUUR0RpK2x
	 H+j+0T0XIXWWIy2ckuafDmHO9awYOUv24qEblHjRijCwXnbz0b6VUFWbysjCnQny1D
	 3LjWrMUkVVSWADGv6Kvn020tctZtGC6mZXDpZyW68b0+JqoQ0f5rhzzcrJb0Y0Lwb8
	 xlr/FlVlh7gDiAJxWAonGAGy3FizgHzTCbQEzazoJyXGUJF9ZUbq14mvEUvJxaqaiq
	 /fRQTpjKRhC2kudsR+FR4sXlyXPYTJPDkXF+QijCEuDEyZxOngsrh2QiqHf/Ce3MPD
	 arL0yrhWPP/RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC62C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175252859358.29531.1241056885494864593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c18e1bbfc69e136c2f4214cb323d619b5a0fe76ee43fc3c4bc1d66cfaf4c630
Date: Mon, 14 Jul 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752528593
