Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455332747D
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727106354; cv=none; b=DYpknGO8/XsBbZAGEeD6cO1S4pdhDuSh6h1vS660SlC0JrPG5etM/7QGBLOiIl94TG87BBQF49sp5YEQDLRNSwCq0j7R5PfZEYxEo3KLV5CfVgFsuVMzBzgK8iLDuWviq4dEV+P6uc9GQ4dcqsfSMxHQ6iA1rma0+Q3nKE5AKTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727106354; c=relaxed/simple;
	bh=h3jU5pwFzTMIETT4TmiFGAJGiSYrGsC2g0Duqz2HVIE=;
	h=To:Subject:From:Message-Id:Date; b=ngpKserAqcpvSAMURq/TJTAO063LRyOQzMxZeqTY57JbQr6epJOnOsncoVpdrSWkyTWNBGqXApKvcKfA/h1Gcq67WZaerDbwVnH0rToiE/KN8wQ1lA1mpTp+qAp8bbBqpr5W4Ka8ecU+TyYByXk+2faP+7jEADizbcPwIJ/hjMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvNxmDQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvNxmDQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C709EC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727106353;
	bh=h3jU5pwFzTMIETT4TmiFGAJGiSYrGsC2g0Duqz2HVIE=;
	h=To:Subject:From:Date:From;
	b=jvNxmDQ6pr0lF5CGlOWr2EcsHBCnl5qq3ngn++fe2oUwSKi6MfRjz3gGGE3b4z2jN
	 xmAksKq+5z38eWDt67F9NIMh/YS6xi164sKr809r18H0254gvYSBcciDv/ornoFb5f
	 kcszCqueWZpjX3IHWtMpZZ+ysWSMVKJt5tNT7RalfgLDDrcbNyN6wR71tzLJxcQSt0
	 7z5l5rE9gNuSBOry82rQ4S3bYBFxoSNXnYY0U3uh3bB0mTjIrpxIjBorEkmbDDsP1L
	 5TM3Jo1bfkiEhdLWRmWiiSfSyqRcZ53Kqa5vOxkcBTUj3oEaaM4O+CN2/a/WEaAMGc
	 KH/IMr0TkMZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD848CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172710635369.775.3270332002320952851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7c31cce756a17b9296d6ea28b7c4e918f59ed7d2cb15b8340f616d078d1b09
Date: Mon, 23 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727106353
