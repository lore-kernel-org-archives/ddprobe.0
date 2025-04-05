Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C452E62A0
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743870594; cv=none; b=jQXfZUm2p+tfz41LqSIE9gCfTg9Tn8n/P2i1c/lml+1K5NC+yAXJ3DUOynY5r1VVoEMWFTYkCYknCLCImcnmQRhBhyebTp9PekhEQeMAFr2EYJRiztFsjdgGaT2Llu+mz8NG3h5j2DVetX/EFw7rPQwxF2/WEitv4ZbTgpfEqDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743870594; c=relaxed/simple;
	bh=hOfH2tjFSmZghqELZPlzg93mZGUjHcs3Dx2XFQI+XF0=;
	h=To:Subject:From:Message-Id:Date; b=eTKOHsOu0a4roHVnAfn6EfTDws58vDh3KvnsBWJBJwhQc/JGMwOBADmjewysLQGBzXF/omFENOw3OEC6pdsJDSHjsvljmf5xErSfc0ZTNyaj4uiChm3XE/fAckY9kJYlSQULKkfuBlbAMF+a8DPIrAcoWoeVyvgqe7RlDLLG5DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=limjbaTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="limjbaTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CADC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743870593;
	bh=hOfH2tjFSmZghqELZPlzg93mZGUjHcs3Dx2XFQI+XF0=;
	h=To:Subject:From:Date:From;
	b=limjbaTxDA+BlwL5hJtIheFFgF8FTtv2W6TSPOYj1TDtFiHawi6LzlO4rL6bxUbk0
	 e22AgY9OrJCkGJ+5b7S1z1uBTTVKY37Ra1zkfNnFeyl9M3pYhNhhfp75HQ/bmEY2SE
	 WDR3Ro8k/mvODrF78gxUyqXFPCGAJlvIkNeemQ/7X/sdDi98SovGBkplLjVJl6MZhM
	 npboerdaszZgUnl7ZwEzRs/rsKs2T9hnOLg99alySHkBPaaf34bzpzTbbdoW4xsMqz
	 bGN2xseiP7KGAPPEbKpNNNstHRiGTvoKae3Tq7mIXi7thz3dwO+iHeXBB24CkLApTu
	 nZIjDpK2oAugA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61BCC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387059363.25068.18420233591727814416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2760ea1abcd416664b861ebc3ee846680fd92e491147bbb396481bae681af843
Date: Sat, 05 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743870593
