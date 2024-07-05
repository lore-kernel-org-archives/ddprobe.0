Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ACCECF
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720139723; cv=none; b=Qe5WvG7//fMU2EZGBxkq5F/GoqwpbShJGpIAYZG2vz8nDTjgRZ6NlZP/X6R2ndwCcfTC1RBEMDeF7fgZUgd6tgcdAdAyk49y3ZLg4khXsPpgkfwKVtVcmbFbbZeQ2z9W76YOUr3putt4zLd1R4T5rYTuFBGRTxeiiL0cwlzTjQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720139723; c=relaxed/simple;
	bh=MpTZaez3n/leqm4y6FCC/Ixk0YPx2Kl0bk/hIIU4ofw=;
	h=To:Subject:From:Message-Id:Date; b=cO9n+HtsnONrZCLbpKARFqpXWxci8lyiaITj+INeWRi1ajAYTLhCMF9ZOcLDoVTm8/EbiiqX/R+etsSLFP+Dk+ToLZEVe0Msze1VMek4hLdu/0v/fCajZmXMd8XVrwZhtLO2lVV8fGYeRNUEVAHtSJX7GnZitpdbX74+Yla1dRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3WrJ6in; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3WrJ6in"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D361DC3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720139722;
	bh=MpTZaez3n/leqm4y6FCC/Ixk0YPx2Kl0bk/hIIU4ofw=;
	h=To:Subject:From:Date:From;
	b=K3WrJ6inm1w79uSiIdP3YQ76z+rUd6Ny/Qk5ZYGVNn03NDAOrHav1f412ApT2RDZ1
	 /qJLUWIHnABZUGNIDTv7Oe51tTJjLhqou9REmsQvqcB5AnjQMnLsEhlobO2FZ8o3kY
	 fJRgLP/8HEOyhH6bNTcQYS6Krt01pD41sAnnHdKQm/WheWIspGVgdkYZvSlc6M5g0K
	 KxNSPG6Lkxqi6SYq1Pjw14pwApLHburRfJ3OD1hEEpyZyi5kF2MfyH2lQIFx1frISJ
	 FjvyyXbnnY9h+6H3Di3RW31x7xZoyWyASG+euiDGkQ0qzvAFKUIkLGsLKiI/A00+rr
	 V15sNEW1VfKeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0052C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013972277.30205.10969471136848655484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b4869b168b8cef1d9513b1c782b4d138341815b749180d7ceb0d8281100e33c
Date: Fri, 05 Jul 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720139722
