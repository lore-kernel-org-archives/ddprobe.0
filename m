Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37240154C16
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720517183; cv=none; b=W3STzEG9gbhR+4ClTu8srM3cqMMtQ2hhLYiPWZCq05PbkaNehA1Yt4V6vgON52bS2NMbhXgb2I6+mj+18tPktNaw34hljyN5C3Srsi03Dk2uKs7DoH2b7OvIIgWdK3D/Au/P2jSRfPTtN8JJTmDMvCac/GTqRuMunNi6eo0VgdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720517183; c=relaxed/simple;
	bh=nXBqF4jTVcSQoyu6WZXFgmD1lg2VSxB92pYHcQ8ug0g=;
	h=To:Subject:From:Message-Id:Date; b=dTy38Ku9F5LaRa/EYsP0Rq9Dx1dBZ0QfD14netpViT3Dvk2MamJMbHqgwMX6KdkSkHKFzCYrIgTYEWFNwtHZ4EVYQ+sNs7Eko7aOP2+mpLpQ0Vm7z/xGX1hGEfZViyLplZfQRLP2tUOOQEOQDew9r9VXryLWql3ZoBabSVZ6Ngc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tV01wseV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tV01wseV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B8FC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720517182;
	bh=nXBqF4jTVcSQoyu6WZXFgmD1lg2VSxB92pYHcQ8ug0g=;
	h=To:Subject:From:Date:From;
	b=tV01wseVAK7D88f3AM0nr2lJ0j3LpFD1FB0tgEA2omBfgKxm3O8W/5Bru8QyTD56H
	 xatBAuKsHcuz9YUrct9YmJBteLPzRT8kT/PrpeN2lN1LeeuM/hOi4RZ5k3AH4yub5r
	 kuzPwVTNDcdFpGD48g2OGTbi8uXG8j75OK/TMhd0jhfTc8JfTO7h2s1V6oJPr1zICQ
	 Tanjb8OKZ+ka5o1JCI8b6s+CFYbcMMc/680tCb8cf8G6WYg5N9oqR4biesnVtEe8A8
	 15ZpweHxLmhPF4bQIInzJmd3QFRxWZXgwFPqDDzgN+7qy/eUn+3FXo8paEgyXv4+Ck
	 nufyv3sPqxJMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD64C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 09:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172051718277.24365.6643500113558187615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d81e62e090a8f56ed6b074fd7336eb24d408574b5a0589f5b2db75ce53d2e6d
Date: Tue, 09 Jul 2024 09:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720517182
