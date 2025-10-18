Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351362417E6
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760761794; cv=none; b=P8NThmLlMz686f9V5zfDpURAJu+p4mieOJg7iBMVmkkjsu2FrWU/EPi/U1XoFDDFrJ1HdF1RndyuCfywAEnWQCuMvk6cq8F34P/dnNEJtbSuIVtEUM+EXIQG6jMDB0F0aQefSkJ/oI4ih8QXuTwfLGaPoXFfi5uHOJSIbF8mcTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760761794; c=relaxed/simple;
	bh=slQxzLd94M/FZ0KOSvpOumOvPYShBMkhf7XxvlGdU5U=;
	h=To:Subject:From:Message-Id:Date; b=hNRDGVqr1tmoKMZ436O3Qjyg5gP8G4a53h518YPIBsAq0GpCC/9IlaGiDhxgdwFOR7F1oxoMtw5wRUfCm2yuzHpcmS8OnHkmk2uh4mAR6jIf9TyGV3hmzk6afcAg0mtDUpM9ePj/Mt1ZWVZhBGqR2me8ZZ66OegNaKZMMYVcVBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pzjXsZR4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pzjXsZR4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B17C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760761793;
	bh=slQxzLd94M/FZ0KOSvpOumOvPYShBMkhf7XxvlGdU5U=;
	h=To:Subject:From:Date:From;
	b=pzjXsZR4eh8uLxQQeq3lND/mTSmt8kNYo1JOKI/MVe1z0slk9yyarsc6Rjs9OFx6P
	 eSewFNXFPGTTHbSB4iZkX2b/54w5yJ2cgJlnIAZGc3KCyYlUMal4SFZZMaUHkL4g2K
	 oYKWNE0oVvTgSHh4RNg3rLOJiYz6R1EFh0uReQtD6CzjaYOVBrIwrfECQjkARrSRQ5
	 Zlj16A8z6MuEEUmBGno1VRuEnDGLiPILf0RkXlTmktMZbn7KmVMdLsG+4s7T15FG0l
	 D6sgA3tCBPjnKGX+3hDld3hfZ5Rjcz7eTj0aVlKVUccZoQ5/NgoDBhIK97FPHb+54X
	 cWGnQdsxPDnUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C68CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076179357.6553.7613540278951009922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83560cc3d03c52ffd33addb8912ff10a992d258d7fa6acd7ad68e4e59a4fccb
Date: Sat, 18 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760761793
