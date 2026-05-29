Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37099369D55
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780024354; cv=none; b=TGI1htri3UTaBZS432JhwVKZsKKjlL8+YnRdqL6RmfELeSB0ZJ2nvG3X6PdJD2bBBeVXwwUHUS4r7k1Eyh2bfgipV/aZWfyWByYI2EXn8mzctq5T5z/JX3BKB3Sg8+SnP2v6UT9x98p1wBPaEpHKAKeqi+VrU+5fX9gSbKxbv3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780024354; c=relaxed/simple;
	bh=d7QtU3xb0+75HUcHpGSDoTrX14RI6nporCVivOM26cc=;
	h=To:Subject:From:Message-Id:Date; b=rYFKdskyVo/rWgNDd3/i3MsQd41dWnUcPWPkWY+v/oE7fYzEq9ptiNHOv418vzaMbJQXN7ACwtnn2mWNql0XFPc/Y9skUKX2Nsh/KgHqHl0sBNnh3hHXUMf5yBVl6hes6S0Ueabz/vHmNkGO9biRT63u9Zi1rWE+8GmnUvazvBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDABdjMF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDABdjMF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76F1C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780024353;
	bh=d7QtU3xb0+75HUcHpGSDoTrX14RI6nporCVivOM26cc=;
	h=To:Subject:From:Date:From;
	b=fDABdjMFfpoUdIb39QVLtOUPh6+Nr23c7DVLvZH2n9SJ/IcEHAqWEuDsikwlsiGGt
	 zyx3uyol7OiujYmYTbEY6FoMNs9x5mOdIOP0lSgGqGgomfrYN1R84ntZgaU0AoPpFO
	 EEggelHlZs8FVDM6j6zucmpkDZ2hCVMjd4k0vWdPpXWbcia4nO4bkLhBID7hTjB24k
	 yzHOhSyIBbz6WfgnchvD0u//ocKFEBKsxkGXMJ9OkbRegEcAtr86oHYRvUQo1ij/vF
	 LJgD/V73mSlX8kIFnaL1dfmPrxBAqe9jUYyPeEeJRZrN6T9uu6+UCGpT69FRUhwKS2
	 iebFoTlfJbYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C68CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002435369.16870.15558513792944075129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ade9db054a94221d6dc67d56c925e06b6da31fc472ab91608344d932f75041
Date: Fri, 29 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780024353
