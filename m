Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F02E30D401
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788211234; cv=none; b=i86RiOJvAxxpHN/vc+MDNzpztxKlLBWXG/QwfNibSoqxqGi2LbBGDL9MOBcbNndyb0ispcMaQuHpJiTYvtDkWZLxsq59bFcSBLWrNH/NXNRw2P8LcnLO0S27aAybjVBBQEu9DNMO/jdh24FEzy9PM/4/ZPlfdoGk489mzPr0pPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788211234; c=relaxed/simple;
	bh=gIrwmNfvdGN1ccst+ncGRCNiHru0V8ihy5UrfN2qXCo=;
	h=To:Subject:From:Message-Id:Date; b=Qb8TtbtWpx+r/NDnqMoF1lf7nnTD9663/jwovR2tLFEOqdpiQ3NP4QkRX73D7mWq/UMWkWtB79/7kQVfTWZlbM4M+Gd+4tMOpLqXABI926t0oUYvqCcAO+eOkYJN/Z8lYnKofBrRI543lRxdur3uzNtVI90tzd1clAK+fQZMLEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEOuC8Tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEOuC8Tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3681C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788211233;
	bh=gIrwmNfvdGN1ccst+ncGRCNiHru0V8ihy5UrfN2qXCo=;
	h=To:Subject:From:Date:From;
	b=ZEOuC8Tk9FOrNl/4xs/GAcrTJropU+DVD7K+h4gn0/507UT4Opc3+iEd7L0pWFLv0
	 bBunR1eSx1kE86EZ1BhNuf3ICogTtVDFFbzHCDwHCdFCpGfCSIoHqkJy1/50fr/QZA
	 YTP/jG7rI5TCfFnZvXXIy78otJaAEIG/MmEcu3e4PWGM/ZyPZ5RExPI6TvdbIru38L
	 aokYOdQb3CukVk/64mVwKekdEH3JsydvHBnmfZ33cAq5mTWYB8c7LLemt2q9rX/i3Q
	 K5aDNZpCKp6mYIPPq4K0jBJu8zfDsKX5owB/vW/f+OOkeayeAP9ZFMPYTjlUsTYkev
	 sqlRuZ94A3ofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0579C61DFD
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821123369.3171.5967456701203605980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 386f51f99b9ea34c53137a9a5fcbfdf4b1c46a76d56f57561a955041de7349ab
Date: Mon, 31 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788211233
