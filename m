Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331D823BD14
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753130394; cv=none; b=OPqSucPovhKT8KAj7XBKOcADMzM3y5oPg++Wtbh88Vp7Jvz0KFYCuJdgaGYN6Dni9A7jogWKSeW9bHVDXCnrPqaLOm7j9NYyiHmiRQVidWFkkBABuUSPOFoA98A7GLggULSzApOjwloIUdNY2H1vUJUeUNtEjcBQtLCHfu0ihFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753130394; c=relaxed/simple;
	bh=XOULCBWl8O00aB6QD+vtmtR10bxTan0g4XwJbUF8eBE=;
	h=To:Subject:From:Message-Id:Date; b=JN3ETLlIswPlx7upkaGvg5myJXnKiuZFaJz0h4dmngBhlrYOkO/XT/O8z93THnEd2THdyZuxAk5lkMevWdKzNAYeusgnZgqVrEuly5ipddKoExOQMICheNpjs+VOAVrqJ14PrnKBZpW5ttPROWjOuvDBHr5qAmAjba36gnN67qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRV+YKXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRV+YKXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753130393;
	bh=XOULCBWl8O00aB6QD+vtmtR10bxTan0g4XwJbUF8eBE=;
	h=To:Subject:From:Date:From;
	b=rRV+YKXM2uTSultcpYS74+dA7x9VmiMi2hMg8yj93EJwrKFuRoyxnTXSwTpYbgrEg
	 dTf/CtUMPceDq6qyVcPy2xJFU1yp3CIZyrcKcMh0LTvtUFyq1DFqWoE2mx1u8x6fqV
	 wD/pYYylyOCm2Axk4oEzrfJait87fkukSRxXwaRTlxwwwEWsyc5p/a05gqYrStfbmk
	 k1Q1/Cwi5zu97/CMab7jLc80xuSDWNBwbCkx9Jh+wDFAaVGUtyIOELrggyTlsRRjzg
	 5+nnVcasNzUuPHtN/zG5vJtFi9PVtiFbsz2QcSXoctZW52bQV5/HRdOWH9OEM5nwi2
	 n73N+BERRrKfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DCB0C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313039357.23555.2514348366451892234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 777dbb53dcdb4126d58ad3383d796f8c284fcfdd7188e590fab6fdea61cfa616
Date: Mon, 21 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753130393
