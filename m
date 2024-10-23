Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4FB1509A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729678554; cv=none; b=meL4bjf8iwXGD9Z+LfOsvbLv/BcfshMdAhoG++xy2duCGtvfAE0puXs38JkNWhG5RePDGfPBjdIHBQjD9Iw8S6Mr87ctzZsnC2g3iX5A48rNRc1gb4DVZXO6B/wbDImce9wfQcKhAoAf13gvFrF/zM0rLwbojIrgoY+Vzc52S5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729678554; c=relaxed/simple;
	bh=cb68Y8jKk7sPRY8DzhjO1rezBOXGR/j38jCjE0F1jrc=;
	h=To:Subject:From:Message-Id:Date; b=i0aGkhB7sCHf4nnx178yVLhw94aLph8gL7dCwof8PMFNUBZ1Hl5VGpBqqypw0ej3dqud0JSUF7odseMWRfYvbmt7AEojuum22YJWh/E+qvCNMIXSFYLRW1gbF7qQntr7g8UKC2oRY+/lyDLCos0KDY3OAaPkjJrWaAeZyMAa0QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXeePHUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXeePHUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA535C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729678553;
	bh=cb68Y8jKk7sPRY8DzhjO1rezBOXGR/j38jCjE0F1jrc=;
	h=To:Subject:From:Date:From;
	b=OXeePHUyDPYJyrf2XcnTjjCbjXJ2yiyXGMeSg1MtQkRVNCNID32bD3YzMpBTRN/Bx
	 1/GsLH3z5PqlOG66KmL/pw2va/bibpeb+W1nJ2uqm2V8LIjMD4wMak0iECc5TfZxHO
	 Ke+fPKPt07Ilvp8EmzUjohF8H2ab+UbJlshJ79c96IqevvL/6vCpj9jrWTrw6XeEGy
	 lqDj9vsHzqTglfidYVdraRV3egtslSRNybxRZ6COLK5nf73o4yNDZi5blswF+1Mm9m
	 B/lRTOJqleSQUJaSBuFt/joGMRQMiF9xUGez/FZ1tnEOhucaRitEMc3mBAAuCxOXEk
	 qgCLaouTeuytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91062CDDE5B
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172967855358.26906.13594700378298302456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e76345a336e1691b5df6d790349dda6fa97237e113205535ab7165cd37bd2825
Date: Wed, 23 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729678553
