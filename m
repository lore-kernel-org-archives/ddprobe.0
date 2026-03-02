Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6552C187
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772465094; cv=none; b=XHkkBux2R2JUXF06xb8g5KdXPFOQIbP6Rxq53q1NWFIzHaUNkxR01s95cUSvrT05NCUCDD4Avtj7lty2Op5HJphomuwTvQIpoYY6Vt3LIZIkgYS4Uxm4o2q5VnQ8K/gDnrszVjUGJB08p8gPKQMoCSG5Fc6L/EbESbLyMylIZvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772465094; c=relaxed/simple;
	bh=YFdc4uC0Ar4gnN84a1Pe87npL4vcbdfqY6n0OTErMIs=;
	h=To:Subject:From:Message-Id:Date; b=HzFWFKY60nX/WiD4tHSpNKnzBDXImNa9GcNJhvTaSlukeGpqy8sSClbn9hn7ss4jWdXywMu752PFKcwUekDZ+X65Eh95hSHa/6fKS/f6nos05wRGDWZhARDZjNfEjXifq07d1apgI7oCqpgIhkNrd1+yYkWhn4umn993pn8h86s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm3OzoWa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm3OzoWa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE748C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772465093;
	bh=YFdc4uC0Ar4gnN84a1Pe87npL4vcbdfqY6n0OTErMIs=;
	h=To:Subject:From:Date:From;
	b=Tm3OzoWa/83lQBX9dB6r+gFb5n7hOntBOAiIPoc8UHK4ZPEUpkNeUDiD4IefLr5gi
	 lvgr7HiDbZj5RGbxWpoVy1UHMzqJJZvgHtkdFNODc/DIVoK+hCd6H2UdsUslcSskvD
	 PU0vFs2GZIemvlmxSQfPd9i86b0+CyXlXtb8SYkDO8ghv4x0vRWuYYczhdvb5rmLKb
	 QDAov0Ew28ND7KKdWn++sEJ/ogiJ7tNmXiwaNTIuLljevIqs4gYg/IUukA6rb7D+iz
	 aN5jJ7snw2rVImoZf1G+FHvk/sqsujsHAsYk6vHvsxwAdOLBx0aYMZ3ZWxXu8J6H1D
	 zzDC+aRvBewUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B03EA4E22
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246509359.18348.6159081356493946352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7bf9951c854d6d3983d253bc5fce3828c90cf0b61b71410ac55d12cfa9d192d
Date: Mon, 02 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772465093
