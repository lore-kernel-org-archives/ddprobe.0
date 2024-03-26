Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C39AC823BF
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711436296; cv=none; b=WNCisxi70UWor36BsnjZm6n0KoYAdVi2yiK8BkSthagvQB97mJpWVYoZtO6VpuIA28i7SA0uH4BboPqYCtB6oMYItx700bwxNbcrGKOIhUb70ViKAEftOlrHPtMeIZ+NDCZLHncwxAZIMFSp7jTE9Qj0bhxZZ+TiE2d3yItRVmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711436296; c=relaxed/simple;
	bh=+mQh6gFThF9eCvv3KYGIFnyo81jITq7+XVrNFv2c+kc=;
	h=To:Subject:From:Message-Id:Date; b=RdA3M0ts1d+y3Dw0SFS1KM0yelC4nqeACLvZjOPbvz8xaRQF5RNbFd4UhFHcC+eXgU6elKHPXmQq94XUkS0AXXFOJxA5KQaUQIMCU/QCK8QTA6vVaAfVWStUsC7CKZGoolfAua8WWF+N5vQROTO2oUYnNW1y5s2TOAYpFJDUDL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gb4Y+2QO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gb4Y+2QO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A977C433F1
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711436296;
	bh=+mQh6gFThF9eCvv3KYGIFnyo81jITq7+XVrNFv2c+kc=;
	h=To:Subject:From:Date:From;
	b=Gb4Y+2QOqhr4zARD4viHqxhbdqtGcMs8vKx4CmsH9cw9Oe6kdP9VRwlYw7yFodHIX
	 o9CWyCswBZRx6vP3aXEwaEeF9OHLDiv+BrE5FjFEb+ImeQnmKrkXrdsnKZ1gmDQcLp
	 4rr4++24Z+8AtX9/s5NGpFgz/ktJDi9AvWNnYz5KP7a4vzFyKdz41UB5oVVoDidIaM
	 haxnLxBky7xaO13rsl0e9qrryosCoCKiWPEKzxSsWx5qh5nvjjR9OoVe+3DnAcQFR1
	 4NTkwn90yh7gU01U8kjyyAhUPPSGUv44J+AOaENWJ4lZE6wyQhAD+V67cbUCeKFB9U
	 cDIEfsrtH0kSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60423C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171143629638.21804.15471663876980763080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fc72e6e906cee708be73dff06c986d75ca575c1ba1b467703fa291ee6e2fce1
Date: Tue, 26 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711436296
