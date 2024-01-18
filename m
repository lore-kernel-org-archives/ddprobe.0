Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEA2250E1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705583296; cv=none; b=ZsUM1iLWvfSn4fyFwSViwyxi9xpbj2nNtBl+aW+oJj90gGLeq1vKhN56lyjoOpaEG0kem6Scj1TV/ewuByWtGzP05LiEB2UvsOHce12hxaUnPAulaB/r6STSveaeOzsaBFjM2hDgBbigLGAJdFsFhz1O5Z18JQGitZ1T6BWVOj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705583296; c=relaxed/simple;
	bh=TewTMYwaf/Nnd7GZXT8UQVi6xwWF/KkswxsYFczq1QM=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=aI8rG2po6NUUcsZxaq2IN4TKlCtbc8/OUweFrpsphzP1XOLrWwFdmpyeTNlBVxbnw8zcDFyiOuX9CQwxVolg8JArHsQywgf1dBx2zX+wrSdH0lKJ+ZgFC2+MTm0UdbpK7Z+faEMVUICNtVNfg4WEDOdHZS2dU9XuOELge5oJ82M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgo8MQYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgo8MQYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D1FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705583296;
	bh=TewTMYwaf/Nnd7GZXT8UQVi6xwWF/KkswxsYFczq1QM=;
	h=To:Subject:From:Date:From;
	b=lgo8MQYoxR73xS7/LjcA/Goa/q4QFG1ackqIpekz2cEviEmgwbcqz3aAGRT6qFuHT
	 yG7rlF2gZDZ2HidyD6Is+g37loqrWvSRKxLuCDTyP2s41Eh0UC6kvsU29u4D+oQ0Kl
	 3AoR07ucs/8kYWNA1WxJH1Dvc+nq8RiLNUK6UjjOuKZQLIO5Q73I6OIHF9zqedkHwe
	 AqqkmatHZgrH//PZPbKowNCaHgXifAK6FCceAgPUcKNnLnYAKa6yUCylWr7rMwDajI
	 nf1EgVi9kYKqcrgBeSNbev/S9PJyQnfFU2ozB3V5RJ8If3bIELJyQpaR0BVRE9Yo8o
	 Qrgwno2q4ks/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA27C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558329638.11445.16403707460232803175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02109871887c10cf0d100df4a569cf038db68b85b95fca0adae96b321d5c146d
Date: Thu, 18 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705583296
