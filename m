Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F308427A03
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789124434; cv=none; b=pJFLqb1ndwoNEz0dCAq5nHhe+VzukUYEfTQ+Szfl8DibndCB+nUdlaT73jHpdndoP1unFkS9NWLOPx3x6aJmfcF5WL2DNOY6+ZmA1eVK9JaoygQ0MBEOmUXAeoC1OBOt7H+DizH0SSoEeiSqvC3MRV9eTSo7pxE1jffsgAqi28E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789124434; c=relaxed/simple;
	bh=7x6X5HgCXljBCIJ+gob/57CfHAY2UgLCIcVCv5FaAbU=;
	h=To:Subject:From:Message-Id:Date; b=WQ42twSJJFp0ebSqUjfOMWztY4TkDSeHMnPMcbYSKBJIKSE6A1FlJPdZ/PyIeszxvN+ATzb2PHjOmd3f89eqMpI0GGT6iLwfmx+Hy7E4Mlensc2UGwkICvZVrJQhXutvaqIWxNTAMJ/l7nvuzj/DgbPQW4wD7yTL+Bn73D3hiCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYVgh7r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYVgh7r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC4AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789124433;
	bh=7x6X5HgCXljBCIJ+gob/57CfHAY2UgLCIcVCv5FaAbU=;
	h=To:Subject:From:Date:From;
	b=lYVgh7r/drMaA2ynS3PGllGisJBBy9uUb8mlkZm4jp2osjTzmQVjev+hGispF5otA
	 8yyplFx10cK0yLS5EPKEANJe2K3woUVTboPdyBaC3swrYt0+pYKoXmS+cN8BP+wjB3
	 AjzWhuR4hvu7aPU0cOcfUZ+ylgNbTeOm9Bv/N+2E/7qUfOmYvCCPVu3kJdmCLwz0yv
	 ORaA5tJlxL4KRJvErK4OLJYO9FX1Eupfpt32g3IkiyYOAlMAKsFLzXhvxPsdlUI6Im
	 vyfxVlTa3lKc1Cd16pMxY/fvpeWBPAEhWJg5JU6MFJA6T5/NtdchtK1KX6c7FJ/+1x
	 tQhgl1FdXGXYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EDAC88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178912443368.19998.12691588191179325603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3ea70dd5d13bd313229cdea3532e2fa0743d34506bddf7e3416bacdbc00c31
Date: Fri, 11 Sep 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789124433
