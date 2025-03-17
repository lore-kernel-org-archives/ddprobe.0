Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5553EA48
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742170194; cv=none; b=FoW3WYmBZ1K0WNWfFQWeKYmMnStL3ijxIn8l8Vp3pWt9DAFIKJ8QtntqL7zKvkyOlMsqyYezzzO9sE4Lom4THn3bYTf/WWLLQ5EXGNy018SJFQwDdwPvQxSiYQDqyG3frMZfn1gI5k8MBbbVV+3b2Vnp8oCaboW1IX/wAr3EEFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742170194; c=relaxed/simple;
	bh=2lLq3NnFctF7WlwCD+6NDA3KpwmstE0Kk33HuC4OlGk=;
	h=To:Subject:From:Message-Id:Date; b=rV9hYHt3HOh0QsOHafUEpQdNGxpevq0ZiCL5LSIM0JsD7YIbTLQ6VvD2xjDg0VbYUFlZVSO1l/Z2Ui27crlTAb6Vhy6TO6lBeCfyAwZm9/I8lK8zJc/JRL2m/Ibe1MAPdB0zSIa0JBK8vayHNkcZ4HSABlshPUXoG+SCo3h8iZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACY4zjPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACY4zjPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B83C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742170193;
	bh=2lLq3NnFctF7WlwCD+6NDA3KpwmstE0Kk33HuC4OlGk=;
	h=To:Subject:From:Date:From;
	b=ACY4zjPUsv9iBcFkmYB1ATKfuxCrH6zY0b9aomb+mc92FnNf0+ViTrQjkhY0WV8Mf
	 fNrApf06HezBgQR/6pSr8gtKnsjaJERsdTjilPnj1rRr9xTnl3QEx/TaKkLAHY619k
	 kWvzAZR9bapJG3bdxHRtA+Zv1mbFBfsjdqlqO5Bag8Dqk6Rf1MRRhAvgnQL0KO6OeL
	 QAgzwD554DIQLjiZ1zxDKR8jbncVdzGWxi5tzSvhaUUotZWFj36uzldQlOSkkU2KY/
	 nUux45+4ik7LNTYIMvuXPh/AaRzc07YXTHdYt3quPhqYXUy7pUKTxvDgi1UswGRcF2
	 cxjxssZXD3eaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92827C28B2F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174217019358.26428.1545808300432374409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6ff4b509f4f90028e7f81d2beed2e1e6cc190e93fcbd3df3ac5acc1f58d3f83
Date: Mon, 17 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742170193
