Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF973624A3
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778622634; cv=none; b=s3NxsUFGiaIoJO1LE9mLM9hw15Ns/vHqnv/TJlPvrrBpxLUjowQZVTaBKFbwNOuo7IIszMeoe/9/srHO2CA6JcX6LV069ntlddMAbMCvSqpITbpabzTHULsHo4Y1GuR33Dd1PWiLUc9Jt6SJY64W3KeyhpMIfcAzqmWmh/vPMI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778622634; c=relaxed/simple;
	bh=xtUrbM4Ke4/oUWZRqXOhwuseZylOk2qYOZW0o3vx4lw=;
	h=To:Subject:From:Message-Id:Date; b=g1OqsPiQB3zpufTb7uf35PjM1V7qsj8xLvNI2DGYuLiwL5tue82QWverAwqf72wAd8K9KwqJC+nAIoTjmfByw/e6UAOOfMiZJS9SHXuPG5bROKV8Uia+Z7DOKA2vN/R8Cy86T5ugHOyVMb/p+vG+bJsGRfJ2tn+sPg4hqdaQTDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dG2CsQBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dG2CsQBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CE1C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778622633;
	bh=xtUrbM4Ke4/oUWZRqXOhwuseZylOk2qYOZW0o3vx4lw=;
	h=To:Subject:From:Date:From;
	b=dG2CsQBNnk6vpa/9V/B6LlixzDb9QghyMYzi+s3Ds5sc9vSJyhS+XwQtFJnLnbuSx
	 NZeB8E7v8vG+yD3J9qod+NE9G8BOgcLsoJiiK0gS/r7va2FAfh0R/MELjbSkXGcaHW
	 5O0+mVrxlAz5U+oSiHWhaJz1owJ2CPAA48S1831qgttNoKBY0Hx/t4uK7WMCYw2Ef/
	 tbHSYc4mkhGP3GldO/X5KS80kv33XtVkl7l8JbZZCCXaIIt4n7ZR9u1b94jUS3hoIJ
	 oMYgMaRXuFBpkiQ7MPNbTPQJJCFDgrFJlSIzkd6uu2ptSNoqU50Q0rKBGX/mthnpWP
	 hkNV00436HHZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0298CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862263371.13911.3686900308534604401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f37e86cd7d930485e7b415ebce063f8bab3973588036513015ec0752e0799ca
Date: Tue, 12 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778622633
