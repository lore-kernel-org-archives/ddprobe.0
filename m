Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E0D74E10
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712225897; cv=none; b=FGvpSclm7o2RUpypBBY1M8WUUHSzQ3BtvO6Yqp3KH8HCfXsbAq65eiF4AubYRU0ocZBpBOqax1x3sRoSeb3q3Unqs+249tD1r8pzzvBc/4Ky30YUURJiwVIq/3ZEk0Q2heaV/Yea9bLFGfwevgGa/aW14lNMBzP0tJvDLJHVYjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712225897; c=relaxed/simple;
	bh=Y/QyzLNF/k+onoKhKkoajbuFzQKiKaW753/g6/JGeIk=;
	h=To:Subject:From:Message-Id:Date; b=INbiG156Nixl5cWBYutfzyIiMqZzlSVzuh/KiRAVqDc3qDo9AN+7NJWNJJYn4BYaQvWCuWsUTiuATO3K4X38dqeMkPSwYKwduQnSZ+EMz5zgzIEc3S5kpjvebhNZ1JGl3mVyU5ze3bCobXXKK5a7T3qj6vER/wjlhVS99vE/n3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lctrHxbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lctrHxbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74953C433F1
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712225896;
	bh=Y/QyzLNF/k+onoKhKkoajbuFzQKiKaW753/g6/JGeIk=;
	h=To:Subject:From:Date:From;
	b=lctrHxbg3sAinPRLgnuWzu9gsVDakILDTttPyc3RyIPK168nE5HLV460R6SFPeRx7
	 bl4TGupXbqycxAOYLFii+MUKiTj1Zx8HXxhuSuf63Jor6e9cfEBDxZ0qwut9V4g5pJ
	 dl5OUG0db46PJ9uKm6dvvo1HgJJy1cMF4um7cm8X+em9DCA7qKFLsGJCJu7yCoMY89
	 mnD3jn4atlnnTmdIGHY29323sZ7pD/h54/JXSrPSoN9WVUylTknNf4kU+FoQvN8mwx
	 hoZOVKhV/s6xm7J1hJTdKsF9zeKPUeTJYJZBVXJq13gWJwNLdXmNT8zXjhtUBx8yDm
	 hb2DCN49rbAmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60117CD1297
	for <ddprobe@lists.linux.dev>; Thu,  4 Apr 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171222589638.7251.14627602316724327160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788194665add7fa1cf9b5a461535ec634acd142cf6e07f05b03fb3e60c8dff44
Date: Thu, 04 Apr 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712225896
