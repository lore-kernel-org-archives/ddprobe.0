Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF2B58ACA
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712446097; cv=none; b=RO+Exz5KMTFbJFeGzwe69JCxR0lT9UtP1VAeCDoJHObQy78B+UTaFV/FdO1xiUz9XIJaMmSdIyv2s6hfxeC03iyUfIpfaNuZOrMO50UwZXx+bM+WtiRVIcYVKciLW9w9tFE7UCbuqQLwdTh48BRdPKbkrolWRDTC+JZmymAAcuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712446097; c=relaxed/simple;
	bh=n/jfFSBtTasVdbgnx8nuXDXuoUGmfEKgu5Bbr0Bn0xI=;
	h=To:Subject:From:Message-Id:Date; b=a1obTetJ6YmLY9MlUpEriuNnRA14IXZRe3UUs5eeNb4i0NN0pHU/ydaNpNbfA5+m2bbIRuN5TQu8N43jZQr6DkvsIFC2wN/pVGSnEYUz2a0IdiI5E1RUJ6Wcc2PyClVuFQ49FPpOMFnaNNyDbFCCrFywVpMMF+1sFEbhYag7I2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4sWC6aU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4sWC6aU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710F3C43390
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712446096;
	bh=n/jfFSBtTasVdbgnx8nuXDXuoUGmfEKgu5Bbr0Bn0xI=;
	h=To:Subject:From:Date:From;
	b=B4sWC6aUHgTQukHAFqhoyngEL0DO8hRz6eGHt8efhyrBGunmBHYIHijnFJ9rO1X8C
	 xzQAO9P+oJ8MLllSxfmrjVdE+QxvxeoP7eOfq08/fa0ojdw+AxlLP71B6HEAwz7DVL
	 yZfmCgW28GBU3Xk7HgbfyCYQCV8eeRtocd1TDgxCHSPtmN1gJNYf7fDdRBCRtehewM
	 MIKaxCiLwJOOJdkk4IyW3YKRyvB/09gM2X8aotIxnFRkc+erC684sp9wpHO9HKTLnD
	 rRRbrx9G4hk+jN3ok5XaYxyaKP7KwVj0WGl4ORgyRywWLVB9brxLG17jorpMpmbHKB
	 EgbbleVpp2ROw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F55DC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244609638.10113.17922742063006660391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d46a3fbc9976a11ca36555d6cd261ef1b9a3b231146ecbcbc5cf652f50d17fc2
Date: Sat, 06 Apr 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712446096
