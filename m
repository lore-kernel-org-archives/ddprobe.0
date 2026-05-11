Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3746E28505E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778512234; cv=none; b=opfLILpcIK1qydEEnT11CT6NTQRNqSKeOwAY66MoXtJ+ySar5cy7x+OFAt7btG8fGzlSDtfdq2ftJKTrYL56lDGfiRXaPG7+hyWSp72uaX1WhzRwrnOeakHwaxt4vyo6tQAML2zU4ubQCoQN077un3c4i7RDtn4YqYXBXpGG/90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778512234; c=relaxed/simple;
	bh=nSk6QHN0WG0uo2LWmDhlXeO16NLIIHa9hf6pAKGyfaY=;
	h=To:Subject:From:Message-Id:Date; b=G6xHJLtXublAX8L7Oj8rXvwu8KfH7ttFWUC7jVaQ773DzvAk795QKR20TRNfLluQdOv+jtLA2rhQ0IwyfbYYR0GKOUQsJHQYvJ+iuMxJby7yJ186oiAIpQeZ2iW6Fvd5MHq9cg4u0PY+U2BIEFQzA4XjTDEQ/EWgyP4+Bvm7ip4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU7+mPVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU7+mPVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98E3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778512233;
	bh=nSk6QHN0WG0uo2LWmDhlXeO16NLIIHa9hf6pAKGyfaY=;
	h=To:Subject:From:Date:From;
	b=SU7+mPVbbG6ABF/sVgmx8QD7LLvFb+REDJ1X4cLaYaxJhfKHH6Y0vPfWOgUDMYKhR
	 taYI1lJaIS+s501WDAygDcN7t0LCmkG2Xn/Qw8NLnilRZTLw8dMkWjuh+4wVzjbd6A
	 UJB2ai/DYO/1wkpsWvCsFSsHwN/8o4RopQY3anvHaJY6X19RVDPQA+Wxk6tMWEyJ+5
	 +Jc7Ryydq+ZYPlw9U49aTU0wpRbajlyWBOsqWA2bDTslzlC08cN4UJHQ8+lsdR5d1p
	 2ZKMHqDRMYL9Laq3i0YYVZE4R0jd/Gquwxk4b0Az7MJetHdIyiEfXg5NoPrz3PwxL6
	 9SnReRWzQD35w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7FCD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851223368.15361.14186833273035785379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ef793162daccae29317e5e6f9ab3159acb90e97b1cae327eb47f48acad24375
Date: Mon, 11 May 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778512233
