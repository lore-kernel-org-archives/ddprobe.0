Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DEA256D
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716338603; cv=none; b=mhSiZa1xxFqZ/96VYi47rcbUTrNQ9eSeIbUYM//wiq26SRwGSNhA3IZH4TI/oX51OZMSIOLAFFMHh/mpJNEUm4WE6919UkoJXKzG8uKnzumWhrPUBa2y7aktnnUe880GOaRHRA6EDb4Q157nIgCkjqIdQkRa6LlOuswwdokUPYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716338603; c=relaxed/simple;
	bh=3vUYVTWGWuP8qu6Jhb1wnI7bKFxOvV5n4yXZXBFZhOw=;
	h=To:Subject:From:Message-Id:Date; b=HYX/MRd/vLVu75tqUhDEG3gkn1geiv0QXheDmTbnzKq6ZVoZvadKufm5CR+rWGP3vlM81IpIasvSji4pXiHdDHxwE5P9GVYGD4ZeUAxBWTx3jt+8Ys3ct5vj9ta3R6rKQKzCYYndCrmIqNu1Zglofm/3DxEG22rLh18xeNXVbcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Buwor63L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Buwor63L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0693C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716338602;
	bh=3vUYVTWGWuP8qu6Jhb1wnI7bKFxOvV5n4yXZXBFZhOw=;
	h=To:Subject:From:Date:From;
	b=Buwor63L8zSL6TKVIOK2Yx6effUz52FoXu/ADDaEgt4RJo7Xqu8Xr6IRjix2B/Bgn
	 06n1Gq1Ur/7VdXnLVYBiO76h8UcuH3/8pL2Csa9uDdxYC7f0EKHlsEAOwKYD4688Av
	 8nadpx7kdyuYAiCCIc32r5E2H6DR68k6B495geCbbqLUiT2EqIpFFT/gjnD2ZWOk7s
	 xQfc+6kVtgqQYaxHxLpI7UBJzAJPU2tmIMjhTZp+Kf7nMRFmkj8ka1b8YRXNAgcpY4
	 y3XsElWMFYtEjY3PV5FVidMpfeq/ahymxLFP/a/rJkK3lRmG3p+S8ZYnVQMHXvMg1x
	 +1rUWHfJQXBQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C89C0C25B74
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 00:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171633860278.16716.7228201223378502490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cfeceea6bd9f03ebd5b295c0e5c29ef1a2b312619f094a8ba1eccd60a214b68
Date: Wed, 22 May 2024 00:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716338602
