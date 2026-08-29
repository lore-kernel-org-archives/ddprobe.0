Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED5A39AD3B
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787964634; cv=none; b=l1Oi2gsj+X4vvV/n9LM81K5BG7p2U6gRMM9V/B4ltpzbBfhLg9BudK/kOsbdWdPGwZ7IOP6etKkN7yxeG0Tv9npYttGsyQiHJHJWkNdV911O+hkn15fG7pfl0JqDh+pp7O4eZxjIFcgT2Js8gOLUVL43W50jFTIHoX2stEVhTIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787964634; c=relaxed/simple;
	bh=iBzS1q9g83dBh7RKOQhm0V46GD/vtC/JiR6jpSELRZ4=;
	h=To:Subject:From:Message-Id:Date; b=Lv/aXKGd8TcxPByPDRC0BI1SnMWtcd+ptekylUxxirBy2vCNpjKh2qWcEQihe45QYtHWDfwLDAe5WHswG1FANHc6x0yWFrF7NN9vz6xe+6hQJLS8nwP8U+8tiUvu7pPJ1GSZUDXMqCmbK4F9/w/voFTVyskvR46I/Yt54JIbzUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvM/YLk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvM/YLk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D132FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787964633;
	bh=iBzS1q9g83dBh7RKOQhm0V46GD/vtC/JiR6jpSELRZ4=;
	h=To:Subject:From:Date:From;
	b=HvM/YLk7+P0niHPIFM5tqq6nyMlC3smh/GPlZ8B4mCCwI91rEwa5Bw/XPNDuUzJUr
	 +BQ8WMPNugZL2oYj8BEDV9TgLhxEBDE82aIhanYwmfiXCXxvV3gsWqoY2fPHxwmw89
	 yWIDpjTBjW4lZlGeGeUkM26c179gMBPzbMEDKAH5EIf/aG9bMnYgyDiyxdZ4YTnZVF
	 kLS4ZssWH3sA9mHh3yCmiVbrzVgQQNzU3rqyeQOUoo5Q6vcrVfBU12JQsFlW5Rn3Ak
	 zFVhNnL6irmWYO/RnfOFY23gL6s4ZRZa+OvpOL9R2eGaTNwPAYAHs5SLsLA5WuyluL
	 SpobuOXuB/eqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0775C61DBD
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796463368.21178.7482396349217162931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6de98a3629dc030a246e0779513b64b2c5ced7e41f5369627c57191c384fc1
Date: Sat, 29 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787964633
