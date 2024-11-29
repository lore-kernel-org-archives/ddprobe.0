Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C68638FAD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732922754; cv=none; b=ZIMPktZIh6lJcAk9WS3vP2S0GXR5H8yjA3p0d2LXrXU9cZXOkC3cgDndmLW6WDEhJvS8Av/zs6ZBDQfA9f/RlJetFNagIX6La1gfSrAOcNjhIuhh/bCxnB7h2kGXj8MsQgRei56tGhiGUsXTcCw4uB5BdMgtXriPCiEmJrt8yEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732922754; c=relaxed/simple;
	bh=UwhhIb6F50gY7Hozn//EOnMkgXOHaPRDN28Na6XtN/g=;
	h=To:Subject:From:Message-Id:Date; b=kQk0/GEQ/p2ODWcgNwrYBVCwHaBii6SGaNiSptXOTgmrxCDI9lS14eI5mwruTi0/3vwqAsH+OcJf1tNv6EUjLyz4vKiRAU0lwstXrMttT/sujfqomEU5aEpxWn9I9hugxwXfsm3Vro7Z86vX9Z+OcIG7paPspWadWeWWKdZ7umk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBF2da0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBF2da0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD802C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732922753;
	bh=UwhhIb6F50gY7Hozn//EOnMkgXOHaPRDN28Na6XtN/g=;
	h=To:Subject:From:Date:From;
	b=kBF2da0gBdeyB7AHAR+IH0zqf77+ihefz2VppSPdObtqR2BZSu00wZRLOLoLBjLbL
	 8HG0yoo0f57ajelStnKcAO7qrLoRjAt/555DfTm3VDdsbzDI42pfaL6IdKh0xjhMxD
	 oqNNqZZPOOmGuVhtBEh0aByrLi8oIcwNZSkixyXp/q7oNhRJb/M0+acqk8nDSbAfjm
	 Z07cMlfNPGC0fy8omYyd7m3/Ln7jgVm2vv6gw+Uf+9RQkt3Ke5BmUBN0JjVPEY5j+C
	 KJRSKiD7PSm+F7eAKm5Rvs7YLAQRh1BDHI9iX4udTGQNIM+HZHO+b66Ud+7w2SoZt2
	 YKGtsP8Nl4DOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96641D735E5
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292275360.1800.15230459677340815958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e5d7743ca04e2cde26f2953074a2e45c77ce8743bae3d6c8192c5f7fd21823c
Date: Fri, 29 Nov 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732922753
