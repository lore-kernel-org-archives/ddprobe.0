Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4041F5EA
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766640834; cv=none; b=L1WgcsL+mg+WoqhF+yRkhWLfFDOh2EhlRM5yIPXBNKKOw7pSOL+Fg6RrBvk+L84PEmidaQEinNCHge1x1NLH0NfZ01kpbRCnQNIYj+sYliI04s6n0eluXFLFauG/10np2JM/CI/fFanBdn+S/kcYvcMi4c6/zv+ereXnse7BhZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766640834; c=relaxed/simple;
	bh=zJUqwxX7ffFvip613T0YwyFQ5E/Hr69G4ueNXt6CSMI=;
	h=To:Subject:From:Message-Id:Date; b=f/2RIGLIprgZkpmH059PpvINPfHLaxr7i8aKhrBc96PGa1Yi6eMXThUONJ6GApgUsNdP0tAI6fga2tubr4Hgzn8+skg0s46g8OxCGgargKsXtV612T0cxrA0Iva7inbknpARvQNe5qiW+adDGA0tfn6fY8GvgrcY00GmDAH330E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPh8SKuN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPh8SKuN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6827C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766640833;
	bh=zJUqwxX7ffFvip613T0YwyFQ5E/Hr69G4ueNXt6CSMI=;
	h=To:Subject:From:Date:From;
	b=GPh8SKuNZ4KxHfXl4wCIlLvoblf+M6ORXSqSZarFfVQ5XeMUdmJbjjU660s+TXAWG
	 VBdZYcAJEvHrtKCwqReyaqqKTjLjs8UxsSGP0ySXnXztCejieEjtIqZkseTvcydorG
	 CaU1rafv6RZzDLPDvgSV82gS4SkX6DYnq3wMLbQMtcejPBiM8IInkn9l6cVxGLDOnX
	 kMfL+P9OIXgG1ir0tuV8N4fAwr6Y5X/8XVTYZYe/JK+NQwIldC3nw1LiAGWGsApjHu
	 IiLVr7GI3W2olaG1W/V3IuUtDmAy/tz4kbnywK1hQ7FW4HQX7x0UBNgh/WABt1fxIu
	 IzZ9/uBHNjRGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919F5E7AD41
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664083357.24076.11140443723461068832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50ba18845a1eb387cbbc3f06d8ba61256220645ee6695109c89404faaed5d293
Date: Thu, 25 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766640833
