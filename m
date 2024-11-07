Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AD82178F3
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731008754; cv=none; b=VKoSZ9a5z41+LWBsVKlIDw1TaV6IWJpEEEgrG5cGXF6x61JMI0W/6zRuRKrsjtwUglEpWbZLJWDUNFFokUi8AvmN4bx5rC2DNfHtYWGi5sSsy3f2Lm19DA1G5495mH27KzH72r7tzIqIxrSrjOH29ZB9sZVOlKcgTJVqUnPdVow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731008754; c=relaxed/simple;
	bh=RjucnntXaD/Rw6m0tGfZGNlSjeamqh4qtADYsVdXpwg=;
	h=To:Subject:From:Message-Id:Date; b=NWT22xugxOhpFH9DeMRL6xkh3m0F0AYNnXzS0yhHJ0SuG8Gdb/jvBJMw3hWQsABtyyv6w9cLAKSzYYvZUI+NjkxPFiCMe9WwyZYsY0I+MKAW3zNRxK+pKN1ajsWDXxBbj13JhK2KeBusvBOnkItsAc3T6uOu8bdcu+Advv6jnY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxtAA8K/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxtAA8K/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A355DC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731008753;
	bh=RjucnntXaD/Rw6m0tGfZGNlSjeamqh4qtADYsVdXpwg=;
	h=To:Subject:From:Date:From;
	b=KxtAA8K/XAfhRalo8ZGhXLWlMsKskklfC/8HA9a9lvKqdj6HZS07hXuFVr3XC/eSd
	 9mcew16RpJj6Wu2yPalxyRZwKO5de/yjpcpuF2C81zO0YDKGLk6QXVeXCvkaFXUltP
	 l8ZbfXXZnT9emWH1oQ3fdNJhM5S2zMqcSFj4dxhyY7I/JvlgJoihqbugT0jVdqHckS
	 IRkNfN1KEVZVV/ONWfyy6Sad5qdR/tR7KOrXReDk7gXD64rRaeOxTpUYMhVwmdaUPc
	 XncR5MWs/OChSElIAPIEm38GWJtVDDqIiCSkLtipKlwjaEVDjUZz5aRG5six9afh3P
	 S2NGuEMhe05fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E7D5D687
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173100875358.22838.7125789266665144687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5a9a108f78690bfcae1996c1138d667800f8c3728862357a4518f2cd3bb575
Date: Thu, 07 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731008753
