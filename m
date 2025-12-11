Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A23E1A724C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765416774; cv=none; b=hrPJYB45lgo28IhEYvv0ys4fqNtKgnFtswrO7ZXypr5wRzj2N8WeYnUQ+TmxlodYgo8WfpcA0FlTSGlhP0MKZm3ISQn+9R/9g6+vWTjz6MG4fEOL5h0p9rRbHspbkPzi7YHW7VB5XlufpeuFTGpHL1FqBE0FX/mvNGOTdtAR/CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765416774; c=relaxed/simple;
	bh=PpGWTjoWWjVZlRZt292zbZpVjH/Acaf687Ry+tc5eIU=;
	h=To:Subject:From:Message-Id:Date; b=mvOzINTcc0WiaNNw51g9FowTmNM23XndIQ02eJ8tvLuygIYmrplW/49oHJncFS0XlBai70yjQyIQ3zNEP6J6JA2hl/SCZRWYxnwRGN+mn1GS6y82fOyHvRd5gPxlHMWiE+wQfa9Afda6DVhzvQVgoTApPT+3gtBEeo2a7JL4Bqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZV6iSMFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZV6iSMFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F44C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765416773;
	bh=PpGWTjoWWjVZlRZt292zbZpVjH/Acaf687Ry+tc5eIU=;
	h=To:Subject:From:Date:From;
	b=ZV6iSMFj1JDA6I1oT3jT2WeLGU2c9SBNkOPN0MIAgLff9JOnlZMZOhRTnP8ayxdLP
	 MCjcFJuhelK1mQpkvD9addGVLD7DeRft/wr7Ibu+6KevJgEjKWGnvDdeO54tFhAOAf
	 HZGrosa9zmrpRpBFZjuJkZk1hjzKfnfKTL4iBddafKGhF7Py0EZ+Q0P3DOOMcxRJi0
	 UK9Xn2rSqeySCsryaKOYN7NJ0hjUzMtfXpuHnSUfx0MIdEbUavPBPVpPWch2zqqACA
	 myBZboRuH8praf/PhxjuCeSAc/6n1/9SNWLNMdqym+UhyymEoD2Z/VLmmIYFyEAlDX
	 4Nk5wfYPiIJEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9544FD3E784
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541677358.25678.16933841247692402940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0701dc7d0227bce9e6cd70401886069f6677eeca529570523a02f845db6a4e4d
Date: Thu, 11 Dec 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765416773
