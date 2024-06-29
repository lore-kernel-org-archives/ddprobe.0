Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709C5803
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719647063; cv=none; b=HIGib0kk8Ormr2snnofHaJgn+PpcHPUfkjWuAH/ci/LxI34OIop+rPabiCncUzrV3qft9MrAPAouQPL65Rt2K9VoqwiCR9cNKlwm0UT+jhu/8uc/mde2EJ1XFckPOO2/QxEeZEGYaMLy7vZGUefHvUBGUpLTvZtZl4t28tFnS34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719647063; c=relaxed/simple;
	bh=ivPbL4A9RgoMN9cK46oc4Hm8UoUiZDGEP3aeuMdZQeg=;
	h=To:Subject:From:Message-Id:Date; b=N/gQTPa5N2oNybrT9qG/IsgwkHujDAPGxWjFzZV+P8CDa7gJmtcX1UXfi/Bhl+vmhEQHmDM5CNExLYnw5mm/9ycTPQo7MUHr8NFBRdIsrSKSS/ZRzXJj8UhDhXHBep5SLLdIsayKcVWdwlgGwUR796HJcNat26cHW4brNe8DaEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVlSm8s1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVlSm8s1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6638C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719647062;
	bh=ivPbL4A9RgoMN9cK46oc4Hm8UoUiZDGEP3aeuMdZQeg=;
	h=To:Subject:From:Date:From;
	b=YVlSm8s1jGk5SOiEO2JvAQBQJhmQI4ZVZ5Fylv9g+dIxw5299Jf5OEX/gvqzARPrm
	 eIlph92MNiGcPpwWx3xttnNlcwbs/CUS4WXbckNzXyriadhXKq3oo9kHv68GeW1Ecw
	 jlZtH2PJcOaKJFr37rsg8VKIHVgRtDyC0kCbzb9FKoXTOKr9C7xkvcfKXT6+bv/xhb
	 J8kdDQvdQRmUCqtjMI7r5tK4hizW9uMavCmdNGZymX3+W5Ky/iOnWDxaTRlfw62Ggv
	 x8OWeY2i4t4FTPaCWeBD74ae8CnSHAvEqTA83A71byI41+jHqpJFP0Wia9XXdRAdtd
	 JZLaWq88F5dwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8139C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964706279.11137.9599025216672192570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541173f827447be43a47e98d778fa73eece7a8da6120c63017aefca99779ab9f
Date: Sat, 29 Jun 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719647062
