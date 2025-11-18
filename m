Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6234B27E1D5
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763509915; cv=none; b=pt1QocVhgqsGOZNqMkFJ+vZAVBhENuzKrxh4tCXOhU6QnewPfHXi/qFjKQl8/jxHxb7Xm4TOAg5Fs60uPAKhJ3C5lN5MAGY7EAbVtsTT5oJmhLk2VtcHY/EeNPXJBEIkDKJ9iWUXkyyd0y6G9o1wwlE0tdjPPITmwNDVqHO6CtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763509915; c=relaxed/simple;
	bh=RaMCBGX3TJFbtye1scVlZGLh+4xK7LCueOsYvhaVfCc=;
	h=To:Subject:From:Message-Id:Date; b=dAHIJZ5dXAltHmNamiHXWMD2NcOTC4CiqmT4ZVc+bbk/57K+xf4Dl7wi5X97egdDE1wbet4cuggd0e9CW6QxwvGycihyjfBEAMdHjknB0Ir7Nd0X/w92LGn93xdWgxz92DFboDCmLPdK8E9YrPszZtJjtBBQC1dqNEvu3iOunTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pt8cPCQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pt8cPCQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF105C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763509914;
	bh=RaMCBGX3TJFbtye1scVlZGLh+4xK7LCueOsYvhaVfCc=;
	h=To:Subject:From:Date:From;
	b=Pt8cPCQtfaq1MR5FUnp1btXZZYMDXw7wq8C7GylGKqTJCLpO12tWTs+gnNQPWK4gP
	 SmTQceqaV8KTdezZbRvKbiH4To0g8Aa671ZxTwFtZ2eLy6sRiX28qv+K0fnP/vPj53
	 bsgRmu/hN/+VMJqmTCpXq6+wRWkNE+SYb9BC/7cknBJzK6oVJ8fZQTJ5iEhvmbHCFx
	 8scJ53Esgs/Fp6GoeCFdbtG6e5YMGmL6Ft6eYbtqOgSZjwnKUrcvnPRzkYlHF9yC8W
	 uszI885Uxsn37HkA3/JzevNpnjMoNbRw2iGKFd24qIkFms+yJ3IAuxfuBDhXk1L/pY
	 0teRMh+WOipnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E6CF2560
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 23:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350991358.12157.7655217389738454507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a40c5544a3640d5aa093aa5e57ff4971b89f9be45d398acc1dac8f60211bac
Date: Tue, 18 Nov 2025 23:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763509913
