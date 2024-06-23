Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BB38BE7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719162143; cv=none; b=NiNfQDTeK+n9+mX0u27n7tYuagcja99h2lNqzrI2y4m+j+TtthkZWPHMyrHjIHAlSvisEAXbkXgpXc9MFWgC7D5T3LoYD+sd3jC+UDVTw57EysSx5DyHMtQsRqPkx6s/XPcJxKTsuUWoVzSko/lJws4ho1jPh0byp4dnmXW2dtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719162143; c=relaxed/simple;
	bh=+e80HbcHE6ukIDnAI9EaWTdP0Jk30r96B8gQJfBOVr8=;
	h=To:Subject:From:Message-Id:Date; b=Vo8Ja1U/4sL4c5HKjO7yaBenhLRIxV6hTQ5Y6M7ViirGfn3borQGMCrA+693DTQL6FfKRtaO2FfQe/Xmwwr471ycG7fOWXZsSHQSaZPxASlhjJoWfOacGri9h/ZUrXxjPL9qydgGewH4w8VmUr6dF/65xyItQfEL8cRqZgGKcgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU3DpXJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU3DpXJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1420C32786
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719162142;
	bh=+e80HbcHE6ukIDnAI9EaWTdP0Jk30r96B8gQJfBOVr8=;
	h=To:Subject:From:Date:From;
	b=oU3DpXJiTuBvRIcq9SwQo/sep/AIdyIygnEz3Z4GxCu6Mk1i4fR3NzM6XVTsZqbYR
	 HNiC/kttFAXD/9Dl0hvm2eIhGmokQxYXVYqfEKce+SMA8SodHPlgq9LzmzyLw0LsUf
	 j2j4jIURExgk/9+TRcrLrerVBblpj5AGQSFS2GO47G9zm4ALFd1wMah7ObPXmCTqdx
	 Q2paf6COUJMsQun89eF55H3HoBadGTCX9cg6WBW26bbkU13VyFmtsqQDvW4PtbDrKQ
	 2zJh364/W1oQN2fEjeF4XzyKT4oM7dLUdqg3zGEwqI/LI0PVaXolzRZM/OTQzxGdby
	 Tuddd3pB1Hl1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D45C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171916214277.24666.14489420968832408924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3834518c5e79af6449f6a26ec53d81d247fb9da76ccede1a2a81fb82e391425d
Date: Sun, 23 Jun 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719162142
