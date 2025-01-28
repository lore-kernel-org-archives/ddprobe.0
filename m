Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D964C1DEFCC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040753; cv=none; b=gaWh2HaEONGfRjVxOFLkXaR9CKve9SOdXxLQbbNvXvPLlx0AIeqG/pLupoP63nc8Ops8awwWcL2IdBV1gba52Pr4VsS/VUIBIZoBRq3Xqx8usTLuteiAu4dyyaf9Xnc9Em4U7kt3xNh7O1VHZb1XtYhdEKfd7qTMMO586JhqHRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040753; c=relaxed/simple;
	bh=NaitWoVBq7b93CSBFLj/A4Arli16c6jAdNQz1Dd5hsU=;
	h=To:Subject:From:Message-Id:Date; b=IEeX98KTJ041N1R1JuAE44F+5ZYCMX74OnEyKOfTsRK+f9gBG1qjLXELqwbmmjz9SDdXZzwkgTVpixH/KeiQr6at14beaVa9iI16gqffcKr/P+V1GN5dn79Sfke1UCez/5HHaBFZY2sfDqTpzr9lwLPV89XqA4zZy2mKQf33OTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLTGysVB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLTGysVB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB311C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738040753;
	bh=NaitWoVBq7b93CSBFLj/A4Arli16c6jAdNQz1Dd5hsU=;
	h=To:Subject:From:Date:From;
	b=SLTGysVB+AeSmlEWQv5h5C/1SqmRp84NHhftzoDv594B73p2arJKVBJCkdUu8fb1o
	 siWrXGu3O50fCYQMu8zVmnALJTjVG6GvIv/mpHwKkL5CpAmMYbN+BNOKLVkoWuDFm1
	 0lTj8pU9fBvLOKiiRGoJSNQI2EJbPm5Z1yHJzV8oYZZmr8jpUUPDGMKx4jmv+oMYFU
	 ZNtown3yjtYZtAQwgI1A3Y40gTDkfPs61iE+NtNDaoum3C6MTJbpz9bsjlmxef55iR
	 ZJrFTjvORz7NwWwMcF0XyuLr8sAgAFXafkS9nwuwQUYcJkg2lfsd6CddfTRPgW8k4M
	 OiXd2BogfWxbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98767C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804075361.15651.15326719234873621876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57d6114a05044e9f3c76154db84d7186d4c555d54f48beb392688d658a519f6
Date: Tue, 28 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738040753
