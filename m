Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B7217C2
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743308394; cv=none; b=AU/Zm8I8NDm8oXID0waxGN8zVIe0Gs4E0H0fO/hEeqERbNCz3ERXF0Knw5jrSNkfjnJV70Y5bfobfvQCc+5MMHtBXIfYqR1I4vkPUnmVEomvkF1KEK/NNLWaiAJeQKtjnAmS581O4mQH90PD5TAgouyMFcnCKFFr0n9S5kleFbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743308394; c=relaxed/simple;
	bh=5+4jvfHFDifu1a0pr9g2YQnWBNYS87DGzaiPjZnglWo=;
	h=To:Subject:From:Message-Id:Date; b=HDwQ0b99DDfSRqilKVI/N8arNNJ4LICBhBBofL121Pl3LAiXV/AnXdV1BS1AD5oXxIonc2Zej9AIiVq2DP6LAiafN94EAClA++pcoqlpEEYoj3vYYqM2VJvzKtxNsDIs07Kla1U8jIqZrwJD0Or3CZcpT0PnMCTgTPpcTgLVnEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/jd/usZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/jd/usZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5257C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743308393;
	bh=5+4jvfHFDifu1a0pr9g2YQnWBNYS87DGzaiPjZnglWo=;
	h=To:Subject:From:Date:From;
	b=r/jd/usZtkyhIfpHTlXNBiai8vkoWhqiPOEPlmmbpNUzGfLKWMiiE6mPoQ92oruqA
	 1f29ipT8wvHhZ5vLLKB984rV+k3XfHRtYRudARMVztMuoGfVnPFZW/Rso+B2kxsfKx
	 h7+sD0M9P8Q9TfwVrEKx2pUz/3AVL2NFLE7wqgSSywmh4J8KMoWvgVO/Vj8R78V8L5
	 Dojk14vH3KAuTYS+AcIFuCfsmhKLhnNQ3AbPxYdhmMdUHfXG9MNFDJiDtDo/vdS30I
	 Z7hYSh8Nvm0NiEfL2FBHidrax6KduNdGov0jJsrjfJ+fHAJ0Mp+m2UaE5/OSF3XTmj
	 +kmS5CIm8jXwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A743FC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174330839362.14799.4276315043653359994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98698afc52a706abe50024aeac21d6f4235d1280e8397130269275adf4a1ea50
Date: Sun, 30 Mar 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743308393
