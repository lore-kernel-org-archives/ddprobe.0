Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5A285CAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783696114; cv=none; b=D06CMuJmWMEaOWdoZamueaUfOuxd8iW2VKiQNsezMvJnPoT3azJfgu38vmNCCAL3eKA9NG4HNuQMHkU9RrG1p6AVap57Eiocw0Y4vz2CTDYdf7Je0DgjBlERBDCa/fivDc9iyxm4GYrLvMTLO3/U5XGlrPDAg16sU0hWTT34kAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783696114; c=relaxed/simple;
	bh=3vEqoTSvPOYY+7PWCruMgJEVmUY+ClmZtDobfqImUW4=;
	h=To:Subject:From:Message-Id:Date; b=lFNZ/buozmVmPcQEPtQz83w2m/cIQVPiBLr3JqGVGZRAW7NxcpjqcZvRlk1Spl0p6TIz0EmO0Nz1j8xgNOgXiGI8pnrPmmz+mOUinU8hWSErsqhU1GtHV8lKSYPAaE8gI4nbKBzj7BOmsNPyWqNDr8Z7f1yiqwGsToLUIyD4YX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOO1o0Ic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOO1o0Ic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA33CC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783696113;
	bh=3vEqoTSvPOYY+7PWCruMgJEVmUY+ClmZtDobfqImUW4=;
	h=To:Subject:From:Date:From;
	b=dOO1o0IcQmBtM0fV+elNkPxiGhLPx0dpy/kkqIjY5qtgwYaJ4mwgZU8KwNElcPy8E
	 bitPc92LmADhAlKWWu43hW0F0XIf5BJZOFDKBrvhQOflE4XeU1zII2rv/CGQWyOvG+
	 /4wCw5ykkY2lcq30f4UbOw7K5bkDFQ5MExWmsX1lq3v0zwO9C2rtcobbIqUPgAXJaq
	 DuxgPshAqZslgNS02yDm6iWBuvcKEGKA6mfg43LDOyQJWHAx3hEggaLXgA060jJVjR
	 btGX2Njsihjo9ySKDAwsPNjQ3phG69ZCdpk6yTGFYjVtgGp8dR0NlP8fo7xxaLAYyR
	 O+/OmPY/rAehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9695C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369611368.16232.7428666965048963698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132fe36dabc9f194a2c473930f58a4283b8a93c169f9fafe2e06374daf93533b
Date: Fri, 10 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783696113
