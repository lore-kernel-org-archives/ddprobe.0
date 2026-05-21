Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E379280331
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779346834; cv=none; b=gXoeHeNpSokTsfCqgarL3DTTAAIodtQ17FVDjwcqLpkA9NZikPwSg3fyT0UPXxdig4vfP1b7VKIAn/HIOdk/SNXCKfTe+K6YPMR6DC4XzIcfJ3NiO+WPCQ3aO5KLMDTCE6K0W0pRm9bACE4tJJv77AqEjw8oKTHmkomcA020V6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779346834; c=relaxed/simple;
	bh=QStNC32hsqdmhnZIIir+rQ7NDgA/0WiQO54vgZ61zDE=;
	h=To:Subject:From:Message-Id:Date; b=QFiV7A1vlYT2IAJoifUlm087oOX6TQHFGJkcZ5ZqizRwC6sIVDJfgEPA+k+nosnKOp5UeO5p2P/muaPXXuso5coSRbb8beeTLGbjQ8bWfdFlud8SPF0AAoHTs8AXIocxMJVq3WVLng2Rsznaiv4HVhxQ6ZFeYypSjZ+r+jYOEek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcLxsnqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcLxsnqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA1BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779346833;
	bh=QStNC32hsqdmhnZIIir+rQ7NDgA/0WiQO54vgZ61zDE=;
	h=To:Subject:From:Date:From;
	b=ZcLxsnqYTJjfjECAxeZcVHF0h6iI5lt2lEfx050J3Tmw3UPO3J1bf172C7y1j2S8W
	 iZXOUjk19mr1EFkHa/MDktwkzC2LTUX+7OdP88IrR02K+yLiJI5fTVBAdl0WQ4BY2F
	 m0UiQoZCn+r7jDrUNkR027vREYS1MJpS8XzJHulgqVm2L5H0k1k32uUxzsB7TX+5lf
	 lpuIl7gj4VrAD9oVZa6yHsN2AbACiZ1ME/9FElsNv0KnVTVI+EYYucg2rO3fyfBZ4S
	 j4QrHXqdHQ4oWiwkTHjDzbr55XqXbXCegmCLZ2PwiMbYKSw1YhsHFap8s3aS0ENOG2
	 E/aPOKTLZZfJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E45CD343F
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934683371.6720.12466915140939198150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a75ae8386da95b71bcff73a915d0998f729a1571293a82c1f7bee17e9d67df9
Date: Thu, 21 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779346833
