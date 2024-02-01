Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECE0D39843
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706756297; cv=none; b=JHvhKgr6h4fnAu438xcRfcyeUasngBB8bkwvJ1zYaTJt8XSI/saZVC5VoNAJtLtD9Zgv3Q6839JhDQVssje32jWu2X894klh97zMQXe8gdwpqRSo20E/IwBWST1B3RcUp2aJZwwyoGLh+5KxI8Ja3pqF/DAaTQsJ+ZvNnbCF0GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706756297; c=relaxed/simple;
	bh=TkYObeY0P0XP19fgvyVZx/WoR4NqNcxp4g2UNTV0DB8=;
	h=To:Subject:From:Message-Id:Date; b=Vk8/8hsnDH/WnKdwfn8D9zAe9Pegt36f8AMsCemuoLWDMBdgvD9O3aI8ReoNfBW3k9nB4RSIZZXwRr7OtsgFvEoHpYPGFQaglwDSV5E9ko6M9BPOq+CjPWJB/3K4G0Zsbz8jcc+8F0OwHDopYFKCoAEBEc6ztI6fP2YaQOqJpxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da0vQyvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da0vQyvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF20C433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706756296;
	bh=TkYObeY0P0XP19fgvyVZx/WoR4NqNcxp4g2UNTV0DB8=;
	h=To:Subject:From:Date:From;
	b=Da0vQyvz2hY1dNLNzFX2va8CR6Uq1nW2PV7qS8d9Z0AGaChOme3YXjtifWIpUNPbT
	 rVKJHwSbq9BfDhXME93XdLd+4NjepJg1TNEVHS8GADDTm4raNtR6b6ZJnex/kOWBz4
	 V3H5RSjTLv5xa+QRzaBWK4D+RfC/fqRxHS8q40U+hbkdZugNpxa3lLplkZts3h1h3f
	 yq52UmAc2Y4zi0OAfQQtXfV29ArLaSEAtaUbPDfuYoHLVS8hLHfuteEMVITMGxIikd
	 aNR8FGr6BBuUemdcg0QuDul8gjhM1kyv/azaPJK2HcqBkkTfgfv7gQ+YmRDkUqOlYh
	 zzq+zL2/7icZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A92C47258
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170675629638.5018.11474531821910171533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03506d82ce54d1a5fa9ef8a97efadf1b3963abe722f46030724fcc7358d17198
Date: Thu, 01 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706756296
