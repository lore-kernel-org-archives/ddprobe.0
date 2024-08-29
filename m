Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8C2158A3C
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724931354; cv=none; b=evZGT6KLnd5VEbksewgH7LJW8gkIwJhg4n4ZR4406ONm+ENn2iaG2fctl+5UyDEGLm50fsZFcMPZXaSSobiEN/0QtGwUpsF/+NMCiexWafLtORLiO4oJAcrtgWZRf8Afvf0v1dPzBjXEwEfZpf10Oxs8oECV4Dazvsdi+TbgCS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724931354; c=relaxed/simple;
	bh=GRKMw61zgCT1ZgfmaheQ4qLMXfR1ZbOR6TWWY7esWM4=;
	h=To:Subject:From:Message-Id:Date; b=BCDVcOKaWnMfEVpuSPugtm+T6GF08Qj1z7r1gGsoxLKelvzv6v7VasMKDUQNIXcBzmQ64OVpNdvyWKTuFi6tKSpn28qc+oNQ0jqapXRrsg1wnXzs63TPOgZowvmRFxeYunleuxZKGZ8r/vaIG53+NwvHXN62Ih6ge88K0CCIaHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtVwlgxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtVwlgxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66D1C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724931353;
	bh=GRKMw61zgCT1ZgfmaheQ4qLMXfR1ZbOR6TWWY7esWM4=;
	h=To:Subject:From:Date:From;
	b=CtVwlgxOdTOhR9iydnQ44WvbdccFQV/wBPMl+T5+oLbRB9anL+8LCRZvkJwQp1Dsf
	 8zjbrZlbE59LwuA0rQClOKSiBos7SIvcAMSGNPhaCl6auyDHSmAfloRzqQoN1yd48K
	 CFViemCqxTC8fnUXx1WU5nlA/CH+IFyF++BA5u3/7eTXM93dCh0LG9sD/Wl1WMXZOY
	 Eln8CJz1Rt4NDH/Pob20jIwMJAb0dwdrk7NQV0VziiWDVMi//G3Vwa/3nGRvWNaGn3
	 RWgew1qwC6WNgEEGSzTgScOdN1VoyqfFBJUW/362su2a/zkT0a0hAcf/SN+Bdqg1rA
	 VTphcTMH7kGeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E45DC83F07
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172493135363.22205.1890956844888046943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 871ddff02b7fe26acdd6ea3071114ba1fc1ded95cf395b9b0e4d21257c9b8f3b
Date: Thu, 29 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724931353
