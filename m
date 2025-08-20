Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B5C2E2676
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755733194; cv=none; b=OUoY2601niKNkPNdHV9c3lZo2nEPLpAwvwn2pCmId7aWz9BBOb4UljESYiTxR42nx90ew15UAK/uAjEJRpxsqKOAdtV5OqcmzyF9MlaTV4Vps2Pr3ca9IM+txZC6OJOuETJ1xu2hEFEZYv7W7KPJ+v534WaGk3VXN66ub1z7Sfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755733194; c=relaxed/simple;
	bh=F7NyHXCIOtavnjUI9teqbFdcRXrZdcvcYz46aN7QomA=;
	h=To:Subject:From:Message-Id:Date; b=C4bHDvgpoP/dSOhXsi+/YW6EgtcmdKkF+mlaf8o9354kf6mgUCGaxG/T4VI0YhJrpFG/4e3fhEG+n2HDksge+t4xS+KbXJEYMxHQTefDpwoCrUxexOjql1fbD2giIqoVKsyXNX+LEKezZYbmz6E5idT0n0Mbye0jFWB2Yo7sJvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uljzazIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uljzazIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2D3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755733193;
	bh=F7NyHXCIOtavnjUI9teqbFdcRXrZdcvcYz46aN7QomA=;
	h=To:Subject:From:Date:From;
	b=uljzazIXuZYluOoSx09x/ki9mo2sLQfOlSecK+NOFbQC2dhSx65LErMcFBSW/498X
	 hGvrXEyWcGoNQuFBZdBSIVGVntxCZ3NE9IDOzZY4TPboIM3zrD/NvZagBZ8Vvhk1CS
	 A/GTBzeBFlMUFBb2tUIBCz3z1X2vhETUHNHzFGAl8PQkIXIH3HHZcRiE1vwDbHS2R7
	 0bI7M1rimjQtFUNDpxKUZK7eRsZ6Y/rPFaB2VcN8PuDU+xzCgQ+6QrMQmbRxnWFC3v
	 4Gozyz1sBZpynduXt5YmV8otMq3c6f5pwpzlPgf9usLBmCRgO62ocsaEd9ZWbfLjb6
	 yVLtcaELaF3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F744CA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573319357.5908.14254880477483838643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a65a7298876494a759c617aac4455f46257f4e1de09bc25d5377e88ddf8b8d
Date: Wed, 20 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755733193
