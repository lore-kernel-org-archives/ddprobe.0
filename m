Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFB12C2374
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779683554; cv=none; b=o0Y5ZufTUwyyLnA82JXIrouFrQ5rCgHy3OUKKkT1h+gNJH8uDrzU99KHfeDK/ZQMvnDE3jcHwDDIIEmWJyxyKTr7iP/e8FN9RUE3QY1KnlxgSpWSiaOoIb2TgyHo+LvDa8dDy69J8rkTaF5e+8/N+Svk8uqEqU2b2+JT8eUII0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779683554; c=relaxed/simple;
	bh=X9gpCJQpn7p4G8Y9EPIKac6IK7XC34gcx5lN+GAaZ5w=;
	h=To:Subject:From:Message-Id:Date; b=jKFqX3Duk56ceP4A7dC91lpRAujj/Zim7LrAIRXWdAZ9RvoD954meWqjavffdXm6lOMjTFHAQ6soJt96ZrWsWTiwguiJ57rl/i33lkcGXyg/SKR4lZ7tfRUkQzVX5je5AknJYVfJi5mN1UCkvkrOVJ4HcOJCh0LLfql5bRV+62s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U99dnj9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U99dnj9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9EDC2BCC4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779683553;
	bh=X9gpCJQpn7p4G8Y9EPIKac6IK7XC34gcx5lN+GAaZ5w=;
	h=To:Subject:From:Date:From;
	b=U99dnj9tu+bMQ4HSy2IEItmgvfdkyl/VLooMTXrDYcY+5BrNI0jr5bK4SAxI94AAV
	 43fO5pD6m6lBBrEEp3D5ti/jaheNpm5gDKbksERV0DAp21l9ydaHnmJYbJi8E93LuF
	 yNhKIIPUqkQwuWWjw84FL2hVoqNzSt3LPNclBszXVjGMduRgY4RohmhMeOiqdKOiDK
	 9tubzqKmJ0NTPKVOADGV/7BPugARjygVzhY+BC3Ja2MWUmYc5Qt+Sy931IOH7qFIOc
	 txWA4kqyM8OQ7VtJqESG6jLYSIMZALxMC8KNGgGxVT4dmJt7rviS2DEBGf4xxTlqSE
	 eRt5YFQIicNUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9097CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 04:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968355368.6054.7495622147955196023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a3d1a90605203aa9341b71c7272cf06b6a559e80ef8e28a136799b333e2d95
Date: Mon, 25 May 2026 04:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779683553
