Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E9C16087B
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722459354; cv=none; b=o6kLgkKs0S48HyIQ7b2dcnV4QaRHhrJreFcoWhk6aHo+6Y+alttCnO5dkRUpXGMZDHP3iOK09VUMHXzz51FL4hI9kdxF33RmA9qRbF3mMKQ/JnYUjMo2SrcA1yXIuj19bLAHao1Ujt5perpzaP358bH1OFaKL1SXlStAb2DeyWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722459354; c=relaxed/simple;
	bh=SXnJRIlMI2uZdpvNvlUboV9/NGrTj+Uoq9jiWMCdfVo=;
	h=To:Subject:From:Message-Id:Date; b=K+OrtVugAyyZpcBP88TH+kUXessCPWKbWVaybkEpkQzmYhKRiZqbPTPsCbr8gpL3MMpHdj6XTBNQdh/DfpYO1loCqdprH5OJiEdhe22C/N+YH029i6VkzgPTf69ae5cSypz5LpGYJv3KZXrMSpUNk12Gf7kIlws/e6HiCAtCAS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H73mcwB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H73mcwB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0BEC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722459353;
	bh=SXnJRIlMI2uZdpvNvlUboV9/NGrTj+Uoq9jiWMCdfVo=;
	h=To:Subject:From:Date:From;
	b=H73mcwB+WsuAKNZF7V2RABtzwZtSTKZn1aCszyjD1/gp14GGF9hj3fUaMNXkyHzom
	 j5KtcwBBvKA5wzDTgo2y3ghd8TzhoBDZuhxz6x15VZgiw8XeyObOg7HqXZN5ogZ8/g
	 Ggwj0yIWN+qozEmeUX933VumlvoTW/5twVjvxC5xh8Rh682qikUyEPQ6UP9BBBzuOg
	 m0JLr6ejjBcq83ngzv9WAqyND6nw7U1iQQmxG8b5CZdu2ddqkGXBoe1B3cODDX5U0V
	 xrGyYYuRiEFAkhYSBRH20Q8hUZCAH79ioG1QT/wVPV89FzFIQNtMzTDXkfZF/8gUxe
	 cHNsQ/ioJpeMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99913C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172245935361.16205.7725513560426040305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef593d954654f3f6469be707d8ea691c173363d482791b78b93fad36fa8bbc3
Date: Wed, 31 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722459353
