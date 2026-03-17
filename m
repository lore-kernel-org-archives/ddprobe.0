Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2BC2AE78
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773725094; cv=none; b=uMLG2tGEE+u9ng0tUD5fBe9vdZtRRdWNRGtTgQAcpKCshn/1M3tjR09kJM/QZAnpafr3Atshxn2n7MebO8R94Z4tIRiazUdjRS3NC5H4K4ljpBGiJbtjdLRzT9+JOhyvMmoHruTrlKEV9X1GeC6KjDefMoip3Kgh+AboQSasNg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773725094; c=relaxed/simple;
	bh=5gKgQ1uxNSBSedJfCGtbPktvpdSYCNhit+pmVdrRiBA=;
	h=To:Subject:From:Message-Id:Date; b=D56aThN1jnm8a9v0OxGspQa9nInmuL9U1SH32AlVQtiFDM9pG04JVh7umlg96mnaZqHTIVkq3oDVxSmQA7/EWjJ7nOGTgkFN+oMAMdNHonKkDOc2z8IJxKpkxwyfIykLBFeU9sb95RrpROLllwKIJQk7CHbBLfrzA1/W09/l0BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfaf6xZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfaf6xZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98DDDC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773725093;
	bh=5gKgQ1uxNSBSedJfCGtbPktvpdSYCNhit+pmVdrRiBA=;
	h=To:Subject:From:Date:From;
	b=Pfaf6xZg4P9KMj303qY7KdxnE4YUc+wHwlevNbm3lxh7NNCSPMG1vd7gDlTAfObKa
	 YJKNU6Ljr75unWn56X96M4d5Wnf2vg36+ACScFe09baSQiT2X8KlSy2lL8jg6zYtHI
	 DVSQVJbmG1gI+tmx7AyKSgRQOgOkl0H6ZGIlbn3whCr7J9xQnlFA83C4KdIJ8Ym0pf
	 B6k/8DlLutLrnHuSqDLSRs/avuCpChSrvz+hbjWU9chYOBZLFoTpRGhZ/Waa5V/6/V
	 +HOmPuCp05SP0OMYY2mBOEkqzQErDQG2tHnynvsj0VuIXRnLXcLsRQGhCSmHtpS1Dk
	 Zj7Y7EFbXjaDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF51FB5EBE
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372509357.19384.2051429430654491561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400522c76cc489a73840664aba89aff55dcc77ad1aa9307770db24b8535825f2
Date: Tue, 17 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773725093
