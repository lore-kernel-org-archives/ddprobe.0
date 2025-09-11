Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390843128CB
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757590795; cv=none; b=QwK3fHQo2zjuxUVqD6UgoeWfrPC86KaYl9DqJXfEv0/vsaNT69I+zeKuRBqkfBVLeTpFggtTPi7XlIlCf0b1qMPq0vX3VJoXF9fB679VzrPMZDhwIxbBYekJphNqNYh+FkhoxvOM9gRt5zu6aOeSUtjjssm68ofeceyvfHEjRS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757590795; c=relaxed/simple;
	bh=v15nmdcM5ckL8OhNxdUY2l21EsO5rMsSCn1TNP3fJFQ=;
	h=To:Subject:From:Message-Id:Date; b=K3I0viGs9cnbJFBshJlFQw01AOcFKsMxfYtJAtzRBGvbamLmyG5l8ctJkaXN47T+KjKlKEJxfh7URgbh0Da4Z6jj9YqmcpdTR9/YF6EW0HwfmchTdFmkV6gPeZOv/+YVFdFX+J4/NUz1kdI2uVjtMUCJghqExXiSRoM8M2BrshI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWU/8h2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWU/8h2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFF4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757590793;
	bh=v15nmdcM5ckL8OhNxdUY2l21EsO5rMsSCn1TNP3fJFQ=;
	h=To:Subject:From:Date:From;
	b=dWU/8h2TMgF9fVg55zVivVvz7DGc0+iVfPmqHjnwtoy4bv4VxYklSNABJQirZIHsD
	 ekrlmM/W34Pe9NJc/Kqm7LRa/QCDATbVAkny7ciDKxuwxGLxOMHiV3PAxZ1fOGc25R
	 ttv2584p8Mk8ba7KCbxSgUDOA6sbWs4zinq487WsSqA6Cc/YccVfAt26o2Jq7wWBH/
	 ycO4L9lr9pcao/oiNVBxTR23R6lB2bJktgPgXnZiOIDSFKh2PMY6h2m+w5xK5Uivv7
	 ndn1aJa2TFt9DlsxHxWbyjc9vdxmIThRmqniWERyUl9q5YGN4ZUHHmBgYpUC9ixHov
	 R2kdehZ3zX6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F111CA1016
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759079357.32309.16884667857628518845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d97f164e2bec42f80fd9727d3f9661d7db75d0e48392e8ed6aa6bb55366fb42
Date: Thu, 11 Sep 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757590793
