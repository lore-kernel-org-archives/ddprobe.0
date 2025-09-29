Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C19023BF8F
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759173594; cv=none; b=OphPuVLBhEMUhBO0/FtQk0rhw1+gbcqjVyQeVyO8BnnzVK38Nj0kL1MMA9+s0tmAQu7awSuGmWq6yeQ+ZQLfVivwf2P2jpYB9emaSOhlSrGxHbgbYKwwe01mFQLFkzWibqu05t+oaD55bwQ6046ixj7cWlSyMlKQRUlNvSqPOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759173594; c=relaxed/simple;
	bh=13ItEumEs6QH3vZVtQxCPpTMvTIhMAG1hnH5MQ2bMvU=;
	h=To:Subject:From:Message-Id:Date; b=V12wBib9wT2RYncxvvVLEFjTx2EHwrUeqNIBJ+Z9gbh7s10YYwtQxkwESleJHtAR/YXoVeR/u78XIUtzGFKYt2EBm4dHdCr10Pf+EmDHr4gM22oWsdFisofJNzLWB1uOosIFtQWVISq8atmyItdS95Y+tCdj3kMfaG9EXCKPnls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRmFfUFd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRmFfUFd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37C1C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759173593;
	bh=13ItEumEs6QH3vZVtQxCPpTMvTIhMAG1hnH5MQ2bMvU=;
	h=To:Subject:From:Date:From;
	b=rRmFfUFd7SjP++JihkdelyCebC4BCDqeONERjs2Sa0kjREZBm0eCVaDIYWfu2ij7C
	 pX8DtArL6dJ0phfqCdHs2gl6aqvu+LbS6fxyXfaVc4lINUQW3EXzfCiAcr/Gtv3PA1
	 ARzJErFxm+Bv++tVA8hIdlXvKkBodmC3mTpaGcbE5XN7IVmL8gfcTTN+8wwslVbSYo
	 LB7O2yevUrOIxh2Ol/BuHVUCGDiO6odMM5H4gi9Z0ZHGWMNnLif0ovLR8dzuR7sWL2
	 jtpKk2g2N/P8Yk8JkgnMW6kN+DnJW2ksOmAQ/9HRDNQ2c5ft6GNa7U9+hRWWgvckNc
	 hjhPigRfHhRUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B9CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917359358.32638.9571676470866377947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c86850f87b1170cc46338a6876da150be453bc2d52bc38df84a4469afad2b6
Date: Mon, 29 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759173593
