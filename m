Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEA21E502
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751125194; cv=none; b=aNTRVsMww71Caj3K2mPhytQO9Hcvb42KyJTLHOiCndZyxajqJc6W/64BsczFYR3KntrpDpx28F3MfAIj4CtqAZdNDK1F0UyBJ2kr4CummZd1l2Re7dR1xnkSzZjKQ0ECuibGN0seRiATn/w3Zepeynbtrr125qWj+pAMHgMcdUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751125194; c=relaxed/simple;
	bh=OVtEmnsXK96s9A/z+4Lr0WmVMldG67NIhVTas8oGyEQ=;
	h=To:Subject:From:Message-Id:Date; b=Nhuw6HL3TacEUX04YpDunPDJ8XiB8M8mTrK5oUNBnnsZUeN3HduOZ4phYfLJL19fBmSuixvTbTFBCysWqrl195cCwcH0S6jgBARpnSdyp6ixmatuTCzNYiX/epXUZtitszLVA66yO8772KHRRJG0l6NE3nCJq3OFof59vUDlwn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igTU3pJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igTU3pJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A1C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751125193;
	bh=OVtEmnsXK96s9A/z+4Lr0WmVMldG67NIhVTas8oGyEQ=;
	h=To:Subject:From:Date:From;
	b=igTU3pJura1BOOeltveCa6nmJ6ETGVnfjhVLLYxKf1QDiQnWQQqdCY6OdA7dCx5QF
	 YNEZ+n60SM6iYONDrnztIYgPXvlL6zPXT6ePEwc425qUDbZIvZIQXLfqoBTyfQsGyC
	 tQEFqoF0yV7TVBia9ce4b5QXXgkfb7yIa5neV2FUQhY5EuSbSDdS7RjqW2iyNmhu/G
	 +m6h/ROeRyY8V/awedbtN5rmkkA++PJvnLf8upSscNuISYa217M82GClCJg3rYhlSq
	 HRbIBpcGeza4nDl7KotIzU1v20mNPet+9UmpvA8W0y1NdIz0+VwqoHeBdYdfKRdzjz
	 ZHC1X1lRslnsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E96BC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175112519357.22294.15139419082125733219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f35d690f20cbc8ef20977371bf4de1f98250bfe8450e1ea047727e3d8fe1403
Date: Sat, 28 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751125193
