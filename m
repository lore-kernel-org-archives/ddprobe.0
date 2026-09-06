Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D04A220F49
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788718234; cv=none; b=KHhRc+qOOZ8LhWQi6W2ZfH32pB8KxwRwr0zUrkwXh2w7JkQoWE+aB5uWajyPdrsUBBPJ8OcSa1we2ZpZ4T8B7f9AfOpSDDg+FE4ngGIdkxTz1gK61XGRgAoCfjYxBGLevo3RqvajZzNmxxktX208YWvPnWIEFmqLYTnIhCSqEsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788718234; c=relaxed/simple;
	bh=xCHW1tV7xZN1c4Kb3Aictf9CbCfrpyOcGnea+Uhvw3w=;
	h=To:Subject:From:Message-Id:Date; b=pkovcYmbOLe6lJWrXnNU8W6xvWHvVsrLdjfZTLsGXu+H917mgoVOeNKMxDZ8aaMawuNss0S/KdEgEcQuSjY104P7NsLT0UPXKPyvT4ctMbRHVoQunoRCHU/p4l+Rb2kNKwaka5uJup9ZW/n/rTVD+Ze8t16ekMNkwsBMtAHoYac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bo7pnSJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bo7pnSJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB96C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788718233;
	bh=xCHW1tV7xZN1c4Kb3Aictf9CbCfrpyOcGnea+Uhvw3w=;
	h=To:Subject:From:Date:From;
	b=bo7pnSJNVuPRHWCDVtdILmJC8APfs7tenNZZjpLtMsS9VI9FVg+EIUxFatNuvRO2c
	 GvvBvAIIrO1G2dfKU/uaakg0emhYxL64NOYb4vMzUstYwsAZVMh2/4CL1Q7cPM+Flf
	 ArOOnVxOTHXnyHt68Ds3LMSopc8YtoFqfbom+KniC0x1M8Lf2f5xGPHsjT3fA3rMJj
	 C+vgPxYFQdI9HSiDif19OSqeHRbwWUMxRsQKacxh9qAvTSw+wgVwwsZ4EfeQAn8ekF
	 ZgkGQEds4dyvgc/claEbkjPCBA6G1Iyr/MuxtHsghDILOTQSiSROAAtyJCXJGIfLXO
	 rIjyZjNGfRxqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57BEC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871823370.12956.7919874230174949683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed7641d466b779445b5d78a6c69497ef343c0320431cf69f88d4d576ff3285c
Date: Sun, 06 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788718233
