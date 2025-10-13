Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161D81946AA
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760349594; cv=none; b=tuARtf/zNaIlOWnrxYtsXk9SAm+FOADXZwu/rS7u39ebkFrg2z1yiglBVMuN63mBP1Gs29mk5e+aMNfA63ZFizb7b0WAhLxIpY9kW8F9g5985BMrGwGm3tE6KS+pOyWlkRU0sKPNFZGdcYYzu1TjLK6Vml9FhHloiYoe1ffiSo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760349594; c=relaxed/simple;
	bh=7lhlrkyVt6bIq10xofWQ1hldYRjf+Xif5czV7mMJr00=;
	h=To:Subject:From:Message-Id:Date; b=BSCgFRKm7WbPqX4Q+mf2LQ5ckTt2QYcnZTFCs5OeSPxzWeL8Ona5K0haS25B6Oar30ug0iaqHMtLSAmkJQeVBIkrFj0DAHuTdlGVbUMKDCcpkJ9zbYf51rdhLBBR5L59CtKoP3iwC0A+Tagxc7Yg0KiuYOo1Dr3+H8lfgXxhjXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElP509ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElP509ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C50C4CEF8
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760349593;
	bh=7lhlrkyVt6bIq10xofWQ1hldYRjf+Xif5czV7mMJr00=;
	h=To:Subject:From:Date:From;
	b=ElP509ZU7Ji7A2IfxJzr7hU7be04iGLXuVF1xTS4uy05zSKl0uEHmOZJio2+b8Bme
	 n8PI+CyWD1uoP13wNQzcd4iCETnuEOgclJF0lwsneR0sWSqJZGgTLgXRJzVQiwqEi3
	 IXkBpf3FnbxaBbwLVJyCaqyzRW01Lb/AMhLLB8nWVrzegFOK7gYUwyrNOqqY8e4swm
	 A1RYakQ3wbPOgOaBsoVCMeHxQLekbhR6hOmg7dq3YnuJDBfTpd4Cxo5zusvHOFeYPP
	 CeD7sTRJuEFSPaZ2RCectsxx+mud+VYDONMCwSGlMp9QdfXcwyoCF49P3nbnNPfyvw
	 MVPouaFvUx7bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C92CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034959358.14192.10265817199086779133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea48c91049ccf7e2fe0defac33072e6f8ccca3baebd180b4f5579ac267ef93ea
Date: Mon, 13 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760349593
