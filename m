Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102CE1DE4F6
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757893194; cv=none; b=uqOjzqPB8s4tIRtEuBo0RXrSzZmGP93WFyJmpdbwe9JFvetktVwJWh91yowETs3e/7S2YraR1pA7OZk2hyoXIGmiJugDbpNIgxfbUURVRgBIjXVYdzBLk6LBTcR3MyzYCObCmsrtzpLmpI63Ouwsl8eRrGYfAJ337dR1n73m3YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757893194; c=relaxed/simple;
	bh=b9jWYoF/r/GpPla0GmTNJqU2xi3ua2lZ7T5dIZB0EMY=;
	h=To:Subject:From:Message-Id:Date; b=tKFE7IUEsAEZcJUt1HMiglworAxALwcatACZHMatRp77gB6pwIJVQUF+tbqWcwXNSH2urnOwg/+7blYbMSU/oxm6KG/DhBd8b4vUfCt4pT/pSuxj8TNSfgo4Usk4n+Mw8sIAQJ3cLJpmOLaiLfTHr0sbbVD7TalbbujjI6WK0SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZNI+M+B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZNI+M+B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AABC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757893193;
	bh=b9jWYoF/r/GpPla0GmTNJqU2xi3ua2lZ7T5dIZB0EMY=;
	h=To:Subject:From:Date:From;
	b=dZNI+M+BpoQoa7yrMY7oH2MJftpalaR2RXzrnUNa+dER5gh7AT4fkeX5I08JCLvQg
	 vj7lVYW1lf55MDZO5bBf2Vnp2vAt+ntHivjXI+YdyAsTF1QCRaH3MK+Sobl+AVkgjV
	 9k/G0WQV8bUAP5BPjJNVYUlAoS1nGMsBwr1eWn1bQEtQuH0SjJZTa4talzoFxT32zl
	 Z2GXOcqW8u0PFcfxJjg/LquPAzv20N4rowDOW4+Q6fWlwGEcgCr1zkl/srXeBI4vY7
	 e7tnO5xn9hhc073jhhzvvlZ6AYceZoTKC39/Pqerus/AaqbWrAYDCDCgbTaNQ0ZxAh
	 GOj/AQlMFBlXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E5ECA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789319357.24203.1606836216668237760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf4de5b02e5421abbdd25bc9ed940eab8911341ca5eecca2c7029e777b9807d
Date: Sun, 14 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757893193
