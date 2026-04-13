Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D50003DEFE1
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776091053; cv=none; b=sei22CUkhrZu2NpVnjAFwrEro5bgX9STQXpDPEdCNI4ABWWYhc2bymDhiuj47SheCDukA2JxDFdw8pMxfPufHNPXF90MerNIjI2aD/5nhdLYWUqq4OkgQ9VMbQ4vCPX7fcgAz71i60G927J1Qvy0AYneqv8fcMGKJzpa9T/+dTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776091053; c=relaxed/simple;
	bh=5K44yd9CrQz2uZDkzQOLsamB4ZjyAhGOkW3BnNULjMw=;
	h=To:Subject:From:Message-Id:Date; b=WJyrVO+uStQFvF5B8qDBic2sz9R8QwoqhV7acEeOKHEnUB3LVZB0ahqvJDhuMp1TQbP/to8/xqN3dtTq95JLsMmHvyjFbs7bXXa9n+oSPeAxn0AMgEclrCzKiDB+CObbCr71u0oZhtbjvXLQGL0jpk+DtbVI2mOf0HhzXkLeuZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8O7sgdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8O7sgdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA374C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776091053;
	bh=5K44yd9CrQz2uZDkzQOLsamB4ZjyAhGOkW3BnNULjMw=;
	h=To:Subject:From:Date:From;
	b=Z8O7sgdUvBJc+IB3CFf8mv7wRecmUsxHJi82TdnAGftGpL9rPqbNZfxWbINlHO/zH
	 YlxkcUWngFHBr0CsxVndh7o3s+6r+IMwX/7umfChVrz19GAX79Kr4ZPIhZQJwJj1Wl
	 9luUB18MUwIHNTXmGgv4nf+MEJcA4C4i5OS+43pzEigSAyVlGlncHcCqwbo94PCDAK
	 962e6/Ox/irYmBrD59T2kgX3ZZN8YzAvi9e3zieNdRtlIotXZ9EBuFPsM0Rx8MIrhd
	 cwSCXhewvZJkq4tXNOMGYC+/X9epxacX+JqY0LdNYxtKamDWtDD1JXUt1pctvq3iog
	 HG65/i9Ws9rgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB630F34C5C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609105369.15653.5332896555279792077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef10173df958481a13fc81c0cf4526a3c7b83bfda45812d40e178ecbe47956a9
Date: Mon, 13 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776091053
