Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A313A9D8B
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:13:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780139614; cv=none; b=l1Afax7TyClwGqlXzo9v9ZyyEwjrcXUrTmEwMcJPundzJ2zC26LjtxkRJDq12qO86gZ3Ov0C+mObIJwkDJ3NFKwh/GgvORX48v03KSrr1sC9VZfBDQd5gkyoVDgTszVyb5iWr4BjJKD5g9QfaKSLy9lrLfoVi7YcBEtPBp/NbAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780139614; c=relaxed/simple;
	bh=j6XSQqdTVLjBEDkTE3TW10spr66xiQ8A0jnxOhY00os=;
	h=To:Subject:From:Message-Id:Date; b=p7a21ZhoncN6evGDNTAgHYyRiLJExvTgdQdDY1VxeZlm0SnciJbvZyVOfN/W7G24bEon6mgU778iwFR3eP/Wshx0ZwG3elrcgqeKNibgwEpo3LXzYEN9BHLBt09tvAVYPZy3iHNCupsznEpinJYcwYpvokuzHrNnNMSDjNWfsUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUf2oBFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUf2oBFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC229C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780139613;
	bh=j6XSQqdTVLjBEDkTE3TW10spr66xiQ8A0jnxOhY00os=;
	h=To:Subject:From:Date:From;
	b=BUf2oBFnRIKSZZZD4f2T917btwk9SprLsQpcRWw1Zxv2NV7LXNy2cs8G2vn4IVCo2
	 oTgmA0D2/DOTDNsDXwq4ucKQzK6ReAuNkeNC1kreVu6hJLj1JCwkpXahWj9PfBdiv6
	 f8eOt95kPKrYJR52xRB0KoF9UkoFCdzBYTmj67vfDOEaY4hZv8YzLRYIDj7RFZIGCA
	 lVQuW0dlTjNseCizG2ZnbJii6w6rpHeVtBo5aFWH6on2EKSsdkFG+AkoLaX5URb26q
	 QBMn9NeNy4mogBt18jRzCAmFTfDxzVTSGEuM4VA7Gt1xOGwqSAerTOWyJ7o0WYRd9k
	 EgDJJQr9rhPHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF29FCD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 11:13:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013961368.8224.11021828936122342666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24875964473a55cc35dac10c81bb4da688e5465731b123fcc8febcc87f3415c9
Date: Sat, 30 May 2026 11:13:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780139613
