Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1E84E18
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728459354; cv=none; b=jYFsKVIquKFe1nm2Xns1QUXursZj95S21cSI4pg9kADdRTSYiYdXiOJdmq3MZckiH1G/UJe0ysKtjv/q7mhBWe+dpF84tdMZ58OvlQ4lduO2vizISxip2vRVSwEggx8yspwFnw7rSawDmbW43Ll/zXeWdcxfX75UWuO/9rGlXlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728459354; c=relaxed/simple;
	bh=IZQ1560pLAQ+zhx8S4Vr55zzmSNdeq1je/z/5Fd1z9k=;
	h=To:Subject:From:Message-Id:Date; b=jB5OELm2yYQLbEsIzRA+l1bdUpIeieh7tZTJO/TmaXArAECrincz0fXV80wUc8TZodYiwoUoyDynvN0LVi3qUBN7EpTKPl4Yoc1uoZRScjDC+fKFie9cjNeapzIGcrFzSfUTSI3MV8D3xwOQl4cE2RPOYKiQU8/yP/Wl9wqRkMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGZyOilL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGZyOilL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A978CC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728459353;
	bh=IZQ1560pLAQ+zhx8S4Vr55zzmSNdeq1je/z/5Fd1z9k=;
	h=To:Subject:From:Date:From;
	b=AGZyOilLk6/i6VCqtvsVICiwPDr9TnTxpTaGXYGG6Si6UkcYews2yobQATb3oTJr3
	 Yfon1cPGHx7l6ehE9Su3U9Q6IFbUzaXP3jXkqa6nAO9wNUJnAzoTyCWd4MPYrto4wL
	 aiuCofsc/BcKRr63QoyHvs6IXNL542D0ONqyo7ueQOHj6laeV+Nt1OjYAmYErMMnmd
	 NaH/ZnRze3Ps2Ze1A3fAhRA9k5MNCO3sfSMIuQdN0C8wJcptNlzYC16lO3ByTFxiwX
	 VQNzCozTuXcmkji7S9VsT/sDbCht2btvMHPoAFb62k4PtA7cKWIdwRXM+4Gg/RHlGQ
	 Ns42P2FyoM6lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970CACED618
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172845935361.28876.11442584668302610513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf6f106367ca6b31dce3d615ab1af5b54791b2ebe2523b6774b3ce7a8854b49
Date: Wed, 09 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728459353
