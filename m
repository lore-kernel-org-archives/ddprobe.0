Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A36F210F5A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749127194; cv=none; b=tB10dPrHEj0cisslVI7EokNstk4eushaJNXO0MxmuGkHnuHalEONrqwrZbyvC9syEqTF6fY5mVNBtVFvKDJpndyhdzdufwVJ/4TyIj4Nq+BKPfh7Ir52jXvf35ciU5efiQ7j4n3qs6YZNUy+zZ7BTKRdAluNckNHSa+Hx7ANgjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749127194; c=relaxed/simple;
	bh=W38mI/Tya72+YXvL2Cs3LO2kQmmgHrPYzX3gyBvr3hg=;
	h=To:Subject:From:Message-Id:Date; b=dk17RP/WF+m3aNoEFqcFny8npfPWrjjFH6mrCXelwqcH3L4M5JlKAXYVDRADtuUUWQoWFAtIqDgbM0WFQEOiLnpjSyrnJU3c+D7Kvva6cw3jD4dYZW72Cz+0aiL2w7nD54Gwz3C0sgt4PfRjjHeRkboDlWNr+5ROjIUzjW/9UxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaiEJe5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaiEJe5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749127193;
	bh=W38mI/Tya72+YXvL2Cs3LO2kQmmgHrPYzX3gyBvr3hg=;
	h=To:Subject:From:Date:From;
	b=NaiEJe5u+DVgA+cRXC/lRQSJKYujMvr08v88/EwPDBjWwiCnmggMIRNaZS43KF6sm
	 mo0/6dIrs1ZQ6ZTJPJtzoRQy673QR+nImLWhWVZwpBRCG2/CMK0enBc3YNDNB4UDDT
	 L3dFnF2luKmkWz78Q4DV4mrmp44YbDwtg2Bcml5PSS37brpB/mx73zteLle79dZ37y
	 DoZwaM2ASobbUTg2xZbh90m9kSBUPnjtR1kr10v5He/gYRaoGJfiiOtSOPvxSiI31A
	 VicYCo/68QwlnEKdPT1/At8I1Q2FUCIZ+BEZKrnwTxMe7mODZD6eHbPLorVK19YFQL
	 PE/hWH+5LBPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB84C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912719358.10676.5287751381456716362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d7e7ec1bfa6881370574acc8cd8cd1b651d4d4eeb211400bb2238bb59c27bf
Date: Thu, 05 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749127193
