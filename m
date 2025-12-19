Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1044C2D94B2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766126634; cv=none; b=AJdDHbe2McCtJgh1Cml3lc3GZvk47iwf9w0Kobb/+MRiCPOISAKIl7O7qffWqwC8ndVUmNHQgWtnh98Vt7BMsiZ1hkw5aVlNtlx2Fr8aUuZ9/GaVUZWNk+lsTdUHlkGbw9VzpgRz1qMmSRxMleQPkGpUtfcRnIZUK+9W9TDzDL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766126634; c=relaxed/simple;
	bh=cEFpRj0foqXVDaai7G8Pq1eRb+6rWBh9DlgvNZ6GU1k=;
	h=To:Subject:From:Message-Id:Date; b=daL8C6ItjI5Mmxbg+GB/qj/CQ2+WN/GFr9/F68yNxYoPurBKabl7FYWLgHfRSNf8h+2PFzAmdn9iCXWY4XOTA4Gl8qvmEvO0DmuVteziWqZYYu0/8l85kRlmZhIA8VAMYpslaMZTdEVskl9t3Ieb/WJJh512hoSjDICdSyZco9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCf2NK0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCf2NK0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A288BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766126633;
	bh=cEFpRj0foqXVDaai7G8Pq1eRb+6rWBh9DlgvNZ6GU1k=;
	h=To:Subject:From:Date:From;
	b=HCf2NK0CFOrlwY7uRcinFsCgzQl6y+coa7Yo377NRTN8mO2I9r18FQ0oYnsEjs4tU
	 VRiOVklSaD/U7RvaSOLPnGMxf0zXylmbmZ3MDYTGEXVv/Iq+DruPEFEmA9orZgxoYg
	 GD8J4ZDwP3r59g6ZbKEdBa2uQD6jzLgS6Laz6gGZ5oY+tnXYk3UKrYjTYORgMz7WJT
	 0iMP6hSCnveGoZNQIlppJsdtfKYWio43aeZmQba0ry8mdn9ABPP+FKTlKJCTKN06jN
	 iAxcK8W5xdNLx8J4Td+iY2sbFijryXbFnJK8gctOo8TlBWt0PepNPBeWoymE4+gOHj
	 JNbx1CLZIJfEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057DD7495C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612663358.7874.9092686165279433415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90b7be46455c4ab350a07ae69291b5cba1479127b4fc61216b8bb32561fb8f77
Date: Fri, 19 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766126633
