Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283DE17579
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722548154; cv=none; b=E4c/JMdMf5dwU7pshhe4fFLOv0oNbDIoWdvQaCf4cO/JQyI3g8pDsnvPHluLaT7G2f9RlxQWtenVLWiOlIMaQ3F9tq8xDmEhhibm/EF9WJ49dPxctYCycpI4YUTMbIrXLvCDdOOBb22ckfA1TYxYy1uOE+3pQHMruDUopWxmy+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722548154; c=relaxed/simple;
	bh=yIAy+zSR+Hz1Bi6gn/ZSSzodIT6dXWRsH2bNAoVkPgE=;
	h=To:Subject:From:Message-Id:Date; b=oPSAjthXpNn8SLfE/bJm1lLHZ7Zax/vaElhRAoA+hvotpdePP223B6Kw6Ifo6xJl0InY6FL389XBHdeXrGtUW/VsiuinHGzildwFVHjeERte8KWTDV06blIZmJOvmrsGe4zZ5V3tgps3LNFtJC/7gtY12kob/WBqUwr/quM5ROA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C41YhHdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C41YhHdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2090C4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722548153;
	bh=yIAy+zSR+Hz1Bi6gn/ZSSzodIT6dXWRsH2bNAoVkPgE=;
	h=To:Subject:From:Date:From;
	b=C41YhHdZpNi6DZsJvm/ineyrs6yvPr4x9UglseD077pxgkwCTl9rBKqLLEZb8CkrU
	 KNIDujd5rtvYC3wnye+UEiktRnMJtMgpa3k+hPhw4vl9AxByG964A1Q2GPlq/MHmIR
	 BZB/1iq8N/s83d3b9dCJZa7kuXd7SMU9lgJ9ZUp1HxUs4hrQAoCkh0dlwZhFAXxcfQ
	 XstqIgIv94qPVjCBxtbst8XHWZ1f5S+L1FxXRYnQB5Z+xVKRz+J+g4tanHyME+v85r
	 ouGQObqCKPzfcaKftw9OeygCFOoEGKC1/ThAaq8Cdxfkuo44guUFE0bSKTI9AkOQbf
	 McibRs1I1wIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90061C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254815358.1068.12186435768763158445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b346024f15b5416789d82ad01af680338f67a95c1e0ac29a6f1b89478820a5
Date: Thu, 01 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722548153
