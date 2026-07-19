Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAAB419DF4F
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784425114; cv=none; b=DfrkcH1zcY4GkqQO8Gq2iqhNXRmYF80FQAnt/NE4xJ0TiR/dALSy4e0nD8Qir2+RxPXlbnMYOqdf7FBj0OypNtRi/M32RAgFsm6RbhLRhnFKp4pFB5VCX9E1szPlqjg5zyGBGhq5do6BGezSLWEiw0m2qPT79VtwKNvVQD+kNGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784425114; c=relaxed/simple;
	bh=5UI+dTOc0kEjHiSDcUeBA8cm7aUCUqtrTDUTj5Gp/eE=;
	h=To:Subject:From:Message-Id:Date; b=F1269sDVPlDFojj4j3TIp0fcTWB6cRHY/VBZVcafACdrXgvpMVWGYPsIJf0qFJKZ4yLfp3nIM4vePPaEv/VuYXOflMjWfhQOmiwyW6fSlU78XAgv6ogZES1SPG7ZApqtcoMIqTJ+cLWwiP7dAr2vPEDJXkq2Zs2c1d4BvIJnAc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpZOOpeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpZOOpeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3AED8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784425114;
	bh=5UI+dTOc0kEjHiSDcUeBA8cm7aUCUqtrTDUTj5Gp/eE=;
	h=To:Subject:From:Date:From;
	b=KpZOOpeNWtTB0rtl4CkvfUyi73og+Gv7gtswsaTTk9id+b5uHtv0RhkljEx/MK9r8
	 kpoAE+IIJ5+oLbHUBXK/X9DWptfSURxT08c8hS9iRQah8HRkNR9qpFTiug2kgk+MZw
	 x0+cTS1jIoom/phowgrPQazAd7Y0IKHiRDIbUL9h5/MJfe3Z7L2pnuGaWuV72wu521
	 EZ+vRgKLZautLzXq23UhyE/hg/TElQX/MC8fhCthgN+QpFfaOes9xznD2I9oSirnU1
	 EdjOAYPsdDvN2OngIV71JzIiatgyIAkDJwxx+f981jqtd6aY7PWMWdtG2L8EnXXeic
	 vmiJCaY42hWYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09BE0C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 01:38:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442511389.6357.277312878736506819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f4c979f7a634f998601b32296faa8db2afe8367bc15f71f0e345249df6f9a9
Date: Sun, 19 Jul 2026 01:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784425113
