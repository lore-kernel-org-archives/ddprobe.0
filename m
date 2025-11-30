Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFCD36D4EB
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764513174; cv=none; b=otuOkxHGhmP62JjEVoqssTXBRj9jFmeA1qRbe0MMKHetvcHhjQwSCXZZucZqNRWbvic1kMhPXr3JHjoDe3rbIAVFw3pjqdDCB2mm+no2tZPvaYTwp+1FIufh1m6jsh56TwcANtPoP0YIxo4ntTvk8zsJYFyw7weqCj0+MfLb0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764513174; c=relaxed/simple;
	bh=M1wgTreec7eeaejwgYygb5cuTNUddzLSTgR1ku+yYdg=;
	h=To:Subject:From:Message-Id:Date; b=ku2rFeJOtaQ6Yv1ZqMHjplTqH9h/UvvP8qX18W2feY+5ye4RZE2G+GXIbGnX0V6vF984iegnleBdy1Bih0uj1ifSZPFfxn2iqX9Qr2wha9c0CNUEuQDXB8PDbhAjd9Z+frYldhYFhovIio9U4AKcJiE7pGUst/QIcJ/GHiHgoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FjRl+i9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FjRl+i9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE59C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764513173;
	bh=M1wgTreec7eeaejwgYygb5cuTNUddzLSTgR1ku+yYdg=;
	h=To:Subject:From:Date:From;
	b=FjRl+i9G3sJEXM6jKoRClIiyECPM/IGaGSmmPDfaAimMR1mRguOvN58Y3NUc10e1w
	 u8EpbxIZaXeMTkL+ouMdDAIU6SY7vU8yNn64NbmwRkEroE5P2wiGTUHxXGdIIT4D3W
	 aci0c1rXz5v0HVsxiqe0wV2QQPXqIKKHdnnej5jji8P71OtxtFPQJu4gDFQEIQxwAH
	 pmX0QxWM/7Hioo3seM+RDm9yY5srfABAQqmxsa2RwwYkVLPVkgkbScHhiBjwkANAH+
	 AjJMTOiH6ttThfvD/Tb43thSsUdk7XzkSFDOxAE0W0FocXMqfbPtE9eurAXbburM/q
	 9QC1NU4LpQtjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9761DD116F3
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451317359.16714.4982063721760430606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71acd61f8c2fa54b7ab5545bdc7f7a793c023ed7111272a7573ecb6d80561c49
Date: Sun, 30 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764513173
