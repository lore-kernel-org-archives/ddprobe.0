Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36487405FB
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731881754; cv=none; b=IW2U4J73QYx2F884skGhFJQCloRYWK1BTaBDjUoZwHxD9/LMlgBBilOCPebwFGJXlmJduor2M2Dkq3TNzHEPRIX6ovWpj6JACceKicuoYhqtdpnzwiXEhIrPxbQPp50zQvb8JanDgRk+TYGo4SvXazYfL056M0RpIiHMvaH2t/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731881754; c=relaxed/simple;
	bh=rwF4IEiIeGRz5LDtKsgOLjl/EQedTP9RgEAQ45OOOEQ=;
	h=To:Subject:From:Message-Id:Date; b=NdrhEtGlABd87xUoC2L/ZmTGjUURYymIKXcTcXeacxtn7IIsr4CL+CBbb/FW5wFz8DBSZUVo03iZrJyjuDbVPkFEGaigqFUl6zER+YHaR9OIWI4EvYKVtyeIygmtjlxWy+APEj0i8eThn/xVvSRvDQUnYA39ZJdh0Ts3x+qjpOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkdA/Hb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkdA/Hb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FF2C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731881753;
	bh=rwF4IEiIeGRz5LDtKsgOLjl/EQedTP9RgEAQ45OOOEQ=;
	h=To:Subject:From:Date:From;
	b=bkdA/Hb+CsYNWNWtmAvIgSbjPxbeR+cCVTRc17Bn++j6HA1oPmuDafuA+kTyAUuIF
	 +rCtNr8uLtVUYdcYmRuXrxRliaoGFS8wVU5r4Gya8LZgJvzWG5ULSN3i2MZuG1YuPn
	 TFlowamX2qzZ6EQii+OfOpHUKhgKUCg+x6mJPctfQcQOh1Rk3kvfqxxjPKg+tEqZ5U
	 s2OyjeMB573vvxwkH/vqFCI2XgK7Z+JnHHmkFtyxo4s6nTodysRJPCAKwJDJ0MsSfq
	 p8WjiHf1qqd8h6RupGO7llH9OS9mS6ASEydvfEnQOfIE1YZcmePdCegErUOK3yTnjw
	 AmLXYMl3MRpkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7C0D10F33
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173188175361.11045.4581888150753693379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a827f8ae8ba71c869fc69d30536f1c659c2f3eacbf5bc53376a146a0bd171348
Date: Sun, 17 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731881753
