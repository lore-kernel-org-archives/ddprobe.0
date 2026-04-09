Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8993DA5B2
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775744854; cv=none; b=FQtvCMr3MjlipEvkutqG03YPsZSgKaoT0bspC+NLoYQ3y9TQ43hyLSTajgg2FWAg2qoonGyqgLtNmeRdmA9vzqcpLUyN8oWLRR/fc2lXZEPy+oCGCa8GMJKZ6jmra+jg2pPMPehC83MDDrZfrHPo9HQM8BoQtkx52gwVhVvRHaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775744854; c=relaxed/simple;
	bh=g/3JKUoC1JhX+yhOGA5bD4b9fnzgVQ5/g23dh0sYiqc=;
	h=To:Subject:From:Message-Id:Date; b=C/QUFiqNAAQ7dmsgR3Tjn1nWcQSdtVyqd5dohX++F51L82lAyS5DNKkBUGYZa+h8T1Fns15uQX1Z4PfE+iTaTg5MgmF0OICHDEgyZcZp/TnhRABZT7IfP55XArzEdbZBccMxjQJQ2+k4EdkfU5+TWYa+anLGMTumtKKkV8g7eBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilt0auK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilt0auK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2392BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775744854;
	bh=g/3JKUoC1JhX+yhOGA5bD4b9fnzgVQ5/g23dh0sYiqc=;
	h=To:Subject:From:Date:From;
	b=ilt0auK8CdhdE31vBjm2WlZBWg9ymi950AaPGJzFkSGw8N7xtpHK5Z4CNZDANEhWR
	 I8G9TW0zQt+mZX3uDrnzN2G4CgqdqCQhH9rwmQLPS+jM+OZqKCNFzE3g+yJdwG0dlj
	 5NOvmEgcyI6gDZo323Wt8ZGirgGNO/Vew7bhIKgMUvwoU208l8UJB9zOunrDVl174h
	 YNcjkTynq9vJ5xnPv2VRK3GUnskYSBl52SoVKLrxnQjtl008l6ntdng/QJJMv6zPQg
	 Mwt6NLHJ8WNOR5kH9sBdQoVsZIKV/mbcUjmhpfOxOqGP8i/Y7vW1iF3i/4aehtLcJB
	 9tznswv2qSYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0565F31E21
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574485395.8958.7878321491962816311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59586ddf64de6fe05dd64ab1bfc07f5e4a827e98a1dadd70a71eafa374eb0f9
Date: Thu, 09 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775744853
