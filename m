Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3445025486D
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759822794; cv=none; b=DzDsD8k0Fpd6A0U2h9WiM4kbk/n0us7lt7cJVWqhC56tzSMWIG98iNR6nzQKur9G9TvIpDIXl1eYBwg3iU4AxIyYQFIZjLWTJbSHos83+2GspoOKbEfItT1dbcHslKiJSSaDgu7NWLUKfbdVeLfaOM81o5F+LzLpnEioVrx/ktk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759822794; c=relaxed/simple;
	bh=BbVlQcMnPs2rhzGQ0CGH4FrI8IoQJCubcPFXo9su4cA=;
	h=To:Subject:From:Message-Id:Date; b=JpmvzyOApsH5HKO1wUW/35HO0fJycL3D8kIFj+xrzlM0f5V2tYFTerv+6AuqZ+FXJWosw7hpAnJmcGymPmLTRi2+DT630aedJWnvgrEQlsIknaiMoxhbls6vsqvxHPRxJ6WX33w2MloLLMVtYXQ4hKAnZj7gFJwQQQ7qgq72IC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPqE+LGq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPqE+LGq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB23FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759822793;
	bh=BbVlQcMnPs2rhzGQ0CGH4FrI8IoQJCubcPFXo9su4cA=;
	h=To:Subject:From:Date:From;
	b=hPqE+LGqDDVBo4grD30waZAjM8xKzpHG+qkkKbzeHQA0xgavwOYU5367KvFR2glBU
	 EW81xG7834D5y70J/5XTQTDy2Qy/mTXpzm9MQb1jhnZd0p7nqQR3ix80/4nubswy/J
	 f7AigXeXZosBXJ7weCvbHJ4quL+DwvFiDZUXQH7ScX84VBtmloevFbRXDr6nG+hdDc
	 IgmdjmPLpIZL1U7QpPQhxVd0XRd3dUtIR6HzfiNkni5EPmMT3E/+PSS1FDmlcpb0zl
	 YnQEaFEja958HfhZT664Z4yQ0QBLxf8Rccv9f/tuQPnoX6WlNtvM1RVKspJsetCinx
	 +ak29RmectLbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98766CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982279360.4549.10900055136789457810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b59c53c6621292ad2489cba60b9a0be25d5bd7c8827e5aef2e78b527dd4e7b4
Date: Tue, 07 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759822793
