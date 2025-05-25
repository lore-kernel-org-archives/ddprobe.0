Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375AC4A1D
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748167794; cv=none; b=hRaPqwS5dQbsRRnHdVOY0v0tWgompnMeaWxP6VTV4ncjs/rgolg/xQZ5SO7sCWvtZSm94IkUT/v9ijfdEbGH8YeClPg3Sv/kvFHZTkMm/A4ep+8U9nCXXKlhIRopOYQYponbEm7KZROVOhXZHPYfDDrl8w5RG+vCE16MqIHZrv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748167794; c=relaxed/simple;
	bh=VIZ4cfKV7qPhAiDLxhIRgy7gy+N/oMQA87ysIc1/pVM=;
	h=To:Subject:From:Message-Id:Date; b=VPsMNORiNOJI7ZSpBUynIcfXlN24SArFlP6eL7Yg5Cmv8AvJ15O6oy25AdEREzSPqiNtqQ12L+nEdvzxr1Xe3QrGmEcvQOaOSOFjrWq1BqDEtONp+C83yI2nuEjsMx+QOGWBha81TiVcfvycFPeOW/X/CQzaMTx/Qk3AOK5VDCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RpM49syl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RpM49syl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74D7C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748167793;
	bh=VIZ4cfKV7qPhAiDLxhIRgy7gy+N/oMQA87ysIc1/pVM=;
	h=To:Subject:From:Date:From;
	b=RpM49syl8Rm5B9ifJbTqP7PA2m62NQwvpI2mvppTdLMY86RiUH07uIGYgQzBgyLT1
	 pTKraI96V+HSxYT2uH1atYjOJQ0F+0dm+qv1LkFO4YBER7cigj3+HHX6d4U0ctOZGz
	 OqPXM64T5+2epSRJdPC7XcLXJxpdD3eyUqVMeRWtTfE1Ccr730zt9KzeXJRUmpPt64
	 nKgjpPov0IekOjmTP0FfECtvIfrLjZZ3bp0X3eitZ7am8z3EF4kc6CDy5jVMVR+sxL
	 GRxafMu4BjYpdq9g2XTgfYXPmKzGhnBG4qDZU/Vd8qBJJu04n73ftXE+Ibh0Bu5/Xw
	 6naUMXYUIpIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A7EC54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174816779358.24367.2597730636179538613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64b6bee12b603d89ae637371e7891d53e88f87fc4c3f49151da9cc6b3ead667c
Date: Sun, 25 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748167793
