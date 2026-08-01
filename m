Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651DC357CE8
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785550234; cv=none; b=eaNMGETn3eJgsxaonY77rINyX/FabZNRwgZSphddcoIcT8qRa5fViKTk4Mpw7riROP3SkaM9tvrl5oQankJN2l/EUQerbZdmS53kMOI4gh1cnT5mNAXSBXBMBDCSu4CZLqCnEOoekutgzm6RxFUy4fBBHUtjtyorKmu6svFgeJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785550234; c=relaxed/simple;
	bh=wHUX18h0mTxa9oqPmfOc/Ioppj3uJvH4l068y/Aj210=;
	h=To:Subject:From:Message-Id:Date; b=pMqyeQ3hQbBlFTbFvPZI6vzuz9SHlY1OA4rbvgGH+QRRgY8KsLxr5REIa3ol1zH6YbjUu6pZXNgjujHpta0F+fuO+XfO2oRUisFAd2HX1qbJjN7qwqgJJRL1wzQzq7ggQNV+8mvKSujGl7FyZw8PXHhLGCDmFDGD1CDF1ErQ6uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F+sDhlcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F+sDhlcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D81BFC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785550233;
	bh=wHUX18h0mTxa9oqPmfOc/Ioppj3uJvH4l068y/Aj210=;
	h=To:Subject:From:Date:From;
	b=F+sDhlcUbPQ13r7c9Zq+KR/5eWtE7XAmfuYS+AHCVZzVvq0U/DXlN/xN8JxTHz83H
	 Rt39odLuzJrtdAzWGTEgLoh3J4hTLyLXTKf5rDHBqVpJ2xaujvxAC/x2gVY+WQX6iU
	 xDdvClKB6fGlE9sOXCDXbLql4nCXPffjnNuE2NTx9dH5wq3tfeMyYqcj+xENb0pefy
	 C545x/L0h3Sa9Vf8naW7barTiMgsjfFEVfPjbHRvHQxYsqwYGAZvVKB177rLWRPOfH
	 5r7LD3LyiTL2RO8xdwX78mm6w5W2IUubqJrSTiWuC4aLoR1DuBEsgBKvLI3jzuOc0j
	 uIeey6GkcguCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A6C55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178555023369.32396.2571445085623522226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2e918573bc27f0eec3b9d6a13a1a146a70de56de1795f98ba50ae579fd831d
Date: Sat, 01 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785550233
