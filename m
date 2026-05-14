Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0A9F1E515
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778737234; cv=none; b=PG4yx0lM0OnVVwz5xIvt0WVSR95ZlGSkhl3rbRGziXR65HnRxmopYbfZ5Z3GEWgXMq4a6oRP5zWOSx5OZjfecZmIbV7lPXPN0iMhOsKNyA3C2X2wrCyNtfM+cfLbw3b8BmVD3seFyOn6WOo0bgwt9d6hCgwqH7D9vSBF+gWaeF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778737234; c=relaxed/simple;
	bh=bURdtH8djUyK3+GVnSaK9CrXuUO0G6UZcAtlR2OxZso=;
	h=To:Subject:From:Message-Id:Date; b=XXHNn0wWqANY0ACC4jeiU5E4RymqzjK+oBqCps6GyokU8/Jw8Vpa7trL9Jhob5ZT5q1Su2YA93yGVu2OOlgp12vWoa59nw8lVG1pC35auYfeF0c4ZTMYP2ymdU7xZ9LHYqnD9RyLiELwBJMxv/hsQrNzaKTD78q/1IN+Vd3/Z5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFCvTavh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFCvTavh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F38C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778737233;
	bh=bURdtH8djUyK3+GVnSaK9CrXuUO0G6UZcAtlR2OxZso=;
	h=To:Subject:From:Date:From;
	b=YFCvTavhZXnPzPdcmiMOvYRNXF38eCxQMQmjbaA25tU8nSa/BBGNhlVqijX2gFqBZ
	 uDeHKpwy/u8YStVryaU6jG1NIZtIohEpMyT1sBVeSkCWJU+/+b/o4ueI0vLpGwudrx
	 rkIaIWnNXCz4TjhSVRXOnjNgUoU9vBvpxu+hyiCQfeJ9eVvz1q/zICY3InUAj8p4Kx
	 TcC5qQ7w3ML3IY8SrvP1bOuUqjJpsGczV6gALVWA/qfrTnhCe7xwIt0FDvFXuxm3ns
	 EQHrrbyQ47O2LUkvfoUc4opGUncMt9TYsC7zVXiQIa1o57pPvyn8wWlMSkgMp1PAqt
	 D1qkUM7WQmCVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C02CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177873723370.12650.9462955686475784280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136145f90c10d31bc890bdd324153771b314d6ec6b275b085c3d72d31f722b9e
Date: Thu, 14 May 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778737233
