Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A11E136CDEA
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755704395; cv=none; b=EpsjPXeXaGF/sdfG+gHEPVAHXc78rwHIHTRYa2XD29NUmMAxyVdexH2nY2cL9bZgAmpFxAcYS526FEh+JsgvYCKjjssnL1OmLvHjC+XtQH1hXeS54lCTI4FEY92K35EHWRHFEKxTZQhKBtFF6Dhsis360k9ncqEJxZB42/7s0M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755704395; c=relaxed/simple;
	bh=g7c0ZLmsT7qaNgNkMI+I73VoB8ENrHNUoCUSV5/RXe4=;
	h=To:Subject:From:Message-Id:Date; b=qrmSXbjy1QzLgfUHE9GaDJr2eVLf4vtgZXp+hznUWIvY7w0YZZNBIqY+li8RzOeVVQu4TxErn3OsUiO8cYQ/2ZYeDjrg5ve1rGk03etk1bHQtddpF3huUiYu2E4xZm18Z3yBiPHkPdnTDvbehEydglhVg+uHtp46UDIC0XBml1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZM8k9a6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZM8k9a6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5501C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755704393;
	bh=g7c0ZLmsT7qaNgNkMI+I73VoB8ENrHNUoCUSV5/RXe4=;
	h=To:Subject:From:Date:From;
	b=IZM8k9a6JKWsjMVshWow/Wz4E9xTXqA8RsvpanN/eh+CaS3Acv068rRLagc1CQUbF
	 m9Z0a05oHkMegdmRHB0xoteAg7mnas2AWqz6M1bzKl/VkD7cSzT4xY9+cjR4XEFij6
	 9pvCuHnme4l5zEc9mCmiNfCrpvszR3/dkxJfyifKxqnRW875cg5A1r5NR6uygD7tIV
	 n6N7k1+FDvYyNNOjJ55529VZoMBxrOS7wxl1qLgBvr7Lgv1HMYrwPnplwE061D7Qee
	 nIhN0PCQG/lAerg70kLvrcsx5qs+pUqy1majRtbEFf9HXGINEasRu72MB9uHnGyfoo
	 hbOj6NYZ9324Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED1CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570439359.32138.15050784948405355934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a21c881dbd730303fabb481c14f004816dd43928c8607aa417a6fd9290fbf8
Date: Wed, 20 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755704393
