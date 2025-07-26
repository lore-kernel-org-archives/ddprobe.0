Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E921114
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753489794; cv=none; b=OMPGucsiwn+TSAZS4KQr45u6AOm+LrJyu5xhRiQV1WIdnqY7Z9Opjdy8JdO9qCX3RDHQbSRtnAylLtZXdwjtvE3ro0V/1oAL7iSU/YbIx0cJVSCcz1k0bEJQqK8DbH8+tK4BkKWjddsl38ospWsJ6yo0cXlWNGpKvjok7yF67QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753489794; c=relaxed/simple;
	bh=PYlkH8j95G0RAgJ1oFRsPTq9Dl7YZBPNEPCDSyfhL5o=;
	h=To:Subject:From:Message-Id:Date; b=ABVR7gf7KQ8g8Eheu4NB6hIj/jve5rQfNgcicT0lBXzOv1MHiKXzM/AdJnn8wfK7Eh0Buf+UrW91luy5npIA22Gkgr1252GFbO/Dz/6jZb+bct9uV3icrbgoclp+iyxLdIrbs+UPkxjD8/d8jslDsSmoapet1MKwpTuhKWopog0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSq468Ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSq468Ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3334C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753489793;
	bh=PYlkH8j95G0RAgJ1oFRsPTq9Dl7YZBPNEPCDSyfhL5o=;
	h=To:Subject:From:Date:From;
	b=CSq468EjHAYlMDakbHtCfScdcIg1HEIrgxuF+gFIPvqRYhPmQqoZbfPlBoVsX68l9
	 X722I+PJrZ85FlW8cmPCGWDodzhAMy7GaxNEt0Aj2osIHC6EvzQXr32ufTfnDc6Tl9
	 kT8eu6c5FEe6yDX+pNYsgMv3abxx7AjwdWGBapr2nwzuTBB+QuOZtQKsgNquJA+P+4
	 tDDAaS3+ZDfGIGhAv0lfPU3Zxt/hC8rtdSLSCB0DBgtQK5taoH2gx54zfjZcMMxXsZ
	 hPLstUpVlKT1RGVM9TYiz1KUvirKR2Fw9bUINYEnnG1cFUpP8RLYb+roz9No174WB+
	 PXoIxgat0trgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF95C87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348979358.6083.14174288189824605192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f156deacc2e50651cd27e353ebfc426f1156b339b9e0f07690ebf2acd5f343b
Date: Sat, 26 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753489793
