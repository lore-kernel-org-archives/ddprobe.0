Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA364746BB
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792385434; cv=none; b=goxM7SKQ5G65clHbS2u1hfiLORF7M2g/cyQwdKN3yPVvwp56PwCHZAehXsh/bSLIhwPx1w6rW+fEPF2ol/E/UkHk4JqxXNnZtDvcNUn+4RA2O5MNpFpYMgEvDOO1SAdZpP66sd2upGtZiVruptlSNJK3zi8qNasHeBUKs/ODyCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792385434; c=relaxed/simple;
	bh=adKoIjoyr1NLFCuwxRuk6NO8Aebe4u1krP4P0nVZm4k=;
	h=To:Subject:From:Message-Id:Date; b=qF7ENDjdbpWFdWItCmDDCyjzaXW+A/QZ+Omwc4LO7qcbOA4sBJGHtEtI28nstlR/MLWEo/mRdq4tI3/Y8IHAQxA2rtKv/tLNiNjCUCwQ1XbXO3hrO5dLvHxJ8BWPNvA2No9H9NsPytO5RGJ5FaBhO4SbdVqNa3vJLDglSD2iPfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5vNXWFK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5vNXWFK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB15C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792385433;
	bh=adKoIjoyr1NLFCuwxRuk6NO8Aebe4u1krP4P0nVZm4k=;
	h=To:Subject:From:Date:From;
	b=T5vNXWFK8+bhfv9qs9go5AYo1/HG4YZB4fhKvsNla+6KtNVqjrQkXEMwpW8PcKZXY
	 f53LjCsEGh2/XqLFirAJmbOLVMrtAYV9i9fWEE9F5y3C1gP8m0X9jByi/55maGDMbg
	 7xuLmH0wmbO6cww1T9Q+HcU1Zu6JysBHlC345JgWAQSKDorAgYeTBJw3Zw6m1NOc+k
	 nQaGLXbo67vLZ6yMG0LbVv/48ZmFHa17lwvUx9IPlNV2+3oFg02tWRnpQ+V/iWeGkq
	 TYdOYlL0C+aJf/9yv9+JAdcmMEGbGbXMF1Vkh9vW/OU7fu4ODk/HHhLMURJmexoyET
	 tmBskovtdif/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75E6CCF2D3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238543373.32446.16271682373202576530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf6a60023a7b8a51664344ec84eb4f27a0468afff81ef5fdb79b1ec62d37344
Date: Mon, 19 Oct 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792385433
