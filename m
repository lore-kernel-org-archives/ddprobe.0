Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB3036F428
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788007234; cv=none; b=KzzwmiAqg/UzIYm0YWjDabXDOtkB+6K9c7xDKYvoYqrVmbwOFf1S4Gl8NSE0q4xLCXFMAG/mulHVXzkWZdpBFoKLy9q00ydfr3zDPLuaj4nHoJ9LDJw90kJqQMUfBo2+fJ7vihhZQEMY49Uh4MWXr0HgiuFfQo7/dhjYWAoP9tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788007234; c=relaxed/simple;
	bh=QPTOedzUMoXlJeldDUqfd4sJza/0N8nOmKTgOkVkrmE=;
	h=To:Subject:From:Message-Id:Date; b=gx5ZDxv89bsxOl6LD6XCKe77jsjn3LzNxLv0fpSGsRecaIOJC/U0YqtY/KS9DegRvkXwP7atDyBGANuJYlx28vXWjLaG4jqdPDuYk/x7mBGOooJt+uk4aSeBtH+xfVQ959+LpbMM/YG0RBLA4LIZc51kAyLJBUtiNS58Iugpmzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA38vwVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA38vwVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2958C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788007233;
	bh=QPTOedzUMoXlJeldDUqfd4sJza/0N8nOmKTgOkVkrmE=;
	h=To:Subject:From:Date:From;
	b=uA38vwVtCIyvk0qXJkkIUyi0gM6WVpx84z0mk4cx0YSmcgOxHyunqkTSN2pxWOzc1
	 9SmvHQHioPjyi/u5iFfmDQSUf44Z0/aWCxiVyKS9hyhH435G+E4GL3IWnQQJKmtiHk
	 ziGOk4DsypcRTsPI4pSa7UvI9TePFzLRzUXYe2NR7779zduLCjEkV085XZYQ8zeQAM
	 L+9JNygt4BaPe2+Ilj0SHjzLCK0TCNoy7xbwRSoXOSa95NzcW0EGV1q+PMjHwRAe0m
	 hk4cPkWT6MlUdPZY9FJQVhZ7IZ6GKgiBKuxeZLsqIMj/F3xC+ag06pfuEZpIuBQ3Ou
	 xQ2YWgpj70Gyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FD5C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800723368.7911.16561051284030737127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58dc6099e8de48c30a9478301f0ee2e82b6cfd1f4a92fdc4d0d4f179acf31fb6
Date: Sat, 29 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788007233
