Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FFD61FF3
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717592183; cv=none; b=kfrJw8BHU34pBLgiK7l2vrCDP48T04R0PL66CqaxaWylAqIgx5g/zgCa+t0Uvn1CtXQyi0LGQvbxR2txe3mer4FeLMZpegWAcKgEyNqT1MxM6xWI/K5uL6ceb5pSbZOFXv+vGlfLj9FRiamp2nX5FBHMNsNG2leVfzDMvUSGkfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717592183; c=relaxed/simple;
	bh=pD1PCLHnCobwumd15aaAS40Z7kCJqvwWSGgoq1Fk3bQ=;
	h=To:Subject:From:Message-Id:Date; b=BupzJjHg2JEhL1bp9ZUnYxPN1aYQWgs9E9b3Mp4SyrDiEiITUflD8rX9yI99GDpkcba/5dz5QzewKLWsDOeIwjBMNAYqz6poNITG2hYSUuZzvlokhbtxp65Yet3vixqxvjLjO6c1FRIJvagR6jyBYym2SlcDkL1HYUiYX0YHn7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYn8IP5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KYn8IP5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB3EC32782
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717592182;
	bh=pD1PCLHnCobwumd15aaAS40Z7kCJqvwWSGgoq1Fk3bQ=;
	h=To:Subject:From:Date:From;
	b=KYn8IP5HSieVIWjPXEAsOhskxWC5W2ca3ki2ZMrLRxfAr5ZG4VOV8acSDpN6bfqOS
	 LYpoUY6wpMFC7wX/RNpZlbcmsWFAQT6t7GLintDG0EPx8ehbb/Ob/VCTj0O13XZRyP
	 71+1Z3oIfsN0L857lqOWu30D8TqjwARbAF/hPwgdGhwqD7DRsmUi9cTXaPiblAvdh5
	 gt/FWt601XACbiLKYBlTF1rlVEPe/maYdEyiQYMwdjITYimxbgUUyRI8tNlB0vOh0A
	 iP2pKbu1urs2HB/9ekPkzL4CbWZ7y4krq61PXvseUMs5o2Wa6MY09K8XSxaLboO/AG
	 i+TX9vBH6/BmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85E3C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759218281.27438.7439875465333916599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d11fdf609979f3f7c01bec5c999509e1386e94757f5452465e628607d74e5bd
Date: Wed, 05 Jun 2024 12:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717592182
