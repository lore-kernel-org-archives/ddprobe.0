Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD781A265E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750508394; cv=none; b=oVgTkjeSZp8E2cQ1ihyJEwoG560hklerOfZuS8nRdp+w74QMdNVtRoxEQjNOga/C1nrt/w1usBgRsw4IhW5fLh58B+2xr3VDIlKmECbriw2ootmCGLnZtZR102TqaQLLmoBdZ+hldTbKOk7SR2+ype8sQGEnb27Sj+/JWgumgIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750508394; c=relaxed/simple;
	bh=996jienHiwpmz5hTIEnR8nFUD4KHsCXtOlV9M0vvvJI=;
	h=To:Subject:From:Message-Id:Date; b=n+6frGjfjjtYDGP024SjlVjAGhRD2DpB7EpgcZztrCUh2S0oehS2+r8EaZu9Gl6zf32qg67hOCeKQCH2YVcqLWIxjIfV3+alOOyduM+6Hz73MwTIarz0P6qq3eelb0WEJd5uNcFRtkZmXGg/IBeMPiYhdWFMo+GBx8/3LXalHeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuk5/z40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuk5/z40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DA8C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750508393;
	bh=996jienHiwpmz5hTIEnR8nFUD4KHsCXtOlV9M0vvvJI=;
	h=To:Subject:From:Date:From;
	b=uuk5/z40MOKEXsufn9CBBMCRCKr/t1g2BTNHN1BL9e4DCNqaecXrId8FJee2pSL5e
	 g9mLeQ4rtkV+UMvedxw8njck63JpyZtAuM2cFEPPz8wSqz+rrGxdaPtKaFGOTKlCJ1
	 qOC5QxwNpTz+MajjC52938fzMUGQofwPkyMlRree6L2rf+Kcj5PDA40c0zNAw3PIFb
	 fLdyPDE8oi3rHeUj1QNMV2oS1U44kvOoADjMSL7PFI6jfGti1sPokGRL5qkyU76i7z
	 C7MmM4rOZKgN0mxlfDxGnRKiPXjbRzAfTDSDRrMGGL/o/1N9EdNbO19WfHQH41zgc4
	 Pipwo3/etM/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F2C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050839357.21917.14914306760179921913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fe0bfdcf7a579dce43edd3357b35035a660f5a7efe3bdf5bf779612d86f555
Date: Sat, 21 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750508393
