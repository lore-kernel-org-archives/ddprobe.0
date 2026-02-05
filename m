Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1842B3EBF06
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770281034; cv=none; b=TaUwiMqFosgV2kMuqcFT8qZhxhHjruGgqclD2PBZT4LCyGDR0k2FDjReXH19n1AELBcHMBEO0o/FClWDpMYuxWOtdte2PRVSB8Oh12teaeIq5cBSwjD2ZHlUDkywwvPvcgA6eO6ZmogSRUE1C3frBFWZVXICPehKk91xvtyhzLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770281034; c=relaxed/simple;
	bh=EZaliEyhX6iTAkMVwoFrDQ/AxvIO+MZw5dOwmN4Z3G8=;
	h=To:Subject:From:Message-Id:Date; b=IMccjC/prtKUTh8Jh7djyb3bZ+IdVIY0yLrqcSa7UJjxn6VhF73FQtx25Sfn9TLVY0nHh9PgH9LXhmkIE0IaRk9PYiBxwJCmWPCV0MltRVJu7mZquTEpqFQTw4Oe9cMOjsDTxiLzlaVN+/VFtTBlv/G/wuCs6WfGEzdcPJxO9k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkOmgPY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkOmgPY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3760C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770281033;
	bh=EZaliEyhX6iTAkMVwoFrDQ/AxvIO+MZw5dOwmN4Z3G8=;
	h=To:Subject:From:Date:From;
	b=RkOmgPY1IHoCRGm1y/AZlP43QRDBrLZj1M2o2n+S70M87m4FsK4KrbY89vum+U9Lj
	 N8NhlWA4+L8b1LPBtTQOdjJ9Xof8fA85UI8C5NS0LpAByDqWVD5svrPAEALHvSP3Ss
	 LjDU99lIvdapgXNoVeXuLbqW5coLc0XL30o1FuHmJzk3B5qYQWQC5SyUKYHJPYDXPy
	 LK24sZGFPLuLKMNva/Y0tZNXwqcN75Irh3oZAZkkFNGKJADjqgLA280j6+WkYbv0b6
	 NBQb+pUN59hpv9q1FoadWzEUij73ZURmuYtkNogV69JTJSalbuML3YVarquRtmO2FE
	 0MPMMElkxA1wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B9E91290
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177028103358.16943.7546807144379215451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c06d8353722973e42c14631e475404d9ee2c8f69f8eea574f0ce1157d0a834
Date: Thu, 05 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770281033
