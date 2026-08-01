Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430872931C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785594034; cv=none; b=QXDoP/1En7CXn6F+c8Q+1/809aQT262j8MPscbcAguBstq1JQ3ucaPtsqM1dPI07PU6TXawJbtWtO3uVBE8X6Umz2YE1V1FMO4soQ0Ehu1+lQqa48R5AziOH3qSqoGjrOLRJMTx86UxqvXHNrW2JUuHeNGhGMEH+3H9A4LiId6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785594034; c=relaxed/simple;
	bh=XSDN6UZUb7L5dMuX3QkAX+gFsSHtk+2NPuPF/byMYTY=;
	h=To:Subject:From:Message-Id:Date; b=d5yId+isKXnv74RhQgfjyWVpReNeMvLO4RSD6QYQYIixr07gyXR6GnEoNW0ghwmAFuuZrfSYINZ3X+zlHN3xwUROYD3oYgYkFQn8RfKv6aCl2Wa7RWc1hieqhOPY40NL2iNVax0uAmWax4CnRDhvtSeDlU+9PDcApqKBq9CH7Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9SIgM6r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9SIgM6r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C82C2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785594033;
	bh=XSDN6UZUb7L5dMuX3QkAX+gFsSHtk+2NPuPF/byMYTY=;
	h=To:Subject:From:Date:From;
	b=h9SIgM6r/I+zLOhf5ZNnUxnA1sZOz4PJwvDmqMBjyIL4gjIn4DotatjLF81KR97fI
	 VRbuo011tjiNT4no4kCNdnOB5xHwJd4RGuBTiuTw0aZd7NqqkjRFivVbQVfzQwag/a
	 BLhvV3nO5jCjkTiwIjGUJNuQvH4/lpAsF0msYa8OvefFZAM5RkI5x/8q1BFHOD06wF
	 p2PPuc1baRsjLm1Ab9ZVKB10ckBE3jYIMWc1Fu3Se8Ade+FXo5BnuqLt8bGX7v4jF1
	 DeHgEYWfdIG2gmYmZwhZjOTQco8d/Rf1e7bGaGYaIHHv7XbYfrUfFyqGdZuI/XtrwR
	 8wZzu56K/0++Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF4C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559403368.17403.14415700160803926804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef8babe8b50f55089f6766a938b9de6b223a4beb5992adbf5ed3912bdfd818a
Date: Sat, 01 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785594033
