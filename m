Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7912F8EB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778275654; cv=none; b=c7KXSAY2ch1MzzKvWQenaIqY7yPXAc5xRQaG73dam+qkbdWZ/Yo3tVKHbjz1Mi0jPAZwicgndhxfDIUEzDc8azKbILk6Pq6652BsULQq3PSUmRIJQT6yqGwGM1WHocpRW3lh9lqNjzn0CiQB3l0qMIGEIQuaq6xt3HAaL7YksEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778275654; c=relaxed/simple;
	bh=UN2Jf12FXRff1SAzHLm4+N5hGBLAa30vgqsZDx0MfC8=;
	h=To:Subject:From:Message-Id:Date; b=Ao0VDd+lj64htvtCaMCaIGbfn8POaOSRih6w6xDif3b2bW5K9TmPQaSKZSXezkJSdch4PW2JylmWW6kF4FIrKjRBIKp2/s+dPPZx1gUBmjMCGUTsdIqsdWlEfUfWVGRI+IVJGjKHNMxNmTomo8OkzVYfHOEiO8TYS+59koujXr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWHCyRLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWHCyRLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C228CC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778275653;
	bh=UN2Jf12FXRff1SAzHLm4+N5hGBLAa30vgqsZDx0MfC8=;
	h=To:Subject:From:Date:From;
	b=dWHCyRLkRrinh7cHl3x2onS0wfeqmwLfvjgUKZOwD4OZHu6JXZG7H29xrHysYMLlv
	 00szJWx804W8ButGfdJ+9AfBpGTi+4SVM4ybsbzA+VH0ylXC/HoGl8nS3yOjUxBpRV
	 /Er0d1GXom9eKbnS19Hn1oxga0I6fvDJIDTNtW+oXpuqnEkAbeoH3QOmww11HH6dbU
	 4RdPFocCBHQAkh08LlcrOc/J0Da7HrJeUZlFXSHnlAXHUi/HOq/AiSDvGodafGk4hr
	 oeYiCssY1uY/fdmvkETcM43//kx/xLYuyg3Dp43pGV6MhX2zH107WVVYH3WW94Z+GS
	 jrV8HOydXEUIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D4CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827565368.21658.9875519587443566211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06feb7b4b1af3bee5a8bbd2c7189e1415a0d9f2f8b383201f38f3f3f859f6b01
Date: Fri, 08 May 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778275653
