Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36B4424D47
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790239834; cv=none; b=sSuQC80bLDE5Go2sVwQBypWOmHHJyMriBcb8N94YYKw+XLIp5+C85v5FZewgs4EEZrTBFgNNZDpeTvh0Cw00fPl07aQ+tpaG+soROyIKLolLWMSeVfPLytGCrXNX5sx6YgNOK1/tJ/r4gnK6kicdiN2iiB0VuCb1v97adT+9B40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790239834; c=relaxed/simple;
	bh=ok4Mkgnv6gyfAv0Q4I17uQHJEavDIqV7XMyAErarWgA=;
	h=To:Subject:From:Message-Id:Date; b=biJ4ilb5Ib7xEvYZ/NYm4axsggGMY4h2Ti6WVljagRfBQkTUK59xSBZZ4it/wbZv5u2v58cxvepFkvb6UGM/AJgtQHuZQzeCaoiI+NxyghFFvcUDrAQ6vGrzWcE298xxP0uSNFGWWeQWAIv5QLkTCpd0qTQytB+zApXAOv/6iok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A8VEP5Z1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8VEP5Z1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB4CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790239833;
	bh=ok4Mkgnv6gyfAv0Q4I17uQHJEavDIqV7XMyAErarWgA=;
	h=To:Subject:From:Date:From;
	b=A8VEP5Z15pvynl7mwf7wg2qlc3UbMQ69kRx2pVBhLE7RCEvTcvGnNDXtXJ1M9bSPW
	 CwInQ8Cg+27wFPxOt7h+dkr8Hcyo5JIBkzO6IkvWQGCxRTiyIb06pzJ9z85ncYewKx
	 FZm6F205nTnO3WRI1aAksAV5jF2F5wGxTMCK/0LwVeiVYs8WC0jQtQ73s4TiHNxTK6
	 L5Tco8Ra4+vpFUKIesdqXiEwHir6U+AgyXKhcz0y9ictdUwD6LtNrszPWLQOawF30b
	 T+OgNorZePG6cVGfsLiDyBnIfkCuUgPE2X+HL1hXfzIKbfDq74rkNudEiSlNQpMHo6
	 nUboiksUVlcgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC5FC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023983368.30802.13982493923928348746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2269565b9f66c4fbd37a0f9a8b9f0b08c87dc0383e056fc09a7f13f328a8d87
Date: Thu, 24 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790239833
