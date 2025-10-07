Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199423AD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759838994; cv=none; b=Nw8rf6F8fswO8Bk6vfWq7lo24ImBPuRXlMboFDctJlT5v6PUto+AT0a952hrmtfuMqZR29Y/QUpuLRKx09y9zJ4r0rQgOUroStex7sEMxfSHZOJBSFniRdNbizQfLroDb7I6vxPmBdhKMBLLImtV30Q6VB5tvip06GMG0g/afEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759838994; c=relaxed/simple;
	bh=sYWL03gGpBoWGIaLF+1JyU8TIAgbYab2OJBZQLfv1oE=;
	h=To:Subject:From:Message-Id:Date; b=s2aGSKTuvXCaJQj20p3yGPcEWAujpmSUGVGBmP3E0akp7cePGcmVywmaiw9iNanmJt3ERgHOLWvZgpfVgP971nfSwmUJlDQoiKb2VJ8qPzFawsL8EhYi7urRVZqoG7ADYnkuBbuUPlZmKmOY93mfNGHn+Jerpmh214f1WUvvUNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jWozwo8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jWozwo8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4669C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759838993;
	bh=sYWL03gGpBoWGIaLF+1JyU8TIAgbYab2OJBZQLfv1oE=;
	h=To:Subject:From:Date:From;
	b=jWozwo8I/PDG5bJnxEV+gXVUqMMEUEA4o1jdnWr56hTo4ulCYHs6I3CxvD39YH/It
	 s40yXB+h4N+lvLEv/mEY8SFFNYdhywsGYR///SRC6Z/R0e2vLD8spdWUMu6cjS0eoK
	 vrkqkht1z/+LSK8nHJKLWfPVdmpAXInwuD32UXGt7s9z3/EFHto4/jXCcgocaIWzmd
	 SdKjkmBuwmVt7t10+CxhwkgOpkzFr7ArePvoZtZt/aHJRoWkERefjIw/vxHsleVqhf
	 tKp+LP0gqnBY8/QT1Qr7hdBM7GXVnTJJWQAcJbbdO6C60JDXlIw5D+iCG6aPCnhdz4
	 mBLLmj1yGYdZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BC8CCA472
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175983899358.1997.8821217242583277957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52566d50af450f6e6aed2e9a16b1f24669c35d4272deca3954586a2b0126b94b
Date: Tue, 07 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759838993
