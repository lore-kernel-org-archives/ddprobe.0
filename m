Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2472920ADD6
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764813774; cv=none; b=jneFVdOBiPg2pWcEYW4jP6EeiA88anAPiDXYD479gbRWojcMWLo1iGvnsf/34MizuQTINg+K8rfUI1SQ+X0qjoF9BB5KgAJI5x3vbd/uY2xycuDhRC4Gr2WhTiMz/X3FsP51aJruRWshUPV9Nq5/VbY7rqcIv2xwlUOUpuXk+Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764813774; c=relaxed/simple;
	bh=bKPjXLxSgqea1jYPMGBUjTbgFtsjZC4w8jOTiq+sj/w=;
	h=To:Subject:From:Message-Id:Date; b=NpDfYJn+L6tZvOrhAktkqIDHKzDzbGDabllCQE998J9KuwwtaPJ+01+sqknfQRxNaIkhV9U40BBXI/eShM/v6sGXI8//ceQO6uLZJ0abfqkPyt7XX1Pg/oA+1ElKK1bT1+Qu08dOarJJvZa5J5rnWISamAUZHCV89GZHuG9piGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHo3g7U9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHo3g7U9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340EC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764813773;
	bh=bKPjXLxSgqea1jYPMGBUjTbgFtsjZC4w8jOTiq+sj/w=;
	h=To:Subject:From:Date:From;
	b=VHo3g7U9/lqvmhHcpDvebDKqxDNNqDuKIO+3vfBG21uM50tO6jpjYc8aBqSsTiwid
	 jXDjaj3hXmPci+34bkhu95Ema6omErfVebpfeTEvMu9dLcRq/RWTKl7O97c4RIgeWn
	 6M49+TpjkYkX37pvxrqi+jeAEOsdlNuthp7tLJNSL9zTc8D8J0kmI8rHuU+3JqrRxn
	 +aYBlYdms3X2rlIOmWo12F1tpaj18TY74CP2XOrHhVtRrgVswZTWuPGWvG7WWNytd9
	 mlRbrlohkUjQu8IHR4fAT19rnPXqhtc48IVSaz6J5ksk3yK6fgUcLCEt3NkiEcWHxH
	 mPgtI4LPS24lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90592D1CDBE
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481377358.8598.2105221160766400595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd00b2c70389caf151caa20ef3a9998cc0b070dce6684ffb424b74a4a35b7879
Date: Thu, 04 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764813773
