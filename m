Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7A91D2F42
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730889954; cv=none; b=HEVZzXTlwq8/W7s+a5oto0NFNdbfiZ+9mndpeckeIvCzJDqKUVt6ZQXDceX7XzRuvK+f4w4FoX7GiToki7d002G6nUThwW/P1wnRQdwYlxiOToRrWzbz0j6pRbQIBqN/J2STpyZp2ohU3XvnlC39F4uIrjyo9xHZzF1gCypatEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730889954; c=relaxed/simple;
	bh=MTeOx291Byja3z7qVjPDPi/yLWKFI7RPmz/NO/YN2fA=;
	h=To:Subject:From:Message-Id:Date; b=dQDU5lHGscP9hkPmXxkri3lu6rMUahl0USV8ftHuQgMxu1OhMt1G8BB6z8Rv+3lHy0Gh3DVMiLSUjJGSUgGWeIup0kpF7BYfP1JfIPkdYdZoAwtwzToC+DPnIBPjHwd9cGsu8WtgMnPUw47XHJJ/NGekVZaynBKXTyJk/H8Gygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSDTYxja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSDTYxja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E21C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730889953;
	bh=MTeOx291Byja3z7qVjPDPi/yLWKFI7RPmz/NO/YN2fA=;
	h=To:Subject:From:Date:From;
	b=fSDTYxjaUNk6E3hIgI8GD7T9GPXmUujwRfa18/VuWN3NAkYjKuw2HuzH9ktXYar9s
	 VOTGAGoc7LJZy26kynvCJeQDeA1vfFdx/mhdrosdL7RthB07Yi9MZDA7wSjKwxMDMZ
	 YvVpEJIS32PVcLa81cr0eHaju6ruF6lmSeUbHQhJ8t+APztP7TumVwh0jL0LoyXE5e
	 jDAguPgKjRH9JMSfXoGE/26v2wBYDc6ahjchpA68a1jU1+zBf4P6kUuIe7gX8MspgO
	 haFKjjZVdPL4uP+2L5iu9m3vIPQSHHBfwhTv4sASnwIEgbVAQRuYpROYGu0b7jzIg8
	 0z1c7WHLzu6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DD5D44D48
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088995359.21170.3012335998820657643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e790b07fa36b6281f3fc99501418b93248be0f4cdcc77fa9a0460bea899f52
Date: Wed, 06 Nov 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730889953
