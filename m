Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2B729A1
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726947354; cv=none; b=T07pMpaaJgAkObwe4mDFirUdPiMJy8zBj3F4vYZpqnuSv/jZfa6XuAwqsXTpJX3287Hyvvz16VUUIXq0WU6IYM93to7Th8ECkEs2EYwUeQS1Ifpxw5H/8qYFP2u6wVuH6WvpQ813mWPQd5V6v7492DPapqzPru0+EYyX2bifPQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726947354; c=relaxed/simple;
	bh=P47P8E9IDr5ffm/bSrIH2xzmI972kb5rvdearRscJvQ=;
	h=To:Subject:From:Message-Id:Date; b=RYEJFMG3sI3LQMwRfSTZfniypq/8cbZNa17NZwh1cM76zgJ3i686zo+Z6TyziF3h3mSxLYmjNMDiXDxSolEGe2HPkCCnowvj1peFMAK+X2ymV6bVIjW8aw7lqh/aQiHOGDOsrIytAt8vwbnhalX3JA7d24hpXzhe9nvC9Sy8GKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwYFYp3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwYFYp3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C78C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726947353;
	bh=P47P8E9IDr5ffm/bSrIH2xzmI972kb5rvdearRscJvQ=;
	h=To:Subject:From:Date:From;
	b=OwYFYp3rk6TJOaLy7aBXxC2VAvKFocN2wGvY+Nty7TmpQ2x8oVRlPM4hoJwHIRj+Z
	 9p0QAG+5J2B6wsKeQAt4jtbFnbY4SoIW5GViHfmnN/yZws2fwcaNqQn4ZXFc0kuJDU
	 aVvmptyVn9F46zegpttDEKimVzRzub2dS/DuIVvQP6LcF3Lelh99vfaXxVdB0CHLQl
	 4ewXJz5Q6JiFPSJ9IjNDCxHYrXWjmlc3ogwFZ2rop3VkfRuVQn9yjwV6KwfY44cdP+
	 z34iD892Xa4dpUOETCjJA2P3jkwn4dmSX9Kb9jja2UP6lCe91XCbI0GxbmHrWFXwou
	 FlH/jL3uJy6pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969ECCF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172694735358.12461.16174262049103257011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc6472dcc1340ce597fe4bc19a7393873f512792c9830b6fc7bbafdfcf7fb5b9
Date: Sat, 21 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726947353
