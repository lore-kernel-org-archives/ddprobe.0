Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B3D2D8372
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761593994; cv=none; b=Zz5DD7qCorV4f8s5nDQeoeP7patTZ7/NTjcZzQWdTnQxGgSbQd8PjbDLr3f4dPi1lcE9fCOKMST6pHduaMedTI9ybZaOlWyFUeHkCb2iAUk6v15iH3bfr/PtCAgnlAp04qTRHB45DE/mjLBF2vfeTu83JBx2Md8M+5HpjnRL2J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761593994; c=relaxed/simple;
	bh=OQWGtZo0MtXNdKcTBxXNUR0u/CRTBwey+hqiBQJBKDI=;
	h=To:Subject:From:Message-Id:Date; b=Cyj4ZmZqORMedJssa52NXlKYVIGf21pwg5TjKMnXlS1mAghvgCRmrOrdHx/nbgmk/TJ0cXFme3GlkJikhN5fi9kOzME3/KupfiCHhFbjMCG+9cb+hCxt40LE2bUb0PGeMIGJlkIjVR9KphhMrurMPkEj8bGiyq5L2j+UYSBnVv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHEkv2Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHEkv2Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7DC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761593993;
	bh=OQWGtZo0MtXNdKcTBxXNUR0u/CRTBwey+hqiBQJBKDI=;
	h=To:Subject:From:Date:From;
	b=IHEkv2EsirALszYimORMw61KSXHqK8QmXghj4LBqgDTQqqRGhVtfs5i6Jaq1FkcBM
	 65YbLzhMNZz4ozxo1Pfm8GP1sfe1/fe82QGtq4jNs29FvA4cSCZedD50C2Zv9+HD3k
	 4QTQUqy57ukUYuu0z+3jSD914rdh/G9yNmD6CXloZlwEusKUHm7TU9dZKKqQiCGnqi
	 BGnoe0bHc+DFzdqV2wWQsuC/2WqgHz/BGBqreO6cwmGZyRApEVN/WlsP1HKWLhSfp2
	 4LxQrRiak5EXT2LMwhtLbQsgvsCfBKxy7cinuZrdrNwFBepWz0oXF82+CoRKT+j5Bc
	 aVta6dDdUzqig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C05CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159399358.23996.320075574598011734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561a2822dfdbf2ebd26676cd24becf6a62d7e732d4f7874ced2e1ee819bb6717
Date: Mon, 27 Oct 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761593993
