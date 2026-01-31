Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5C5273803
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769900634; cv=none; b=uu4NO68k7OK9gn2x7PVyagKCik/U4rxoAnKcPvnYcx2kmmLqh0SiFm9rE31yJNAQZPL8xKQQtXdrO0LqgqSlYSJ+ektR56ePRqOSAyyaj421ZcWDSyNObxnI6uFyj1c92qik5cga6TD7N5y1XMJxh1Vip28jwsqqvObWIRJXmoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769900634; c=relaxed/simple;
	bh=/mMC6uSagDPPrvz8HmIYxwCc+ozT1IEjV+Dk2T3uoUw=;
	h=To:Subject:From:Message-Id:Date; b=ZlDSrTLrveJwbrNRAoRDq/O4KLPnaS78u9gQSBU+GmeJLv/8bOIMXz14GDx3Bx6L4B2vUvFcXoxdgfZK1XVeuqkcXLUdSc7bnL+QArPWHctOicOOGkCJ1Lt6TaiB4WWBXAlw71O05SZH+iTZjMRQBa3jywry6IGo0yKAUGuuCiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvtInrsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvtInrsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E73C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769900633;
	bh=/mMC6uSagDPPrvz8HmIYxwCc+ozT1IEjV+Dk2T3uoUw=;
	h=To:Subject:From:Date:From;
	b=RvtInrsAesUdIpm5SDLzsrWlq79NJtrLQrOd3Pi00oGdtumiKOQU+193nTgSV6li2
	 IkAAu22tFrUaD7h3Ro4NF/W7APdRfjR0lGTEvzh822MhMB8MB9Y2MFhyZoTH83ndew
	 +Jeo/kLUFtFDtusOAH9cpmzaQoCeFZFJPc9aRvB1ZFoQcpKUwLoJZGfDknJB2i5Okf
	 vdSMGYopX2n/01jjlryKPJOD5rn+GJRPcObq9IVlP3H5pbID1FqtKBfbJwSfO8arIb
	 ba+6FfGQf2TtPMud3bEM/qKGwySRf9Gfp9uq8wp3O5w1XQJaqkHegMrxuVd0fpCWUL
	 N+MkwNMeDbvNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F1E7C6FA
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990063357.26362.5268465028518976402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7864d0b93e164fc4ab8cb07e1506195119d766beba554de6a18e84d6507c5d
Date: Sat, 31 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769900633
