Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1FD246778
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768710234; cv=none; b=dpDGMN3afgTrhiQqdLTSKEYDcO/WZwz7y+yAQjiGUhP0XVW1cOfbZQVYykG2NyPQM1ojtFe7zAFLz1nPHIR743/IoWNGJmpbkbcgZB87z6s/CUrmM3qQk+li5ncRjHr0byhFMnact2csFeeQLt18fTJeH+VvGFYe9wTUqvb6nao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768710234; c=relaxed/simple;
	bh=Lnnv7TSUshUwD2RpQ5j2DIyFresN3cE/9r5s1G6hpXI=;
	h=To:Subject:From:Message-Id:Date; b=sQ2EFqsyftoiJ6RSVHMpK08hdQWy3FITDGGKDqbj5fTS27LUKOwAlWQGy170oXBVDfWUIuO5Vciuc1WKhZc97l+gWhPGbK3qFSbg3q2rKddZO3Qa4D0HUr2Mp28moAlCshiqvxRmBRhPG2vaPruIixI4sVtbT0OqkZNfViM6HWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGAROm6d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGAROm6d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C68AEC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768710233;
	bh=Lnnv7TSUshUwD2RpQ5j2DIyFresN3cE/9r5s1G6hpXI=;
	h=To:Subject:From:Date:From;
	b=AGAROm6d23TMH1XLwht8lWV/iZdnZX2uOZ3IWSDLGHUhMo5ntOwoQlQIcefKyzKTG
	 tPXaItzADGTGTQ9D23Ov6ZKnqB6mv9Nu9TD/0IB+7Ur2NYtton0ejmj3HnTrKNutS0
	 1tkeaZi+Httnz+bs26jr5y8bDCJNAbQOT+ZI9QDZCKbsQxNtqkHWpFhEy5h3/WQiUf
	 Y2GvhK0QOf3mF7egysqQM0cqSxE/t3dNMNi0abksFHHUD3w9N0DaE7LV+qazcKwIBv
	 5qq3JM+ij/MG6Lw9LJs+A+ZYi4I2+Kx1cXcueoMvZG1oMzsJTsP9Dj8Le5WekSgprv
	 6AALBC4J4s0iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9064C9830C
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176871023367.32426.2702499853252513769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a3388a21ba8caf6656fc7becbc70ebe55ecfe4ad4b27e05ce2b191fbbf545a
Date: Sun, 18 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768710233
