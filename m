Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206E7770E5
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727159154; cv=none; b=SqI0JGCE1Jl2zaLZZxCuyofDvZrpG8F7DkHFdu2sPcMWLLBFXPrFnslWWw8F0O7tREkyc7kmo1TaErDiAH2h4q8XTeXnYmcEMLKBtrkq4kf82jjHvzVrYZul87CW9Gag5nmt/ePZC6h5zNLvS3mjrks0W+Ca4wsFZAKZupuAtpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727159154; c=relaxed/simple;
	bh=eI/sSrLEX6SuT8flO6ffKSH2BHNO3JREjJwCtDMCh8c=;
	h=To:Subject:From:Message-Id:Date; b=Jy3T2prK4aeiBG6PkoHtX3FtZ8bbBoLvckQ2ELCeF/QpkArQwGRz/avqwqkbRGZ19GvG26MTjap8pA/ugrfkGmM/5YE1QrfIeQJAXB1W0lnq9C4qoiLXpPbfjd4IHiDumnEKmvc2BvJZhpSvONMFTMFfqfg0wTMOGlkjRNcy0tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XzAcLzvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XzAcLzvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B97C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727159153;
	bh=eI/sSrLEX6SuT8flO6ffKSH2BHNO3JREjJwCtDMCh8c=;
	h=To:Subject:From:Date:From;
	b=XzAcLzvPBYmo4AoruihTdtN+Zvwn2TBFmIQ6ujit/hyVbKchvY5Aw9IJ1ZLmc6nVJ
	 UbJ8EaRb0UFrDfeum84hLfLHcU2Iz6BWZRs3nyE84sfw7d6F6tq2tIHP/X6S70g/NY
	 669QzvJQzJRxrk0f5SAA+rpRV7IeOow6/Qwfl3A94+m3Ap/jfcLQUa755ZI/XQHFWC
	 YsgYff7OTCp1/no1prUTQi1VEcZsUcHzCqJUUkOXFtD4VhEJRPJoxK6KEhecM13F4t
	 Q8NkKfn7ShA+ScQ9y/kftPWIR6nztbVoBDFVRsg6Nhkow3vbw7b6fVP7QxfZ8SuOSO
	 mWIq7c4NVZjgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CFCF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172715915359.21117.1758217023583653347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa952dcc70deccd77ac8e045ad384aba3fbb4b1aad7b24a48550dfcd940320c
Date: Tue, 24 Sep 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727159153
