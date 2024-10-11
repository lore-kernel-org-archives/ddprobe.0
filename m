Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A6F2E403
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728657954; cv=none; b=mR0ZUnQ/CBy6yR1Q8tmMPJP0geeQYMHCpuv56PgRbHyqdH0ijCZzhD3BWZWazwQUP21ReZto5OgS5uSU4Mng0S8p13mPC+pFTsDUbZ/KMvoAEferR9/Vq4eRBkq9AymojxIQ/CaznSbUYKmx6ozGf3Jmrmvl7N5vb3bL028rpmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728657954; c=relaxed/simple;
	bh=DtYKBh2f0rCHPI2G+EotJx/zXV4RrBUbS3w8eC4caRs=;
	h=To:Subject:From:Message-Id:Date; b=HHJmForxfcZ8MI32ZxD9nVXrcUizZE20ptWago3ALDiuIfTALXvFtGaqKGgGp/Nwbs5rUccr0Tf6kRRKrEXuaPZWuKcCVN+BFZk9Eks78B9ggshz6PkNiXjmlFknIr1dQlH6h9Sv8q+JfHDn650XCXeu3mvR44OIknCycDfj3bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6nsZRAX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6nsZRAX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4655C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728657953;
	bh=DtYKBh2f0rCHPI2G+EotJx/zXV4RrBUbS3w8eC4caRs=;
	h=To:Subject:From:Date:From;
	b=U6nsZRAXYZWnzRzi9oWAzumQUQaYkf6PQZY6ZN2hiYrMuEpRkSDP5iZDW8vuhnXXX
	 ENacEpv9b3RxGNjQFFpovuqC4rkOTO45c83vldcN7rBjK4GyNajJTFcbDzkrL9N5/M
	 lY5jEcefnCKBuy4zIe+LqoRGZtVpZUN0Ot1cNoBylREFM3L6C/fsoTKEJJhvoer/4d
	 HfP0uia4yzznGiwud/NS/dAbmpZ5ThKwtiGmgxSer++wU/8UFRT+Kwxwz20WLKQBY4
	 gx4ceca6RwtllDH1wq6+U2YxDDkzxNuIhnyygNs5BSnCRSsIebT2XMZ285X2rh8d15
	 Di+BMAm1H3SlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D8D0D79F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172865795359.27835.1468557662589064707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92afce21e60684c90ddce33eafff6e1071a47c9e7ed7fc2d07bb068cf86abac
Date: Fri, 11 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728657953
