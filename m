Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311E813CF9C
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749403194; cv=none; b=GM6XCtLyKh1cRKe7t86V2Byy0MMHbL/cfcy9oY3V772VrSOHYlMr1x6Oe5QiKqRUjJKvxgNB95C8WeiLlZqnhwlLlVjNTH/EP1JbqSsTlaVKcqQtJAkD01SMTUULoh1uumQ9ri0Q1EREcd1KUUIqCh0jOQar9ZfUXeCswsV+TT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749403194; c=relaxed/simple;
	bh=goztMB4YBvSCpMROGRtdtxWei6q+0EWMxJlCaVaMbUk=;
	h=To:Subject:From:Message-Id:Date; b=Toi21Ctl4thZhmYxXth+go973wvrzYmbY3a1DqoIBvnasXsTB8YwPSOZhp2aTzm82gii534BMRbQX3uV9b9plHhQpUXuLOjYCR+9iNrmAvUP6tg/StH7Qn0Sfe4iXQpaNMee/BmbWAls8O0AHsn6ghHkUribBQnj+0G4xXdhhVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpPVWyyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpPVWyyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F8C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749403193;
	bh=goztMB4YBvSCpMROGRtdtxWei6q+0EWMxJlCaVaMbUk=;
	h=To:Subject:From:Date:From;
	b=gpPVWyyK2NFUTk5+DNTTlAtf0Rt+zGQ2dhEjVJCWNa7p1r4jQZUg0bjT86WXSSUsV
	 E8L0oF4EVDYMM30LOqxHC/QQsfhDhPQk0+9B6kik3xWBsOJYL0zZW/4mkrSV1lcf43
	 n17/8mCqkxSjRwJB0rU1YvfIvUBBDJuTj7tu3wXwXbSehWV9Iy2ko1HVeM9CrbeJn+
	 BRWx8jijDHolEJ7c6WGpvwqx4/TkAzzQur0tWJYEXnMq6B3xkR9vEHCKRxMNazWixe
	 YIJFEuQkQ2H8qXCSs38cGIuvLLmQ5gkIJQWi7/mSYDxVdzln2OP4fUdc9PDHBQsuQC
	 KsXs0WdUYc64Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B8C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940319357.16425.6612173364677830032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79b5b3a48e2d59aed689a978529d3c2dde0e5eea24785294f4e65d0e5208d1cf
Date: Sun, 08 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749403193
