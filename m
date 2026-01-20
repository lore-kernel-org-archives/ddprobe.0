Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BB03AE717
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768895634; cv=none; b=p+y3LlFDmatJHJHfZdIRsQHUQ33spxjr3f3YEsG380XKGAF1M3OsNwxbXeleKYr67STI8tY9bLgl6akjmrNuFU3LjqoEAnym4bNtjwGegiuyjBEAvNfQrGAirLWiJ5n2lGXT8/iFY9ThU+n0Imz6aqGQBSzPegO+x5meFNTNV/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768895634; c=relaxed/simple;
	bh=SoU8MuRAaR61ohIm2fIRxS7KrkO3kekmiZiJEE8suH0=;
	h=To:Subject:From:Message-Id:Date; b=traSoVz+dasB7+RqNFhNjHjyXHCowgvEvB03FtyYHLRyFzZRriB4EnA+Q/pE8IKurmPfcBWmueQw3L/Cgng5NZNmqmuJM/E2sLqVxLaQ6cdivHg28Gjc3zTxQJTyA1spY7Vqsg2V/s+fhBpK7I471FciGvHzgLGuQyRR9EhUYas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMFxNcxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMFxNcxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E647C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768895633;
	bh=SoU8MuRAaR61ohIm2fIRxS7KrkO3kekmiZiJEE8suH0=;
	h=To:Subject:From:Date:From;
	b=QMFxNcxbbGmpOVrPEBIOD4vA6RSQzBwXehoR/1/scvLezpfxroB0Rm6aOVM0k8jHD
	 qbbWnRdf9F+GUgk4zSFQWNxCHtU0kToS1k8g21tEqMo/o9ScRfSWjEDJlioZqXdybP
	 +byaQN6dW0pcjqXk6bdbNzgw4VYP4E/UDl0iG2eeyvaMM47zu60aJ0Rz9goPFbOjAU
	 quJpL7sxDg5ANzm1wquo9OIVeBPrbmGA4p7LP1SgM2L0t/DeWRhKxYTLg//87W4gWa
	 vjO0EtsIx2ywRo6Bow6gg2nBAH26OA0LEm3JAABGWD2+uetAov+q1HXZE/mnSNoKJd
	 jLo7CUINHsN5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906CDD2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176889563358.29628.18307461564472169031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e090480c3086f015d562a36bc88eac3adc71f88cba5efb8dcc5115c5b5eb302c
Date: Tue, 20 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768895633
