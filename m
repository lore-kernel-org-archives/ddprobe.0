Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C71328B4B
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785066634; cv=none; b=RdfkapB9StNzmki10LuStF3/+YHDyWtvyZhxNB6xNchAf2Jm2ORnbBRBB7+9i9JHSL8enrGiANFlijYzPhmvZeflRcLwTmxl06Tgr99pqM2YibbCRmh590HCBh8yza3yBjD1OZm5hRfPL+8frY901C0znNAwnlC84OmUDNmD3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785066634; c=relaxed/simple;
	bh=81NHPsXSYXqjJ8rjPH+jAivI8bxrZjN5fwKMN7JEBmk=;
	h=To:Subject:From:Message-Id:Date; b=IWzLgJp8KCUOtCT6ztz32hF5ybG9wXbKFphZFumnJ+pHSrFoEYzvnZSxuZoEAB46Phul96Ez2gr8KKd09RDB4ieimJoQ6CcDZNWt/V+UA+qXKclsBumJmfXX7oGso0AhDpz3ZXHVyP3se/RDVilnts1trZpSRbJzw5XKdllFsQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYZEsJdE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYZEsJdE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA40C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785066633;
	bh=81NHPsXSYXqjJ8rjPH+jAivI8bxrZjN5fwKMN7JEBmk=;
	h=To:Subject:From:Date:From;
	b=hYZEsJdENI/nuUscuKhY1KGZXRiTfvb02AWPDKx27xHLiOsbO2u15ddk733UGnmEa
	 WpfrbUT1hu476XXvi+fEk2s1tv/CPz89CWMODBrCm2HG1UpJ3FRX+BbS7BuNfrFLfD
	 WTkfOUz0gCrHMAIzDcYMUwy4U6tf1t8C8h6TEdlGZnjRW84lBcTMggzHqAZn3tpni1
	 iDTK01UuI+eY6mIToTrUdS15VJQcNwk4kbexUM+0hRHpWEoEwam9LIOUJgr998KgeT
	 kkddlYAN1xsdv7Lyz4OcoSh9QZc2gWzpB10kdLppjdZ/TC88ZGVm0KuyIM6c0Y+zEr
	 S3viKWDfXvCuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2C1C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178506663368.9201.1484234890684112610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11bcb03b32526d270ffb95f5d7eb936b959a51e44adbe0f1ef85df4cf6659de3
Date: Sun, 26 Jul 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785066633
