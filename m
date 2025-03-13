Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC46D261374
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741855134; cv=none; b=m2pTZ1TgApe2LUS6AyquruWiqy+/mvScdWekTLLuiuixvRiXgJbjp5LNZ8fR2YeU63Gziym+XCwUzt356/k6xqRba5lpEo/4wHOemwyNw8TGf0rN2ztSqxD40h9XvhIL4Vfl3Jir+/cPofoBQAFeYgVtRmOc6PWqsyL6kQ4ycac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741855134; c=relaxed/simple;
	bh=x7q1z+xWaFRjHKBIO00OCnuHldUoq3CR/Y+Fw4zMtfA=;
	h=To:Subject:From:Message-Id:Date; b=sM8Sc2T23lhzxP0f4EEzHSWtu+f0gb9siSEYOrhIpV11bRkkJY3tiDMAHH1dCKN9U1Y9ubKE4SxjB6MsbX2kFDD7CYj+kpHsc7EYDjDEq8R+fCYuJWaK8wUObImIyW6AITx/9ItkeB483Orwc3drnkF0s6XeJF87pFxQ5wZmzyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rse7o6KC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rse7o6KC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A4C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741855133;
	bh=x7q1z+xWaFRjHKBIO00OCnuHldUoq3CR/Y+Fw4zMtfA=;
	h=To:Subject:From:Date:From;
	b=Rse7o6KCYJ7ksY4wh/1TVg2II+APjeUJfg/2VDPt2Rwpbi2RlVcofYkUx51IBeQuD
	 5QobxityDB3rp/TL1Ix06eMgXVyyk8yNZDJdilmpilI7vSEbyakFiagJ5oa95xIs/w
	 +RT3FlTCaIduwpbWi74GSA4MxDsMgsQCwQmLzbeqKE8DvtrtRuTvx4uM4gKSvIB7bQ
	 BMuBVGk4jDVpWNdD1N23/HTbhp1rTv/Gf0a9sK4ZVqUG4TScswKo6cdMR3jr9grOuU
	 JsCu5grBh4BnDHaODeejDKDiozJdPojjzNLiFHx/FFP77Vi+iQuTyx/A6d7Wmh14DE
	 gaZDSuiy2aupw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E2C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 08:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185513362.12836.17702283882033934829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd022325fd8e74484134ea1b7411f627b71891627a0cdeed9ed704d29c73948
Date: Thu, 13 Mar 2025 08:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741855133
