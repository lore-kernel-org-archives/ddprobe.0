Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1DDAD24
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761026394; cv=none; b=c+dmLNXCnzXOiALFiAm0e1jSITi3U/RMcXvuSypkfDKFL/1WOWaQ9Fb51t4vDR1FArOCQR/2HwsvWmnOoSPd1xOirO7vZF48+1OlphWnTo5kkgRNbjYRuVk+USgTaOUaU4VMT0+7BeqJ6CPm/+4neGlRoLV2oLvcMOBfDQXs1AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761026394; c=relaxed/simple;
	bh=O4fVyPnAoLN5XFlwyW4TCVJOZSarrm0ihabNdyekbBU=;
	h=To:Subject:From:Message-Id:Date; b=UueMyjfGVOlJ6afcNTMCUOM20rDYD0m/o0hWl23mWs9tj7V9rZO8t2EgQU3/sLTBD7py3+h5RuhphENlu60f/m/ISTNCrIRVltIJcNk2uuPXSLSmTV5S/QU1tgqPEwTvwp0eL0kAZpR3YJyA3T55d+D0rKPku0AMVsohuaqPPhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atyr2Tec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atyr2Tec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D77C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761026393;
	bh=O4fVyPnAoLN5XFlwyW4TCVJOZSarrm0ihabNdyekbBU=;
	h=To:Subject:From:Date:From;
	b=atyr2TecMjIL+YBfg6dTNnorh04f04BWP0u2NdhoSysXPjJQdjLOeH2R62Hhv5+29
	 zgUPjTC5lfKWQW4P2h/AIv4Ki2D6iEax6aE/vNAnrAU/tuPM5rB33oqez99gwlvGoy
	 8shtl1oG/nMNWdE92+0ggNaio6Ggnhaz1eaY08UimZnGGy3c8Di6mKfeHcNfi9Egtj
	 VwF8GJYkbmjYlU7ZWC/ceB5sJPuqUZi/Oh2R4cz3W3mzf4tFh/d8CYYpe9ZYeMKjfl
	 U1IewlVaE+7FK5BfTDFVPaPo4iPaNpwT7KT7/Al4RbluwEkG0VrN2ByyVGm0RgVFUW
	 QL4FbJC56Q9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E7CCCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102639359.26856.1427241953968554631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26427b54c638e564fd10356d9507244a343bb5a09ebcdf69f3302772d1909f82
Date: Tue, 21 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761026393
