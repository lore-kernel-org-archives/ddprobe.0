Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E448433AB
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730673954; cv=none; b=KOZ04YB3zWpWUnhlclr3HFEzMkWcQrA2rvKmb+Y8Aw9sJiRF7cTsPgZvnG3ZO7X8tDSmRlwUA5NT+Ye8LGHjMTXPjrmHfmE0riqY8P5odzYIYPYY2CaF/L0MmsebwgS/V+Wfd33JyzjU4zeVtysbm7sVSOyODjbxLijY+aLYIqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730673954; c=relaxed/simple;
	bh=fDOO25qDPEduzi2QolY0+acZQkxeSdTYQ6D/FWvhQWc=;
	h=To:Subject:From:Message-Id:Date; b=W+vR5uJHcL8Xc9ChJ/C+h+dWhB3i3XImEq5GaCzb4xQBNiXILMIBTZgtaK64oNOGNzT7zvkybPkcBVs9wWjj1dbeHtXCE+fTfeRXd0TSOhhL4u+GD49rg427n4QlHvcZ/k3QQc3bezpAb0vuh4CHWlj53jIws0rJ5gU1rQxclWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGUGT4Mi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGUGT4Mi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A25C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730673953;
	bh=fDOO25qDPEduzi2QolY0+acZQkxeSdTYQ6D/FWvhQWc=;
	h=To:Subject:From:Date:From;
	b=gGUGT4Mi+xPvjyED06MGvM1Ca4xqtlGtFhLXGEJQLPpW6HdiMSBmVqVUOGp3BnJud
	 Fmqo5guEtjsv/6Y3pI1Cxig/2aYUBYtynDgBux9lrDupcTjVaReyYxS7wKEyXSpoir
	 rKwGz2SglJOzYxJdEmHuuU9mtaTDG9JEtRMNHIBPGNVuyoubM3oDCCfut3GovUzSKY
	 qS+5HpaaiyHypj8PAkRhsKaovic+ZTAhLaj5SfYHHWDyRx+kv2K+U0PfxVqzGFxLvE
	 5FlaiSVFgN0IMsBGWQIhrnDmk26RWkqww3jORPx18yyOdMT1jGLQhwIdeb2vIRpF0x
	 uy8ddQ5F68CvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D6D11195
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173067395358.3800.17668438411798492539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091fb59856169e51e4404ec6618f57c91b67842b0d0df62a68240780aa05840f
Date: Sun, 03 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730673953
