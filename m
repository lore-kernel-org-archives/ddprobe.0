Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE601F8ADF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733244954; cv=none; b=Vx6jF6XYZmoj8Dc5nZEAsC0UIXhWNy9qgTQQvGdnaGFXNt5U5Mu45orSClvcEW0QvNkUZZ881aUHPz26+pc2MIs1BFqC401ombGUZwiHXnQyDq71j6pw8xPngPYjlFfOPlC5LN8Jb+k7AVh+KKociNjJTFYqRtDYTVrkdihFLBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733244954; c=relaxed/simple;
	bh=zVSjyvVxOnvYe9RMPbw4+NUv+2MpKIawDNuz0mCU6TU=;
	h=To:Subject:From:Message-Id:Date; b=nb3BfZfYgObsQtD0FJ26n3+bZxCCVCoZNAt28xsji2lbgpHsgPZnIz2+q/jVgcinF3E1iABDD0z2PhCB2H33WLUzsbTSR6XxwX7sDjXhksRE90/j6Uu9PYuDVl3nj/3N9haaao5q3DsfPD6ncAbcG6Zoyv4A+hgYtMl4AvQOqkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VAx2bVZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VAx2bVZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5297C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733244953;
	bh=zVSjyvVxOnvYe9RMPbw4+NUv+2MpKIawDNuz0mCU6TU=;
	h=To:Subject:From:Date:From;
	b=VAx2bVZtwH+UZrjfash9z/qY4N0+C6aesCSlyi4x13R0LCUotXQ/n03jcm0xew4ZK
	 yfySbKtdeO7ZShG+nPgnfoN2pGC1b+ycJdE+pt8BLhZWB9izMwUi++eOYslxwErf07
	 QA8fQ4nqFjsKkP8YZNI0t95cLgbOuS6xZ1sQbXF3r9+7uk6Z61+KsejgPta6Av1Oqs
	 6X8kbmvwCG9e2RtEOngMbCGxvBbj6doESKzWh/CaQTfXq3jLWLxDnnzYqBWJZSu2cb
	 hhz79BMCAgaH1HSet0txYJTnT/7A0aB1ANtBhPwcG9rREkSXWcGoT0xHcpw4qqKTDi
	 Npm99sK6+AgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97831E74AC3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324495360.19749.7386353386765916654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6284e76ceb47c3de5e5c3d3a71941eac40423703f81da304ccf7c7d999c7175c
Date: Tue, 03 Dec 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733244953
