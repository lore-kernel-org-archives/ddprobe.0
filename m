Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B96B31326C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780242874; cv=none; b=Z7+np8ZDzXMMO3cjLkD7PeRx9be/izPuKd4BWTWaAQoCs3yfTSRIBaqvQSfKJH1HerbJMvTusWNT/M3JntdWbwLHRf8LYrw4i/1+664qNuVnJWm5T3Tlnf26Q329mxL5prgGjg36B4mj3hEpNCKLFMcHm1dqKEEK3vCKlEtayc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780242874; c=relaxed/simple;
	bh=KITQUL59ZyqtvlWSRGz49m8ZvNFhavdwVMBJs7kMBm4=;
	h=To:Subject:From:Message-Id:Date; b=YAmjXdeHbRqrt1QS7+4oaB/hXgUMskTcKm7SQM/DshKsTGrTD+sbhGmDqqaHKmwRpMKQ6ePE0ESOO/HOP4UzVCU11mKvLBP7/9IEOnoY1/7TIgRxt7vegROY10rZ9RszjxaiR4Z+1kHBelnvLPUrdcvP6D/8UPnqiEkehoRhUKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FvYNl1H0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvYNl1H0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3FEEC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780242873;
	bh=KITQUL59ZyqtvlWSRGz49m8ZvNFhavdwVMBJs7kMBm4=;
	h=To:Subject:From:Date:From;
	b=FvYNl1H0z7Kx+/G8M2Xs20ggsKk0u5bLAclrmv7G3w03TIrG4Wtj1k9H3Z9yGcpp7
	 ScF4vMRKMWIicaJo+JGBvoVGDHkX240zwd33ZqOrZzXw5ERT7q5ClgA/6TwzTxl5QH
	 Hp/88cHTZ++zllkm+x+lTEgukMmcE7IiulJgyVHQphNRSIytXf9/GIajoAMm4ZskQX
	 /mTDi1rInEKsPU+y8fFzEgNSVQpMKbVbaqu3OrJG1d6vap5S3pM3Ebr7LlmPFBMusn
	 /Etz1TWsa52un9tdSkfc84kUlutw/FfsrdaH2ylkP7qBm/JWQwwJslTmLDLYWdkyFD
	 sVA9+IdAIHRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE08CD6E5D
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 15:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024287368.20190.692273213308583710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006a3ec88dc8715b3997efd8968c6a657e9e88774d232c61b94916e69f3abdfc
Date: Sun, 31 May 2026 15:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780242873
