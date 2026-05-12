Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A615275AE4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778560834; cv=none; b=C5XWOx8VgwlzuEBPevDBhgPLY04no9gnTlwZ949DCgDQ+mqEYGIhyHE0Ec6y3aQ5CrQDnQzhxUND5o66zI53jAKIBqM8PyV3Pbvu5FsQPT1zp9GMQjwJzUUs5LxfZAKz0nLiQLadQthMPl5lpFoM+lEJlcNNcnNbnjA2DhIaN64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778560834; c=relaxed/simple;
	bh=mTyfpMBjwR++U1XPv0xGdrz2LQ9Orpxnadpu4gKrRtg=;
	h=To:Subject:From:Message-Id:Date; b=bcW7qrqdoPwwJekp1wBpH4axOvkNW5rhQP2TSknqnUbDQnk/rha7fQ+jS5WT2VlUvvieOJqz8GWH1aesZCD67k9wtrsHEbUCX6jUWAdAIUAB9Yyojz1Sj67HvurrZyf5fAjQuHBthWAAfSFvM+/ySJYZYHg5PLXBp4O3o0xSecE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXkhe+yE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXkhe+yE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E38C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778560833;
	bh=mTyfpMBjwR++U1XPv0xGdrz2LQ9Orpxnadpu4gKrRtg=;
	h=To:Subject:From:Date:From;
	b=QXkhe+yEmYTmnL2m9pcRud7+NUbGWQ1BAU8jbqcO+LwW2FxNq8TbGwEH9hgodNNty
	 NhtAmwoi6dacxFJYeSgllJrWvumvP16l53TRNZfnzBzx7kcIK1RQLUF9AgQKKhFoqa
	 kZwqzqIafPHApnBFjDSJnhYJx4G0fW+nmvj02AbIVqrt4+TBHxQED6F7BRnd1ETu5E
	 Dd7TEsmV2cKmNwwwUMnobXckY1zRWSLII4q5LhL9lQaH2fYPhzNatXSi2LswUoc/xz
	 rbu6I0EZU/HdF2mvR05NY7VWk3c/ko7u9boakGwUtFXfFsm9EuVT55vxIlUdRZF8N+
	 JZ/iwS6EvTh6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4233CD37AC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856083368.10001.8199249309791145149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe8c25840dbdebcadd05a4a4f1a508c174648d54e9955806b857047dadf5ebd
Date: Tue, 12 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778560833
