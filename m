Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5690A125B9
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723515354; cv=none; b=A/GtOk0i+3vL1mFu8UWJOAM5lhVyNPXr8OZxTDpIx9FpmBapMt+gWlQFUqFx48T/dYKnFbSMEhUtJHGf0M+ARX/I7PPry2TuTfG7ka7AOD9Sz3HKb6CQn1snnBncJ7fyVm5YByPvUikZtgXv/fSMSyV0ia2TL5i+uOBGic7/57U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723515354; c=relaxed/simple;
	bh=0bx089fA/WpdsYX8S6p5CwVvms/UyeVBj8GMTEsWm/U=;
	h=To:Subject:From:Message-Id:Date; b=rvzlZDWw12OMLQA0dkM9Z6kcnVMGRfu773J6A3u9GXYAhRFet9OOvWVdfFMN2+sSAkPJ9jORVpvyUUCmLFZVMdU9ylEunB6nYy86q3f1RXbAl86kGxqXfBFuvqPU0qynKuHD6+j2IXGxp00/T9/SvOw3SuGO2MMxWE/fmIxqVIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AujHCo/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AujHCo/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2231C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723515353;
	bh=0bx089fA/WpdsYX8S6p5CwVvms/UyeVBj8GMTEsWm/U=;
	h=To:Subject:From:Date:From;
	b=AujHCo/vXE8UE2mvCYWfbnmLUglmrGiGlxfvRAvYUge1kcotfeANJtBnZHAEa5Vu+
	 VYBjx/t5B+VbyBh+CJHroE+49Lc5X7bz0J/4HZjm12AhrNDtD1rO2Zh5AmrYxaXNBG
	 MsvgIr1QxRkMppySdzP+RmxjtwtgVuFByEa92KuX5im/+v8mFlTZ1etlYsryrxbTxD
	 AQAo/SHbZxbBBnvKPWGR6j1xcK+fpOuXu3frzaajOcz6Z7v3a9cTirbjGgbNV/880f
	 lZ9MYJylfnWXyGBdUC48iokR0Rr8gDGg6BoZI5D6c5thtuy2jvjIYrjOjyGA4dEJxL
	 yXvNKHUl72GZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9B5C52D7D
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172351535363.24159.7864887526814289500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4048232de893e240afa5422abb207ed8e4a7b52b66910084c245d8ef72a8b474
Date: Tue, 13 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723515353
