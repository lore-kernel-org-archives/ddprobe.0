Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF4D4229B5
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783686514; cv=none; b=LCV2RL5UVAdoy9IKDDMjTaVB+KLSiU23JfcbCvEiXr/beUJrHrdvbNtBY4oV0z8Q4xnyJE5eeviuEEpS5hoHk7BDxGqLL9Q+hrqkF+9IjnzGLC3r/Cq6FYXGs7Sp55gH6xYGlGXMcybvm236o9UC3dF4zcyP4+cHVf09fkH5byk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783686514; c=relaxed/simple;
	bh=Jp2mHtWsiCauXMli8coXlKRzBMffHV+jVfSZqMFzLY4=;
	h=To:Subject:From:Message-Id:Date; b=Zle748T87U+dmke5ABmLMSCPGuYLqMY+gF0fEC/wSXr8huPCNoXQ9ckFeUu/zc6sT6JOJP4mwoa/Xeu9rlu92/pB+IJNcpAaD5h6tgqYEetN1FoUzPgOgpaKPwhmpcIZGJcppLbcxJnpfmQw6qn4HjU0fhpPwT1o25q3UgC+K6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkZVwL0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkZVwL0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC24EC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783686513;
	bh=Jp2mHtWsiCauXMli8coXlKRzBMffHV+jVfSZqMFzLY4=;
	h=To:Subject:From:Date:From;
	b=rkZVwL0c43CvcSUBaHiYjd2Q5vF/zznJyJUt891FIjj1UjZkzufXasZqQXi5ffKtr
	 XPctb5FGunxWYJO6e83s8F/dH+hHmqtGpDEWz1l7i5zU+aVL64cnpbEQXiSocNohI5
	 mPCO8hfDPdX42o0IaAeo72nF8CxqCRGLcRw5cj8e0x5kMeSKBO/C+SeM048EWgBSDp
	 2VGfDkPlvJm8KNy6XDZtDYnsg6tAUcy4o43mV15lZf+Z+fFuink66WnpLkmzRNss8N
	 bXdEIv0T6HRwejf+5m9AhInxgnE/OKNwrq4ISX5TRx/zue/jdFiYq4g7rR1HZMK7qS
	 xMZ0YGZ7dtvwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E1EC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178368651368.20815.17242149567608085168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17a34b600f17278a361083b8d6fc41dd44e02d6f0176649e8c700fbfd8496b31
Date: Fri, 10 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783686513
