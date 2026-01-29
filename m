Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1246E1DDC2B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769658234; cv=none; b=JGDz+zXohzFeQ88LOAj5yBBP8AZVTdQfN9VSvb44xfbiIslpvBLTz+cOyhMgknQeAuY33Mcfd9TuwI8+YpZ5RpMb0RVdEhZiLb39JvR03K49J0BRCglE/H6CgC8NOyU7fKHSSI9i7rVi1GDeNJ9D6LK4DoVzz9i6BQt9VVSyYFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769658234; c=relaxed/simple;
	bh=8LiElvElCl0YRD/YCQxf/m06l5E6VsNMSuJUpB82yEc=;
	h=To:Subject:From:Message-Id:Date; b=nMaYqbTiBcQr2MPHxEix60GR39XSOOZYJBXC1hVHNc4RvUzHD0caeR5iHjsleG3dnvzuW/k/Wdi9I/zaJ1y7xVf4auS0z7D4vEqPodaM4nyp3SsHhpSeY/RZwp/3Xj8XwFTV1zrhqbF23PCaXu5krYDojdcJdr9C8cZQlp5Pc3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7HALIJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7HALIJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB4BC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769658233;
	bh=8LiElvElCl0YRD/YCQxf/m06l5E6VsNMSuJUpB82yEc=;
	h=To:Subject:From:Date:From;
	b=G7HALIJxuZuscXbo2NAYhLHnmzjRLqm2psLlHPMBfYsG6rKoKZpexa9DY1b/HoGOl
	 /WT/7wiQp9JSgaZFnwXEUiLEj6o+fBX77LSrReDMBGElZ9QrIpR7gna9VOqgEOebAA
	 OGN89AMhMzLZo8CskHOj5oiS0KqzFh6e/NIexeH8EU6JSPUfE8Rk+A7lKf1LKsrDBQ
	 mqYzddc57R58za1LptJXsgr+9j1ejPs3Hs5FNcGGvhJKeyfnjk6HgjsaPD/oGjU6+/
	 MPFxwARCK4FsmZGF6cv4FVQzzjulPy3nkNEm8lDTgfAdlapr3vCWYwsx5bgVF6Uoop
	 cSh4prEEkO4mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800ED46C1B
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176965823360.3231.18029980314490182078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00bde648298e305fcc4d9dd81a7831284a05409a5e2acb5b5ce448e81ce2c5f
Date: Thu, 29 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769658233
