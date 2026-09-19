Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D9B27466A
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789797634; cv=none; b=gA/6qAFkrNR6eBWbdet2q5qRd7hW0oHXevuxE3V5+Ski/mvW8obbogucWLOEJnJUlsQB9u92iVSPovA6hyyp1D3QFUAI9gIvJXaaWEku4KzB0dnni5h26Rxkjiw7DCdY7GVvZYtqdl00XE5n2VcA1tlcwgL3qi5/Iuilo0AV5Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789797634; c=relaxed/simple;
	bh=4v4izH96WXU3ociBz1Rf7+xq7jf0ALl46hYa7cGD9Ds=;
	h=To:Subject:From:Message-Id:Date; b=enVLswsmpeeubYDyqTfhbiTQaWuWOr1YgfhUtgUSWYtSHEiGG7KE06uBeXfqsA7ZwsDtMXIlklxsMtJZ3iQrq2HfDActrfWtKVK+jco/GW6/2nkoa3lnTdvbmns3tpZDDAzLv9kj0odB4tGQu/TOs9Y5gx2nF9alVJjwNG13ZSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U5JuXT0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U5JuXT0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D811DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789797633;
	bh=4v4izH96WXU3ociBz1Rf7+xq7jf0ALl46hYa7cGD9Ds=;
	h=To:Subject:From:Date:From;
	b=U5JuXT0Y+pnXucoCfsfdMzjXv1+ldwI3Aex8pwAR14gLzHZ9hIya++UJLcfWCEUbt
	 2Fc7/rgaIZT+PokZFRp7+Yau/oX3zJg/JW0zR4xjmCTWa4D8qFL9rrI4SVmqPLk8nq
	 AHuVKoSzeGgLPrWcrJxgETyHJwmFHSM4A+dmRfhCsKHdh7bRI8ES6ZVf017XwknwcC
	 B5mxAnI4lND5iBbubYOWtJC67gApAwOlASLTat0iSxIo/IF3rANokf7uVMqf6hZgHv
	 KJW0DBS2PFekzysW+1u9YIkHwInAAlxpiYuCIFmRQxuOu0VyOzNQCikRa5vC2zVRoo
	 kZkgg8E8qy89Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD29CC982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979763368.13423.14437030165778275609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39ac08215286a483dae94b01cea058fea7b2e232e219737eb5b6e38760da221b
Date: Sat, 19 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789797633
