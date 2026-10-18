Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D07143F8B6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792323634; cv=none; b=cL3CUPpBWr+WOE6JjpUgNtcx5qYYSzjq39y3cftXyuDwIwscEfrCTk2/xAAYm1Rh6M41spoLY2CA2Eg24wP+8JsuJngppm5WqpWLTOZYlL6svcTngfPdd0GY50ML1A2kca2bX1/sMXKdcVHoLaMa4kZuo+qKAMF+o+pnAar8lNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792323634; c=relaxed/simple;
	bh=2oxFPVTyKexiUDmWJJkXrFROh/F8XkqxplYiwX2NHFc=;
	h=To:Subject:From:Message-Id:Date; b=ilrY8JGU+VrBTbIKcBieMHewCiqYdBV1FzxZDtKICv9BsPsQ3uMYAFsjEKF5RlWUfVfsjGNpXURPk9zKiGz5K0Uma/ypZr/DtcyfeZAGAXwDzeWYmfS1n14Ir3xjPFG9vtcAQTgt4A9IJpvx+gniGDd2rMggCakwxRr4VOJqhWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzBqmiVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzBqmiVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40CDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792323633;
	bh=2oxFPVTyKexiUDmWJJkXrFROh/F8XkqxplYiwX2NHFc=;
	h=To:Subject:From:Date:From;
	b=ZzBqmiVfib/tkJW7GE+k2fLZHWcqYKTNT6Rul0xL3CTKLGrIhggNUHPl2HXJlQ4ov
	 Q8eO8EqKDnVLwXCXbQflgUessMyNU6+bk0Zi7mjSuworKhTuEKxuK6uuPv0ihHbo2U
	 HayNrvQKCEg7MxSY5daeiY2QwsCksQrXzM5J++BxtaQ/Y19p2NqratGCgu3ZDX+GUY
	 v1Va7QtOqhbwrh1NvShZDmMkuD0Rlj04cklYeA9jI2asZqIh2Z1hL6cLeBDxXX2k7Z
	 vApnVkLwRsbfQ8nesxqK1JHFT+9UFB8v4wILoJuS4KrRvLr6nuSjED2vhJjvh0XzDY
	 L76gnYxx5VTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1242CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232363369.29644.14720525564814702063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a451af696298d7840cb37261859cd8451a39eff3dcd8b7071c8f92f2099b75
Date: Sun, 18 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792323633
