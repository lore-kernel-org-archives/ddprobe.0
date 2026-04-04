Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FED2D5436
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775340934; cv=none; b=UR5pr0zcI3QmqaElqYFFPa8hqweCKe6oJ3nCBpSxiBRc2IpDrOM0bJ9AxQFW3UpvCo09wf1vMuErwcDoeGJ5sn4jIE1NUerxtUs334kb5syosKX8Jmhbst34p0a9tQnDGBSk2yZMdbYg1I63vkDjPTqofOnwdAJRTCMETiGDXA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775340934; c=relaxed/simple;
	bh=PGyIFCoHDMSO4T0200Dqk1lrfboVbkFtEwZIXSa/PJM=;
	h=To:Subject:From:Message-Id:Date; b=JZF9DK1kM9o6SROTWjCo53is776s5g3uObn6oyp4n+HjmG2A595zkMoKTcFBrjixk6FwHOk1J9n92N8qQehK4MOSkCfyQla1wuonBJLlUHW7eImPY8uXLICbyIw7DthmFYQ8gWu4ftjcuO0TB1IzSK7yvU68r0H+gP5s8jLLrEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyCAxhYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyCAxhYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2142C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775340933;
	bh=PGyIFCoHDMSO4T0200Dqk1lrfboVbkFtEwZIXSa/PJM=;
	h=To:Subject:From:Date:From;
	b=WyCAxhYZV5ISCKxLdmHOawuyvJfk+qm04SPx0A9oZC5Cr7pSVjde642SOHkHUHWBW
	 FVfZsfnq5CeaW6XPPTLOX06Vhj2Hga4HpIbqPlDJakFiJiPRnyQ/wukfY2yleCrD+o
	 GPTkXaJbwxZPJEsVhacNkIAKxFeNUmCyJrIISJYqfmjWs9gG1keEhoSalfCuCnsw78
	 IBBMvkqEOiJs5pEyLFQiO8RRtnEVZflHE4sh4p1CIPaZLn+6cwadoXtUoSAtb+NFXI
	 jh2dPmQizFRT2ArEJ5rXF6s9/8NrSAp7G0jkpeNimYuPgZ5mmEFs8FOyvIjT8DjIXk
	 oNeWXpYucM83Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05C0E63FF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 22:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177534093369.11113.3755105159493565267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89866a026cb9d69ac8c4295b63b14fdf87d8be72a1610b0653e54f75ebff7969
Date: Sat, 04 Apr 2026 22:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775340933
