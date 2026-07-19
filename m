Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626DE43F08A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784490514; cv=none; b=QskjdZhf1LBLEkFQAeul4XZdHADqawUrKTep1OPrO8M5hzo3N8wig8lv1YL1SjKFsO3CfnJwiC/KoEqm5uxlzWw0auWZ2ZXDhn1Ign1ucp4IZtwsBkU37+bI/SyYPCNzQDKc5oCSES/kC6y+/+KdqPhCF5O+ZIXsFfxPdANeb5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784490514; c=relaxed/simple;
	bh=roV3Y34/zd3hAULevcXp4u84N/AFGHk3LVEDWmsWi8o=;
	h=To:Subject:From:Message-Id:Date; b=uvg7ECvMWA6kH6Yk/dL4Gy439EYiLn2IirbPmnElsZHknuGkd+5K7TkHgEYZEegxFq17qxFZiz3OJVasv6VuK9OcRzSeEGCALwbIfBF1MP7b/GxCAFKdjq2UDGkuTO71AbaSKf/D9riUHLJDn5BSQFHFoSxwnAiHBNaYV/owm3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQbZTERs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQbZTERs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D380EC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784490513;
	bh=roV3Y34/zd3hAULevcXp4u84N/AFGHk3LVEDWmsWi8o=;
	h=To:Subject:From:Date:From;
	b=gQbZTERsB6zR1cxIx/Dwm1RXTrPWaVb6/RTDrqCkzuF8ONWlA6Cv35ZDB+7p+c8dZ
	 YhPocrd3guiCvohyhbIzaMEWQfyaOiE584FL0MdxLBv1tUiNFn4qsRZOaqISFx8aHk
	 P2qzQAOsBbmmgKrXlnC1Yqj9xRAv0GdbgDwK5YIXlGq304QKqzr1eYocUuGkvLvcTv
	 9RW/Mcf9kA1TTTBdn/1A1Kpj3jUYF6zfhq48p5P2ovXsDYU9SlSdWEcHInKk2tvgYC
	 gQ4LF6kIZ8B1MyRVqoSmDwdd0LR8iS5RGKHminwaxs96uc2uwl5wnQ3UJY7ivA3EGu
	 dXk7sbfXqjMag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECDFC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449051368.15922.6313736942833363534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8763c77c14bcd14390267c30c73ab6e04833f88f6daac12a5e52b504c420e20
Date: Sun, 19 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784490513
