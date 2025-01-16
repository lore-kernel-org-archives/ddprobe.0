Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC01158520
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737058554; cv=none; b=nRsr0/9EcWUg1qIG5hb8io9ao+kPofInkB5wV8cmRilIjJAAILI3NK7UwRkDVhpW5pDGTW3XCE06CzPNk8pulZPOSMMda7NjpIvMmo2wE6XGOwWSkaiNyScvisd9uEcCswMU/NNJPGcQIKjr7weexVPCmTGquto90jFB/zASSgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737058554; c=relaxed/simple;
	bh=HhfEPF/YJZC6jPRcS3CFk4dePFQNoYC5MnT3KOo/PTs=;
	h=To:Subject:From:Message-Id:Date; b=HiJFl8Xb5J/KSZZf7O5L6/epWSAdWH1HcyV2+uKu+d+P6LKvSedVuf/JNP/PuU+EgS19dWNZajQ+a8CKj6AYMMsZUYl+muKkMHNLTonRoTloG04Q3cr8t0uPGVWtHMryhh39iGt40rTrXHI0YhG3APq9HUKi7/MPIOoCg6EDMAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4it1ufa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4it1ufa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3A5C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737058553;
	bh=HhfEPF/YJZC6jPRcS3CFk4dePFQNoYC5MnT3KOo/PTs=;
	h=To:Subject:From:Date:From;
	b=b4it1ufac9GwNaXmtRb27KjvSU1/03L1nGRbYGKa++ydoVzylWU7abtXCgAiYEewM
	 Q9/XHlCel8j9d/G3A3OfuSvf1GJcapnJO+kYrYhOoG4VsEW2OUBkEA3eO2Yho+er03
	 WXk/F0xtQl7TXwHa0c3mimpY+IzfPdvuFtq3qBG2OZ3l/O5BP3LoedL9RSS8MsfdeY
	 vN/Z9bn+gM+iTHcqW3dpb8tP3MfQE88gvItQy3/3iCaOU88jGopKmZBVt0W1hTPBmi
	 2cNJDEc+gpLp7N+8ey7QIhdtXINu4Symk/ymS2IXINokrX73DJLlh6OvYDewFtDGkS
	 e+xpKpSNAUPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ACDC02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173705855360.1869.7231749894358470859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 655015757c4422234174f71a66ff38517a412983b1bfac9b008be46790b67887
Date: Thu, 16 Jan 2025 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737058553
