Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2563F2B9A9
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731277554; cv=none; b=GQ55YAw3jCKDaNY8lDBMgbNeyUc0NbtG4+PvCDSa+sUtAregwJ1KgxiyTQRWBrwAV7Zfnp476rpUjtbC2glS5JWbeDeMgkLs2nxhRjM+IALgVZL2eO9pkKyeaNfbsy4hPa+JWbzfzb3GACcG5HfMKu8QpKB7qeKclvqfifiKEW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731277554; c=relaxed/simple;
	bh=dVM0X4LjxyDQ5Fo7dRLBVhYQsXEJFShSf7aE7znka0M=;
	h=To:Subject:From:Message-Id:Date; b=DKnWUB/aYSe/G++C2jPgva9jpojnmfK0oDSY0uOQHmJskFddY5d5e8LRRZaUuQBoer4YLXl3eqgRfzUElh/gvVO4ein3QrL0c7thF0qUEkorcMnF3JeS7BhttWRq21AVQsGo+42UF3/mqUdPxyGyFlQkJ6yFfTmgjbFx3XRSV1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DkBKeIql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkBKeIql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8E4C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731277553;
	bh=dVM0X4LjxyDQ5Fo7dRLBVhYQsXEJFShSf7aE7znka0M=;
	h=To:Subject:From:Date:From;
	b=DkBKeIql31zXoXUQjYxIMVjrl6x7Q7ayxvwj2yhcUpAtvKoc9cikgCuHWsGcZ7fPy
	 oPswaxXrSYrjL6jRwGgclrCBLW43P4TgIOpTybw4Zi3K5/UAsZyOXcTGP4k0uYEHkD
	 WH6foCrAI7wmRHFgJVa8pystkdA8okEK1TsHLsdQrqQh8pzrgXIGxJ1Yq2uLmVU4wA
	 GnYn92S7ABWi2HPKr/pxsZ1HRmrlYRiRBA1hnVmMUUt4hOShbIaiD3rhWMOAJE4tyt
	 QdBeHtxUFMfTeZfuRX1WG2xYHy8zxgmVEATR17Oe7FrmUGqnwMMF7JRKu6SecuW3pp
	 nwMLR5/8nOwyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972ECD12D5A
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173127755359.3534.16254012711116771060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b276c700556f85bf8b068be023b11986d19c69ba4bed805ca2127b51e95c64ba
Date: Sun, 10 Nov 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731277553
