Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374FC13C8EA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753850994; cv=none; b=Fiz7ZeLEA8GAUJWylzU6BI674C3358AouZlayFGf/2nNxW8UY8Mf6VrmaBCfANU1yzsd94FkN/a6sq0DwGPZ+yvnWPYvuImgzIyoY5seD0XOUW4o9SoUnfSJyI04EYF8ZnA2VEXUqjrGsRw6kuMbZG8jCEjcji3Z+UocFhCvxSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753850994; c=relaxed/simple;
	bh=4ktYXCMSw9DWZSjrLj9t8lKOmcOnhLE462qD75mEjp0=;
	h=To:Subject:From:Message-Id:Date; b=ViX0eDPQr7WVZZeyphGxQt791hj16JOZFxy9+6hEfPe3Tg8WsOhLg5xeY6zk/zYuUP1oySShIY2l1s8eWETFlBCb1qcMno8zklBwfsrjSZ1jc2r+RG3uJBXboK+wLl6s8qDOtt1Fx6FpZQiV1IAgT6gG3PhfauWrGVe7OYiIECY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AufPoW1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AufPoW1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1592C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753850993;
	bh=4ktYXCMSw9DWZSjrLj9t8lKOmcOnhLE462qD75mEjp0=;
	h=To:Subject:From:Date:From;
	b=AufPoW1mZKSozV4uV36r7MJ1ENNYWCK4EMWPUZsLsZ1mDciiFTA+eNM8Z6EDaNlGz
	 M6WboPo2gH6EOuJjMWPx93UkPv0LOoGlAfn9tdDRfKaInnkKtvhRdE5vgChXuc+c4E
	 hLX0IHjKoP3a3Qu7RhixDppk7bSK6mzK/yCfpsWlespfQ1HiN5ySgpAVyCY8d5UVIm
	 9lZu6smJ1LXMaNXGqqbhXgRz5kcqsvHRmVoT4ZXCHtlORc+QpiJrdQvRFCnV2PsuoI
	 sH9alzAiNQ9AGLRETUvlfn2xJVZwvzR2D70m1bFiTYZQ+ccMWI1WPNEPzH+B42wsl2
	 0a0lQnEsS9ggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E74DC87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385099357.19223.6500907324911865431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed9a2723ed46afea717fb296e3b7ce6863f9796e52bb50dc2e8a3fb08ee3a90
Date: Wed, 30 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753850993
