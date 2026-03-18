Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100C33E3D9D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773858894; cv=none; b=hNYFauwooY67u1m/jcE4POEqIkvRN/4gTkV4CMmPRxBqWi3ofiok9wDP+PUTKH7V1f0JUQgjZ2xWmawoS3gPX3UG7XoUfP8jbNh7am4pkzWgKLJGRNMiBGmcRTJgXVFkLWLsakRwYuij77/m0HANEPVKnIRAUb7L1F7Wb6GxA+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773858894; c=relaxed/simple;
	bh=2pwz00kTAqc0ebO01NQy/WCcjpFiUG93Mc/PTOnBgag=;
	h=To:Subject:From:Message-Id:Date; b=iHar/uBsPCQivBKya67Om2LwXxSt/A1DXDFiY2dNEzoZgi2X5NnLFtxVrUcyJehTzN6vvRsWXS1kQnaGa+IqXsfDrj6MSSfu9G4AJraHfiik93qSJgrUQWNp2Ib3YUBEjtMsdYkOlZPkQH+tolCBhPZf2j1LblvPE8UEKfwg/d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKRV/k0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKRV/k0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1FC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773858893;
	bh=2pwz00kTAqc0ebO01NQy/WCcjpFiUG93Mc/PTOnBgag=;
	h=To:Subject:From:Date:From;
	b=lKRV/k0rmgnYvYpviM1Pe+LTrF80Ziywrcf93G5RntgAVBIKWl76dAUU90gGHjono
	 pUqVwTmpBYN83tDgIsLDj07uS1c4SbCy65/ax722Asn2osnFvOgFfioDo7Yzj4Z/qj
	 WOFYroeaXihdBem/3r7gLSbVROefnxnxn2mkX6yEnoeBastYcFTziXLt+EdSi8hrKL
	 GCcWa8hOfgwq5mVjecWe+iLUdvgTj2leDCykY7w9NCrBDh6AF+KHJtZ7qodiRoutpT
	 2oQzSoAB5eQFjUvWiQW3i3Z29L2/4zknC9m6I5S9fBGfAcWV4asp2+hKrHbtS+7G9F
	 U2f8PGbPToPXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972EA1077603
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385889360.13525.17225796905630569304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abce617134a07c3705e55e1bf676d55fdba0337781bbfbfae4fad7119990fe0a
Date: Wed, 18 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773858893
