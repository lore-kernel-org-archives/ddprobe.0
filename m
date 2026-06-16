Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3391B2D12EC
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781606194; cv=none; b=ieY2fdxkMzGExb338RDugsg0qqiEkDT+RWUzAko3pNcPXf/WI4fsDVOXpoh/zI4UkKG5wpPR+m0diodgzRwtjonRl2z6r6ZrMTs3mw4ay2AzlVmOTAEt8LD2IGkftbvHxo1XQC0vRmq3GFMq1gux5aIKPB98QM+2Fm8i13N/A8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781606194; c=relaxed/simple;
	bh=V8lZIJMC0guFe7OXKbLcPS+iGcUsZNO/bUmwUIw4eZs=;
	h=To:Subject:From:Message-Id:Date; b=SHkRsei7iLudgXQ1+qzbmPhwgbCtedXffTs+15p8eYrlClfiNacvqUftiveHNcakJOfAQWml3EKUL/7yXx8SbDU+N5M88HxXn6ZfhQ11URGTFbPXYPSSW4U21KACyYhcb0xR8uK+9wMKpV6HCrN191REnsgeLyys9lSJYoQ8F+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eI1kASsN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eI1kASsN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D342BC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781606193;
	bh=V8lZIJMC0guFe7OXKbLcPS+iGcUsZNO/bUmwUIw4eZs=;
	h=To:Subject:From:Date:From;
	b=eI1kASsNdB1cUhGFnYuikXdece0FiVuRv5QKPYuHEXvqC3/IET+ZdMClwa3yZ7fjn
	 G6Oix9F+9iDTsUvPnWKttdw9djdYHX8fRnNFycgCOe5H/ca4g3vYGoMlhtxKe1XfWK
	 DSCP/WLNKAkgwEmUfTao6f2j2zCQ4eVpsyuMNAYyM9FOsjgrcFiL+WCYMPx/2qKQko
	 Ups2EAPSMXIbRqKLPHfg0EzBL5JUz7TAtfYAdRNPPenYBIv7jiDrY5eTJMjK91oEKM
	 PY6ORJUivZJF2lnXWudP666YSxbRIsh7v6hW81JoOdaXvUCvIG5zSmuLUrGZuTttwK
	 uLnGmtkVa5DtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A83CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178160619372.14715.13165406675504057899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc3e4219bcfb630c4b38065f836428509fb59990ddc7278b98436a9710c4db66
Date: Tue, 16 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781606193
