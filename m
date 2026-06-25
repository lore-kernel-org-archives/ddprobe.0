Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676FC175A66
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782401854; cv=none; b=FDiMeZVVnzjoJG5TaW6kHS0JpnhaClxgBlW/d8uZMYY5o0DOaryc4qEIJwVKmgXSiwj3pE6EnWkSbJ51dS68hyCDKCRNDE8WmZ+7yf/SY19p3LjI6a7mE/TrSg6rydVm04beY/dJM7TMqWEKFdafH3Y/97ykdJDRWMFvtIR7Mfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782401854; c=relaxed/simple;
	bh=0TuPH4FPhEsdOc+0ZryXdYvukQC6QV0EZQpdDGlc6wM=;
	h=To:Subject:From:Message-Id:Date; b=pIBGbMD0rpGr5HOgEmXc4a68muD0flxiDFjv/1/CZ0nmkLd2JhmlEpsrF5YUddx4A38eIGvvYvzqTIqbeU76dOHS8goJZ0GwxkIph7+Wc4IauxQn6EdOk0LqEx/GHslw5XihB6DZ0MOUPni89o8j0gnRSespCA7Rycv5w57c+TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbsVqFom; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbsVqFom"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED1FDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782401854;
	bh=0TuPH4FPhEsdOc+0ZryXdYvukQC6QV0EZQpdDGlc6wM=;
	h=To:Subject:From:Date:From;
	b=SbsVqFombuTMcVvBOes17CQ/tk8TC4MBhzSrIhHXNvJ/BCngf4EkbDrNEEEt1fuRS
	 W3MKk6AV3Fs0/ANFrO87EP28HZhV4ttSeIN88RAqxtRXxMRHLHTojSXOxXEYpAXZvu
	 KcdQ56z4wVPnkjDomisZeWSsbrmM/2dPez8p5Klzhe9eAteU64WvqfiUJKqGnJrSY0
	 ZBN6LC3mxL2ialDbI2ZjaYaqRqInCvdnt+4pAC4Dj6I37I3PGj35rsq8jTj27v+BgO
	 cm7ewFzaBORIrglF4Y9KAu3cPhbX8KSJNrbxbmQm4vzfYg9OAO+k7pEP62MqRbq0Le
	 ++q5NpZjKYZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE562CDE001
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 15:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240185376.22820.112847164122621535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9baa0906b118c9163a7901a6b9aaa373da5ed4f6e59321bc56d63abf2ea978
Date: Thu, 25 Jun 2026 15:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782401853
