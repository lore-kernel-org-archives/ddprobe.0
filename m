Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C3C31195A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762870194; cv=none; b=hxoZ7qeXRihgwE0GlYhAp9Ndtqb+ddjjCjdSUDvy7K1JCzHceJBuz1IN0q6itNld+lmUe2pUp+ClENV25ug6XJNeZnum0Y9FMIc7rP3xMJIRqS+CQ5tscvbQEjEUwevLtFDVFYojFBpzxK5p2LXzfs7+1h8cDJN/j1+KCo5Vcog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762870194; c=relaxed/simple;
	bh=DMplzxLpyVY5GM6CFLSsdgFJD0NCVgH0yeZpaERMU+k=;
	h=To:Subject:From:Message-Id:Date; b=PoDGOPWC5Pix8NHocUcyuvzfMh8/jGk6quDTovIMCVYNsFOJ5zNLmJanWaZK7ebzcbN9CMlJ+fDQC/IOlAAkWeZzOc03dV1gZdv2KQ/cvZ36sH5NEz7VbqT8qSRpFCEh5MW1Sn6358Q3/FVBnyGze56sHxix08k7k02YefSC+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uf44H0CA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uf44H0CA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C88C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762870193;
	bh=DMplzxLpyVY5GM6CFLSsdgFJD0NCVgH0yeZpaERMU+k=;
	h=To:Subject:From:Date:From;
	b=uf44H0CADMnVBSQy1R8b2OfY27WxFOlp7MgcWlRJLZykNBTPKibyMhh/k3h98sLqJ
	 DQQ6Vbw2QG7ad+bAmGcyj3KnKRbRL7Qcz9dJNK4DMurEpr5dDNm4Ra1VljdAV5SyUZ
	 Sfagd0MRXnjSz8XSC/JxwyyspSAEFzxxa3BEtwlJhGLDitSpE/t7AUB9T2XkjUT25h
	 QcPXZpUglnSXhH2/WhWvSxzi380+zAoTUyVB8SNKagB49Pk6caxJEj2Hr8PnOkTleV
	 WjXExUNlriKQhyOPoDh/EKSxDP/p1+zFKhEeL1ggtsKNOUSGtoYns76hqy0dimnDEX
	 dGqGV9K0SZoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96115CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287019358.13532.11716973184765309915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba24f2defdd6efdf99445a7e218e3ffd54c8b8618e01512f3302f196ca23413
Date: Tue, 11 Nov 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762870193
