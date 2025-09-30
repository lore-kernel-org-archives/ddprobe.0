Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C42227A11B
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759213194; cv=none; b=As61p96VJOFQYDk65BoVrQipiXR0LUFMzpTnAXqeoIq5oANSDEdnsmas4205IwUTu13XdgxTKksZUqii29PwQ7m6dbhbyBff5czm0BPgZ0lXnh+SHQlxlj4ZeucM8rI2sCglj61q+CSv35ex0kwdXbvJPO7qcsCi4p9qIbAo+2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759213194; c=relaxed/simple;
	bh=noZ5d3utiPXyfypJZPmxow/hb51tEXg6aVM7X57s1Bg=;
	h=To:Subject:From:Message-Id:Date; b=MSY6pCAaT1REtrifHQHyIc7N0AZQ/JGZTuTASQaxLoTgBN5wHjldh+8XAtUoiwxlmjvuLzCoNdqmw0vIuUlzuER0vGl4b7chWXTPIBbeWRHM/m3D+hu2LvIzLst30ULRWTU4u1qyBWvmtwPl3Eq626bkRZm2HBxLYFiy5Aa7pRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgN97B9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgN97B9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1035C113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759213193;
	bh=noZ5d3utiPXyfypJZPmxow/hb51tEXg6aVM7X57s1Bg=;
	h=To:Subject:From:Date:From;
	b=MgN97B9XBxZBMb3QBEKm3ceOzLDmNsh6AyyalpXTACJBXfCHUpP3/w9j7y88frTXp
	 xkavGQWKVWTxRysBqtbso1dtCU6Li4lqgVQzwCRiePtD0La7LSndAKuGkdkXjKtnCe
	 TaNvRWyxnrNDtL1dlsry+TbipQKXBOYUTej+FYe4hEiZ2SFOAQZ0JMkNkQpvVFzyk1
	 BhT9CJ99sH/My0WbY1caOjbtccb9SDwIeaIM709b6oDNuM9SVsX5Vf4xkJJeoVCIuh
	 Zxt8BQaI0kuXygS9b0/GVxm7DLyqbsNI1Bwyjh862N8y6E8fGE5uwhxk2rasHTmbWa
	 UlP8qslJFKDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00B6CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921319360.30791.13550988019475239689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3425ae712c3ed2f3f9400af5310517c24a0721ec02378362f69caf8b78baa039
Date: Tue, 30 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759213193
