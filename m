Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648592882C5
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781644594; cv=none; b=Y3te0DEoZZTvVfySbPFd9BXO16I8fzF1xv34squ2MYH5pbnPD7whAYMbA0riNgYUNAkw+u+bpVRxuEc4egKRCfBPWVms6CVLqHeCqclhFzoK2CqaLzBlTs6skx+38r5CBzVRHupa5rDf0Eeb1y10iJqkok0v1bTOuQma3xnhBbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781644594; c=relaxed/simple;
	bh=TCMdX4VROQrE4dJwKmFak6AYH84ygPr2yVsd3ORKSnQ=;
	h=To:Subject:From:Message-Id:Date; b=XRKKj9dECptI7gyB+RjcKe1/cZ+wLArjPG/dlOgoxQpktlKkHahOlyAICXa94vZ+AxwXHvSPHxPwvZSDD6z5lK8f8eUSzjKDhuZCypGEvEQH+rgBgxj45bEHhDGi+JWgtVTok9vPcrra7BxduJXhiwkW+NBtp8nqWLVmJ6+EKKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WF+kpKlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WF+kpKlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF1FC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781644594;
	bh=TCMdX4VROQrE4dJwKmFak6AYH84ygPr2yVsd3ORKSnQ=;
	h=To:Subject:From:Date:From;
	b=WF+kpKltiiApO2tRyepc4Zwojh0ozUa1oVv3jAbCITOwq5J4JtuIJDrjcUgkRpeAW
	 9cv39N583hUgp2U0zpCKV5xTA4zlnmqpesswNpbQN737yztrI8iLXAvKg5PDmpIQxO
	 PfM+FfyiKnhUtgT3brKqQSp/m6nx8MJYiirzVrHr8hiOOy+wbhj/Ug3F3qJOsDZjEe
	 gSf6oghfE59z5+iNGJai+MSwqLBajS7qckaaJYMJkPSLH2cIJZ13zacR2VU+z2COKB
	 Rlea7vuykxXt/BD5MtIF18l7hUyBsAwGbengCNHt8KmSnUkLwLZm/YLkPgkYIlVsnJ
	 lwMgL6qcLT1bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEB8CD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164459375.14169.11678777233982532665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffd5661ab3664c55dd283db51f002ae9eff0b855d4a05fa645b898c31d4ccdf
Date: Tue, 16 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781644593
