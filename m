Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372813E63B9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778149054; cv=none; b=f4kf3jT3ir2K3Ax5AaI2HlMwPqEOJIVhZQGMsbiqR39YkfTSj855NJcr9B4KPt1QKC25FyiHP5OWg5REW8eJc0tViRswSrhPwxax2ywTc8ewbCd+nsvUIsksSHs0QsLBZf8+n1MVPLyAaVP9FG00tJ80IKN11ltDykZL3EXmCI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778149054; c=relaxed/simple;
	bh=51U4bM1+rAoG42bm4Fx3Enn75HnhsmhGanEMjx/7YIA=;
	h=To:Subject:From:Message-Id:Date; b=KogyHIIRERchRfPCVzIvmX6yJBVCpb7wSlvPPchWqfNNAAHlti001oa8NjdEJLVNs5dZGRCvq3aPDg9Etja6JIHVYvp8ilogu3C9d7gcohAU7X17JxVndunALcqhyCK+WAz5+v3NiZEg30jflX7HNlUdUVctwB+VP8ih3O3r93U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vG+M2mmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vG+M2mmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EFDC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778149053;
	bh=51U4bM1+rAoG42bm4Fx3Enn75HnhsmhGanEMjx/7YIA=;
	h=To:Subject:From:Date:From;
	b=vG+M2mmT2Y/bM49mf3nzYq6h3xHHRHhYjN9elxbTztN/AZOlL6yNrkP1nLW1SDkhY
	 OJ87V7mwrdY9XIbqpmCaWjIntTEMI9zrN+QBpk4v3HH1XR7yX04uMSst++pomBcdkx
	 hAidBqsjI0zuPj0ERxQ3PuzlZCNMmkia2UZIfRBIpNtNVOwIH38tAx9WggaUb6MaqG
	 Iw86WpRnWZvuvBmlpSVTZ9rMjIQMjehKuEBeXXgrAtPcKJj0YZE/G65XTU20BDFQRB
	 LtnxecQ4RxHsaOerRaHiUy8zN2bhzpsoRvsSIVbB5MAFY/c4J802JnJUtq2QNM+/Mm
	 H5N/d4NWxeFlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E1BCD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814905371.7746.3449628290713424081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f20e6e2cd12034c57e7c8dde2a0a6c4504e16a8bfe3e54e85f3cc969b11c33d
Date: Thu, 07 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778149053
