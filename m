Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB033EEAC3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779284434; cv=none; b=NXL7KPdnShzygWCdJoLaB33dyjmPeDYrGnSpPh8pAYJgy3LAjGJWsoXOgdHLkLzjetF15SpcRzOe6M1sJrW16O50GMn1ahfVdTvIJMncoT2F2iOgSkPKLiizL0dRp0uiznS/EpumjPiXMChHwwbIBfe2vdkxM41V48Gsq16+fkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779284434; c=relaxed/simple;
	bh=chVFaCHGbpATQXtCsA/mhLguNCJ5Qsb8s1wUq0DQ5VU=;
	h=To:Subject:From:Message-Id:Date; b=JCeh7cy3ZDX7DMAV7cZHTLsiQ1KG8BX6XncvYEeZ/9Yr3I+MEaIll0IiQvJl6d8+Wbhgu6dVzHhC5HUbH2+j1ekyMK0ScAc9zDyUf2laFo9yLvJrsEJGc+7lHgwsHW7TcKLewbyQ/TVM9FQKS6dbtpiZB55J1orGxGtRkoC0PR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Q/8YLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Q/8YLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA4FDC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779284433;
	bh=chVFaCHGbpATQXtCsA/mhLguNCJ5Qsb8s1wUq0DQ5VU=;
	h=To:Subject:From:Date:From;
	b=D/Q/8YLrUEt75gllajo//0gJ2jW0NU4JFjZyeXVmblSki0gHbG1Y2WaaV7/So6uq5
	 M+8xvj8gxrStmi/AuSr6727zqK2+/8n0L0tK9A9p7A6i2R4gs7+zui4KrY07Rk+LIU
	 EYAwtY1sVPobekv9AR0MPZRnDKVp6v682nEpnVJjv2y4DoCw2jFcZhNwdVqfwjwZLd
	 0ZHmHh0SYqTKQPdPP5tFNsnPqXIcDcFEnKb2FRHS2UeCBDCFmpSnheWqMZLYix0YED
	 pU5ialhbEHnR+AKtQ+Z+0Ceo1nJrPtwSE7vV8szEAiw5xya7kMfuy5VT7V6f6INOkG
	 8c8a7w7c6py0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD043CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177928443369.21182.1249458964204333473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7189469d2303266805a678fbdd7fbaa4fe3fe37542fe4b70fd0b995c0b4adbf3
Date: Wed, 20 May 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779284433
