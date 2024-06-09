Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DAFD29E
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717918643; cv=none; b=OQdwRUPN02xSq1G0L30IIPo8N7TMvFWRbvtJwMYNjTaOCXJdYaBaiNuzKkBKiEhknxwQHGx4kzqO77Ddz/KoDtAH42i2xHFEyDqSCtb6mZYXB5eVUP/uheuiWMkRDb3KekzGjwJ/SgiSD0qBV2IODsBmDqLXGd2xd1ijPaZSAks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717918643; c=relaxed/simple;
	bh=zxntfJ6au6VftM9V73W7uL6XUK4saJat1JO42dMWRb8=;
	h=To:Subject:From:Message-Id:Date; b=YR3YRWcGpKMlPv0fAHmogIHAQoRmQ2F6CYsPMYwft3TwiojLFHVkcOxl3a0zzNU7KyYPnScyRPRAT6ZdqrPzJSTN/Md0+H8g0LyM9sigUhaQabo5oX3W07O79GP5PTNnB/G6+T0KDi59OX8i4p4yW4sJdG+LSjWCJ4yYhnVR51k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZCSH8KI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZCSH8KI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEE8C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717918642;
	bh=zxntfJ6au6VftM9V73W7uL6XUK4saJat1JO42dMWRb8=;
	h=To:Subject:From:Date:From;
	b=NZCSH8KI+axSJLuRHkILnBid/YhzRFN2K3ys2rNjKxJfjRP5qn/grJTfFp7S2p31g
	 VvVUiM2crfgZLrHkfz0fltUnZFPJ3Y6WnXV7do9NZ7nfsI3NUGfrk0DBviTdBp8zCa
	 E/WmQ82d1XzXUAzV/cUUwXzw1vQtWkybA0QTkxytMjnT98/BgPZWLPK2ioJo3435u2
	 68L0/RIE1lF9AFKwMN4CqjmcS2YujIBI+HqaXjgTr1+I6m9de6bhYzgPyBCEE+yRIA
	 uhnBa2BfWNN7+kvlFf4LyrPOhHf3D46NOWBBpm+/1x8qsZggZq2zC+svf7CyA8M9P0
	 uuXnq5iauvlGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7717C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 07:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171791864278.25771.16798008877122947751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ffef68ef32610f01cc3b178880727fa756f7f003ec321ee2c04a596173432e3
Date: Sun, 09 Jun 2024 07:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717918642
