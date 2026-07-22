Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9718323D2A1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784707714; cv=none; b=HgsndNHS5+CD+v47GxH4yZqwQ6AWaEZ44c1q4X3cZyizCEK9HjmuWVw/r0JrF9Ly7LiEl/pPsVOYamq9/XWTaRvRnX/UDxmH2K0X4QXkzxc/PfFu+C7AmdiUlAizH/IwZcp5iY/2Slqj4fHfrm5b+NRyFRT0lFVzw5oJ5slyuHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784707714; c=relaxed/simple;
	bh=gU3sDlpXVJp8k54CUM2u0OEWNhlz04ijHiS7W75VuOc=;
	h=To:Subject:From:Message-Id:Date; b=Nf2vhtQUrfY2M2g2VjE9Ehkow9Yhh4lcl+zXsDyIfg62gE+qRLfgu4b/VpVZShC0Z6mE+3VM6sk/r24crVKewpVgbvb/B3nS30i0EVoT7BKT3Lv63JeEaRz0rzGUMBoleUJtzfLS9J6+w34taJCfCX2EN/hpe7DydZZmMQ5A8Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu2gNX4s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu2gNX4s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 31339C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784707714;
	bh=gU3sDlpXVJp8k54CUM2u0OEWNhlz04ijHiS7W75VuOc=;
	h=To:Subject:From:Date:From;
	b=Eu2gNX4syFFs51Luuw8Bl+iYVRVMUFENZZh8AEzbG1mC/rbkdtGTAHRtI8O0WT8oH
	 W2RaLYUkg4XqZDd1IDXrixf0KTT0VpTP+APiiPHCMjqd0El1ySn8R2vd2mA9+fc/sw
	 uzbwANYDgW7goTXcIyraGXR3YHiVpHcueosbREDiHqAPojR2PmWBd05H1WxXKyCevQ
	 ZfTRAmA8pG1mpYZ92nxZm9K9sxW7ynouTGaKWBmxhqBfokxQ1tN8XIQ9Tf821FMkYk
	 htjrbQNhvOLxAh+woXgXE3ITGHH+ksAMrceGClg16v8EEy97RO0Mj19bVOoFfwPkW2
	 EHGezp9QQMo+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1D6EC4452D
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178470771395.20730.7954077926651490114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4069ab3b9812216661f0955fedf73ade237bcadcdd9f9e9f5f41bef087b33b38
Date: Wed, 22 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784707713
