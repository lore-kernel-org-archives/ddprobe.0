Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700F3433CE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720541783; cv=none; b=feeo7FeYx2zItTPNCkZU9/cjEBQDtqVdj2NJcaY3KWJBRVWzsvgOn1bR+33guyGLA0XTjGYU93cd7DHaMf4Duzf8lYnzdWPMuVApNuTK2amiI0JUBCIjZcIdkckaOgAm1wLN47fJy9myHh8zaDo79jZixwo9CWkwGGk4UILVSaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720541783; c=relaxed/simple;
	bh=r+FiD8rYDznQkt4smMCDx2Qoj19CNu7hwWwwxCMoFHk=;
	h=To:Subject:From:Message-Id:Date; b=XRH92GEsxryDVOiv4OggMFApoXLTecbVd6bAtbAN/Bd64rYsoRDeaebyRVG/edd5V3b1IEhc5LUsAzt90FLyWZAsZnm8qhQo4Ox3qLKHLKgXExcrVbzfREvET+UAIZWm+SNdaySRDA+n6doG51IFekCAhZS3RkUomqRVCpguFSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etXidHMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etXidHMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01CB2C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720541783;
	bh=r+FiD8rYDznQkt4smMCDx2Qoj19CNu7hwWwwxCMoFHk=;
	h=To:Subject:From:Date:From;
	b=etXidHMR38TrhV+IKJ3hIIaUC1zBsdMCykNOC7N+e2M3/ton/3ZyBS2BC/pTACbyN
	 i03F31QfP7RXhRDnghGbDPvsB5rX/Uip40p31WJSnCKs1+Sbwpb6CKHuyPYeuGdqQp
	 EpF7/D3Q+rql1wn7Rg33g2F/mO4csXlcSpDFi9bPBgK6iKDo88k0NoAElktnSRF35t
	 IKZjaV1AiL9m/VoFCw6WvudSMfHVAgA0FrXMLBEDn5B8IXgDDr5jtpXdGH5MbFls+i
	 vX1CVne06EnzbH1g9OClwQZWfRCDiW9HvNz+2KPvEm85bMWwlTCVegQqu6G3qEa+XK
	 0ZKmel5HV4ggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDFBEC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 16:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054178288.5518.10113842151141296904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f81e0d5f2dbfc4e1b58496ce62cfbeae4f75204f4501572aeb93a2f84668940
Date: Tue, 09 Jul 2024 16:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720541782
