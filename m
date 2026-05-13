Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB88F36A35A
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778689233; cv=none; b=RlRCL81iIniPq2uWPCoqzkp7E6UhPERnyYd5VLeLNhMqXu2i9pJ4YWOuaQIkUoMGXbTfyP5ij/nioqbapmjxUPGURFXYXzTEd3lEJOCY3Clk/G5Rg0L+JShcR7DGetpYY/Tezl0s4v8YvdsUf0tTyoAyYajzv5BCMpgFY7FFSno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778689233; c=relaxed/simple;
	bh=nX6NqIL4iz07XtERl5YeaiSfC/niPae78G5Pgf+W+rg=;
	h=To:Subject:From:Message-Id:Date; b=IgsbYvGuiFfcWWb2w9rKrJSkWAq3I1TxR+Ow+fRUYvYz+98lXkaaUmoo+feIYjq3ghwhPDTSgCCTfAY/ha/UFSPAJOm8cmC2rowefV1/tQvX7gSwxOz5Qe+DNvgG5LHVrqNklFdwQ//MGq35XvMDzaUOPpQZI0e4MPaDVHVThAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kizrgni1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kizrgni1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1FCC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778689233;
	bh=nX6NqIL4iz07XtERl5YeaiSfC/niPae78G5Pgf+W+rg=;
	h=To:Subject:From:Date:From;
	b=kizrgni1M8iOGA7FaCsbxwiitqUGKM3ltQtRhSpV6I3Zsg8wxrDWkwrM1IX2NTQ3s
	 yCIeTXm1MjbHDiChBX0cpzSq6kvXer4qpDanC/6MBeWlOwQwFqqQUPTFr23qi56cjo
	 RX2qLfdIeogueuE9fAGc8VboCuC9Q4Oj5wYnLb21z/boFFiSiTwFsPB8ua1WqZ4KA7
	 Gyoe9xffVCPDRkWFI/bIQn7TAzuGoQnEielEtIDWUNr2cU/fjjxFRQivrGabYzg5hF
	 lnGwLMUyfqyS6mRvGQga7l8wTe/b0Z4JIoTYd2XRRfodzeI7EHuXy25aBTHfsXLzsY
	 ZM7CHE1hzqWqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF2CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868923368.7350.18040195726327507668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ce20335900b871d0bafe65d23381d0b8d447c6329141d914a90df1a03738ea
Date: Wed, 13 May 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778689233
