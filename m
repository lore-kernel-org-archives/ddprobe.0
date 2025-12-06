Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE772D9ED1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765015974; cv=none; b=dVBumStqSn1XeKTc7NOBD2wbGlu/LzXmG4YlDMBLkSBhXHkF58djNHFggl9OrI5hXcLV7JA4cjzsXf7DxSKRosvb6c9qGNkcVRQo/9RjxcSaDacpi2OFswmUH2I3YRSLU2fYpp2uWqM9aJx7NzVLz7TL2Qcu3OdGbDJ+pNeobjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765015974; c=relaxed/simple;
	bh=LsvXbZkflqkCyPiaIPqxN4phwtEkpKe7M0BFA3abCpg=;
	h=To:Subject:From:Message-Id:Date; b=dnvyMHnkNapMWLHMas1I7oX64chhMXuYkx25kS+VIdrQTM+wj396LOUpB70QX2qz3r+bSAV0CCxhYPvPQ2gNz64meXe6GOgKJmzjARCpqAJCDMsrcrnmjL940s896BUmhPFGh8bESYsFWV00MR+eUK1mzfhfoplMy1vC9o5jMYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRXB5f0o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRXB5f0o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5793C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765015973;
	bh=LsvXbZkflqkCyPiaIPqxN4phwtEkpKe7M0BFA3abCpg=;
	h=To:Subject:From:Date:From;
	b=VRXB5f0oVtwzsUXIm+Wi91zVf/HwfkQnbcR3sGxZxdKe6eYd+rkwMOsFQq+v5XtKe
	 9CNQXCC3Rv7dzqnFZQyMejSlHz9tsXn0ekIE3qE6lSkrnTxmnxRrP0V29h+reWTMNT
	 4AfKKizNiuw7xvYKQDNIBvTDL8Wby5RX0+8iQAXbu8HtlHvJTtzrzDo2V1H9GFn5jB
	 XwZ27i99m/3LNkPvkH7uPvkJl5iEYUzMTGwgbKaNbOQtve3sCfbz2ohJ9YDi/+SWTZ
	 sUAvE96STmFgb3e3HUSriSJlb1eGRl3VbnH5YoZwnOiqFHKvP3WWZvfIONOttR+2sl
	 +jF1nMG/bceIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9606CD3B7CF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176501597360.10351.6895377354010518696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b11aed05f981e29c3a4d5a86a936fe1907528ccf95ae86ba247093516705e9
Date: Sat, 06 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765015973
