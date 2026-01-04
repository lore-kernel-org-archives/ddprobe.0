Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0843D2F1FC3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767512634; cv=none; b=VhrYgmPWS/PiJlyhO66/3x/vYdDWihizVOhwisGSXHUaL/NtL329i5oyvV0Vu31Hy7ZmUPhLmPHPGDL+N6mtlq220mOeRCk5E6QYmFKv6iT3zl9zaRcQI2TnDaTI/0Io5IXO/VG1u8r0Cf5eJhDjsSk6iugAjfSWPNtlAC4AwYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767512634; c=relaxed/simple;
	bh=N/Bl3PC5xc1mcLmXXHcFKpTIxPU9ThW3OvVazkEPBUo=;
	h=To:Subject:From:Message-Id:Date; b=Qppt+gY92UNUbszGRqvEOu1ubMgFgO+nfQ4dAK+Cbt+BRHLaeKbUX3A+4ZYcjmR666TmHpXDKvnkQ/3C+9Qn0yFLwSs6oRRXhfpnKrVEXc4lk+jOwLs02NXbZJXB/ySoOQB1IKcvVZkSIY1VZRJWF98goNj/Djh3JYTynzwdl8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHskU7DU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHskU7DU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3AEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767512633;
	bh=N/Bl3PC5xc1mcLmXXHcFKpTIxPU9ThW3OvVazkEPBUo=;
	h=To:Subject:From:Date:From;
	b=qHskU7DUxYzCtvpSjc3Gg3Jqe6y9bZAamjqi1DofYpH+Yujmu7FUHMQ06g8SSmsIz
	 v6Ey++M9mAWgFFWgpy86uolFH3xv85+B1CYa5WyloYbOQRANeUlegQSSMOv7FkAfmK
	 A5QCXfoVX8M4vwdQWvwhCqr7HEVHM1UPoyIIBfLOkQN6pDQfFqXKgSpCeG6GrbJdUQ
	 O8UswnhpMlIKWkfsnzx+DlxQg0U5VKEGWd5B/kI6lAje7LwXrJGjVLA9YQC3vwdkJf
	 IbZ7/gSVNh95I+743OqYruXfaQ44ErLswQYLY1R0QGtjjKbYeymYH4r910uKxWAjJo
	 24NTgbikqYM2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5D9C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176751263357.31774.12904161557819474730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288d01f592fd8d03f4625adf27a7c2b24236bad7aa8dc5695815ceb80bba56f0
Date: Sun, 04 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767512633
