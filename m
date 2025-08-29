Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C121E9905
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756498195; cv=none; b=nnsFhVJJxSA4kSuZPJuU64L0zHqSKeq7lsQ9SpvaJ0P4QX2tiFdhhs2UC/E5Wk4AgI/+FL7QT7xbUlMseLxCB4IzkDW+VPx0ZAP/hu1R/TUOZt1/E85ndtThscboLJr/sumpKTI2c3bbzYQBFSzIVmPoURf02uZB0crNor7Pfko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756498195; c=relaxed/simple;
	bh=2gy82kRH6AtZxQE+bY4tGDIJi7KJkEUBgSq6FX6LHjc=;
	h=To:Subject:From:Message-Id:Date; b=YWBD+VjlFshZQIzylRtvWuTEwZCWHCTd+doxUOweDOiPGdxhkSbtQMGTcv2dJIeOKPMZ2De17kQPzt7hZW+MSRkOX2E7YtHrX4Dg7v+wL3TJu78KvP5g8LC0P+sv+n4CpPN+pQyC9T1813khAc7cy0xUc1DuHW4bHE6wE0z9oWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTHO7kL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTHO7kL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EB0C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756498193;
	bh=2gy82kRH6AtZxQE+bY4tGDIJi7KJkEUBgSq6FX6LHjc=;
	h=To:Subject:From:Date:From;
	b=KTHO7kL/gUeRoJ7B93i/DyhZ9c3PBIllM8HBIaZRHptabKGh4t9iPajHC+E0XqDOK
	 hkAeBKhK82F4jGRMVpriVy/bSXHnohT5zP5i0Qipfo/KtGtm9j8dLyCDpuqPR8sM5S
	 Aa35K73hpTlnI88hOyphJhoCap+MmPltxFRo7M21I0ASHIdVeIoOBY8hi7TC5IMXyG
	 K7qsttdSLPFJkGKEqZusS89xnV+gsFZiObNtb9MmPXg/V2Fqs0xCrGaPkUL1mtealo
	 2yNtHS93zZgZqWfBpqP+e1OB9AedrxbsoyVdi86INtFI45W2hXuG71QPD1za9CsPYV
	 CozY2BrlXOvkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FECCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649819357.26281.9266877106233213272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68cbdff245b5a5089d1305e0762f60c76489e65786b2039bf63151fed06027c1
Date: Fri, 29 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756498193
