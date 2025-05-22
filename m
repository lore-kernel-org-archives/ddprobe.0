Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336EF202988
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747898994; cv=none; b=CYK1W7e7p3Pr3GggcrG1u04gCPO4Lyvi1jPyQxDsu2ciYWUDJZui6c8QXTkR12dt0uA7zKT5D6t94Scrjs93snDV9yed7YWJu3FHXJ3uaWmMiM0XFeVZfieg60BMjaS42OtFvkGqXIGPhrkqmlf4D3Nwf+IqRpF0+Mgtq9QvXts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747898994; c=relaxed/simple;
	bh=4VxvHlww5W8MQnDaJzef5PrjXBgAMxLhu4AQgy8q+Qo=;
	h=To:Subject:From:Message-Id:Date; b=DwZcais0uWwmpt5FER2qlukNJ+pEDtRmLADsL7R2ndGFs6dTTrW2vXQWz9U9c+6j+XSU1m8Y6sfxvkGHpnU69OixHTczulrg9jawDCMlsa8sgEA4INKZ3yJLFagjAObUhDXwYo+LVtPR3pAAR+fKXZXIyKux/iMaFTmauYpceno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L86EyrgG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L86EyrgG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21A0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747898993;
	bh=4VxvHlww5W8MQnDaJzef5PrjXBgAMxLhu4AQgy8q+Qo=;
	h=To:Subject:From:Date:From;
	b=L86EyrgGvjxx17OZrPQqvQYagCpwHbypHQbvAdNJtsZWkLMvPrfzG2fkqx1hQ9PNG
	 Y1UyLSVbEu535hnK3ThLb+m8WTmJOyo2KVXAuKKiaUChE3MMaMr/YI+0H9sSQXMBuO
	 TC//kKPqQ6oohoAOxObvkVuivv0VJRmCPHvLaYzHIWs6er8y6fH9nf2Dld4beYmfk8
	 B7wa38+G4I8lU9P6h0GBqGDQMRk0nj3+7AqoEaNF+Nnd5AbwkPaNuD6HfF+/lU8QGG
	 pKUhEaEEdEXKuMSgCqwInXGqyWIOHcBbzVHL4dSb5S30UyfLFotI9fTjSX3JsOWuqB
	 vlftrSqr71BMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9BC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174789899358.4799.632102529704760186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04655650938bba1aa4e28756a88700fce661deed6679fbfaa1388188b1859baf
Date: Thu, 22 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747898993
