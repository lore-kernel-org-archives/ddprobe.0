Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3507B190692
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732453554; cv=none; b=ButBmkhY0RCI5+IRFJ32N40VxhBLPILg606rYyOfAwDwn1bCwKlTkgCHDHRjv0Md441ZT7XSYypq0B7mRmX9jMRo5JlArwGz0TMarN1QfvFPrd5Ju88QlaEZbQoCr2Eej6uYSW/tgWw8w5soXQJJdlucQ8nstMcoczkq5d9ObTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732453554; c=relaxed/simple;
	bh=Yn8oU6BYY3AzwIoqQUd20z9TdN0Eh9ljB/h5V5UjgqU=;
	h=To:Subject:From:Message-Id:Date; b=detc0QDlvdob6Ls5YQrOTbTmmruITGkUV46IxH6c2oRFIHjHPmy02uPkHWQQbZag6ILw4/rOnrHjW5B3vhDaw085457/UWMIZyicND3e5ggfEiBOw6fF+qYngH0s87dqOhaDCtCt1NodT+b15wVdbf0Ev4a+i7GknOBK49lMXpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNZYhlXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNZYhlXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E46C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732453553;
	bh=Yn8oU6BYY3AzwIoqQUd20z9TdN0Eh9ljB/h5V5UjgqU=;
	h=To:Subject:From:Date:From;
	b=iNZYhlXkq0tfMNYsgw9SQOo2uM/uvLZEgzeR5G5ki89WLKSycpqC/Wc1x4louTJm5
	 hzKlr9Nn6EhgbL7S0tqIGj02A/TWfO3XD12jUZJwqJweMHnqv+ty4mQG1GKhQiPY/B
	 f2aV/sABZaGW3XnRk/XCrapYeIfCFYs+24b2gVofkwUB9SHIONESSPncefzlzGVbqO
	 +LNKzzQgwSI/PeB2xG0/u1Sf9+A9TLYC64ArKmMCVKJoKUzSqaHVygchY6/RppJDmb
	 kkG48JbgZJ08rOd1f2MQnpntuaDiwRtsloP3sL79QGTHE4TMDZrcl6apP4Gnuo3ofi
	 Zp87aDUZSKnMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8A7E668AB
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173245355363.15226.1553286791805747072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43191ae8dcae31547a1cfff71a6ca2a47c3dd78470e954b7b328a4a0b145758d
Date: Sun, 24 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732453553
