Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BFE3CA49D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791322834; cv=none; b=uelMCiWetpAoj9QEWLuh1r/5fFZo3duqxwbf/FKHLmHnZxS609kOPnD63FuflU7B37rWhEvBPVeFqqy9nUfjT5XS1d5grnouLCWqDTQXmv0eEpVGItKG9VERxUeGamjGKKH7Puvkv6YoHTXG5DzV1dM+Gm3g6/cekUCEKivA/sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791322834; c=relaxed/simple;
	bh=AYabw2VKI3rJRWRycw4DDoL/FoWC/EFxwVr4itX7Yfo=;
	h=To:Subject:From:Message-Id:Date; b=A5jopavGKV8uhAcGLWcPBoQ5nV9BbqHQtY1fVAGVstOduX+/v8+VWRBRzwNytGTesVTP1SGtOjHjF1ecvWYilXzhyky8T+LYWdKXjwXkwq4AIrm6bbtruFkTP3H+/SL71qgJnMy0yvGBnsxgAs0+hOJlrrc+TxTv+3/SGzBVqbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXRV5qdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXRV5qdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0835C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791322833;
	bh=AYabw2VKI3rJRWRycw4DDoL/FoWC/EFxwVr4itX7Yfo=;
	h=To:Subject:From:Date:From;
	b=PXRV5qdOsZNLMizeOBPau8TWAyJlCOxTX1sn4z6f5BjlKnEUPuLDBG6iSP8Va0IyB
	 u+wcaPap7nis4xG2MAhUYupTXs8ZotQWpScJXFRlRqUTL5rhENK+Fqqa/PfpopOFC9
	 ucJ1qyMxTOKieaMml8tyoCdDcHEapTeAZdh5QghHtoGRTSIUypiALcTk2CfOMg365t
	 UemImAaDUEg08O6WFIIla1xyHAnH2ksdPc2NFKwZJtoQaLNuDAuRqbtuHXtZ6kNZCN
	 onEdYnNivMBM8ItXjE+nVqq5j/0q2f1Q9UYE/oCOAFjflBAX3qo9KDU4U1mMsj3jHm
	 Pfv6+WKK4f4cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB55ACA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179132283369.1900.17559173970036207029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9453838e1f4cde26c6381989e496832f54b02f8a0ff6308bb5689f6fc0fc59
Date: Tue, 06 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791322833
