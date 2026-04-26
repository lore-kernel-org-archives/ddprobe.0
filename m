Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22001C8EB
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777196254; cv=none; b=QlWujQ9cs7aXz5Q0z6/YtjukeFiV217QALrec6iRvxsFtjrnK9/wgw+YuovyeTDPWc9S3CPupmscGMWqe+c6F5rX8vAWfwzsZhTkND1gP/FwZheHht5i4RU2r4fbz6fFwF97N2u//NpvNG14FDSN+VmYUcBvAKQQRxxLiWaQLhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777196254; c=relaxed/simple;
	bh=Cd6jP/5ntRs/G0+VvliqNx+y5np2Gp5FECeC4DFxmK4=;
	h=To:Subject:From:Message-Id:Date; b=V5zr2DhCeZ2rYIivbK1xFFX89doEw3YeW+oHz/JxGe9pIiRqgP4noLZ8FDc0QB6b5fNRyMm16fueP00x9MRGNrdqjTeiSfag9uH4Rh/Aq116QoFWUPYgbYwprUicjABhsg2rsWlc22uGIPAY2VWqPGYrvSukjle0divXl4LGfGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zba2Y5Uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zba2Y5Uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DE3C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777196253;
	bh=Cd6jP/5ntRs/G0+VvliqNx+y5np2Gp5FECeC4DFxmK4=;
	h=To:Subject:From:Date:From;
	b=Zba2Y5Uy3UL8DRqXZFGZEoZAAygIIAAF1zmwPC1kIhtr1EdJB6gj+8dO3PRXmEHxK
	 F3NHVG3XjQpVwFmdzmwmnvPaF32oLWh1YmwqGvH1dtQY+53beOLvb5iQXFvGJ2fVsB
	 KGe+YGogPsssv/2xtwGYjgw+N0VFo/Gx84+TTEL0VVYbPMnnbULfArux5Xvk+bUQ2U
	 a5foYObbYORAz7hsrTUZvbZkRJuM7Tyl4hFt4GRfoJgumo24iewtCBFy4R5jceD0k6
	 +KqV4eW6Gg4g3dT+Bg6SqLNGna7bwhr5efZXsFUVA0VT/itXp0DKRLTndrm2H8Sobe
	 3okAkahaSPXNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3EAFF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719625368.29568.5670785982008687188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da14d0e32b174bb45b9926994d0457bb9b66e8fb4dfcaa6ebae5eacd65ce39b
Date: Sun, 26 Apr 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777196253
