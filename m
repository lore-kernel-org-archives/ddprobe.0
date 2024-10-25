Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBE321764F
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729889754; cv=none; b=P7rOSt/GmAsZ/79ie1DcL6hxbdpq9oFeYTu7pYXM9+Jk08zyjrkSuSh034C9iNjITNNfMcEvAJhwr7MCyZ3bEQNQ/XWXD3UkohTaAb410CYhyyiFY3QRHunWUwYAUbkNljweli0f8wegcZFzQD4cNgil5pytR/3SG+a6J6Ko8QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729889754; c=relaxed/simple;
	bh=nvAeBelZZtmczQoh3Nc7bxt7cUNyvdmUrQD/Mwas9hU=;
	h=To:Subject:From:Message-Id:Date; b=Gb7GvbkPAq8PpjMdCicAS30aoH9udkP52M/T+8AGGSsODeOjQNezMTD9DdcZQbGv6n0l43OWL0CVKwzhPtm/JmDk2A/rtxg+mfPjuBBPbUCHL4pcoIVZjnfxGq+DeYym4QpfOpnHDemKq1nQ1YS13/01KeoHaHbwN0fxucn65nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmBjazFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmBjazFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13A2C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729889753;
	bh=nvAeBelZZtmczQoh3Nc7bxt7cUNyvdmUrQD/Mwas9hU=;
	h=To:Subject:From:Date:From;
	b=CmBjazFDyRtLYm/xSioVej5mnHUMywY9jKc2f92bKdjsyonTYoSCZsz9vIXV83O4D
	 wLlhm8Hmm+IqJB7PILqyO/Vw1hYxcDtvvZbZ9fWrH0iUAxEd1J3EKMEWaomQjOSdZ1
	 ftUaJbWYMLOLVumtuLToyBUuk68ysetLFs7FH3R24YF7jlivSuP+W7hOYwQt9fhwDy
	 2mawp2mbrXUlG7RkM94XTIdvzBXhUD699rhXaHZa+N1SUxdJACy4G73PMrGXFF3UuN
	 5T+MpCBQPu1o6jb+lG++2j8cAccwxNePc6aYcVFLkMzHjh+F/BzoIRMo8FyXU6ZIxD
	 mEVMRK9dLnHBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A087D149F2
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988975362.19778.3542536909126948576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 465873289cb62a01e65c1a9e5b5e8b2b1d4207b793c203ee97334bc25c8f0149
Date: Fri, 25 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729889753
