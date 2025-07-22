Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C2C2033A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753148995; cv=none; b=id1kJ3HjxmpPs8Z88NrQrfS1sEnFmcPmpJxSehB52KC7A8ZxT+faaDWX0y1kCk0K0tLvOi8tOGZppQyzMPZ+YSM6FHVNaFAy5qm4aqKoGO8+dQqdmvoS94wpVmzxH5R96ZS/dEtXdBS1kY5b8EfHC+VirTdadIBuMyT/SKjclgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753148995; c=relaxed/simple;
	bh=ci5ACBBjZF0n9VEmMmEjmwVD3VIuwdw21s9pBlkL2+s=;
	h=To:Subject:From:Message-Id:Date; b=VN92+xmGn2R73wOgAzVYpyrmgJOodbtpF+lHWY7FCtzW5ntrr8bzZENCiLkK4pROgqPBkC8MyYLJd1AMsOdC3BN6E7z+YXND/I1FqqabikT57wRxt8qO8+tDCcC5CT2SimQgkus6rcpEa2BqpLIh1CU80QYfVkxP4emiLZz4qDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9OKondp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9OKondp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8137C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753148993;
	bh=ci5ACBBjZF0n9VEmMmEjmwVD3VIuwdw21s9pBlkL2+s=;
	h=To:Subject:From:Date:From;
	b=K9OKondpg9SJhXiEfXvAW4OuPkRbtdsqc5vce4EYUFxhsfXmL1D4Rdw0R4VdP5dCv
	 elsXQHO9miZvA/2v48rYJwAVBvxsQGJN+vinXcT+p5R7ym0vE9LzA+rAajahhTY6XG
	 Lt4V64ZvlDS+bfdNE6miqCq+anUmhiYxyYiJgcr50GyVM6veYWyapJYavtHFxGgG6q
	 I2C56yFd1xuSOy6oozt3J7/r4eK0iYmHzXINb6JA7UTgnZncQtRG6UKoXp50D7oPL3
	 QFltpyx1BZCJIYg8iJUZi9lKuE0rZyivXA415NvDEBfYRjVvpc5k2vk8ABPa5fm4MK
	 KksQ/3ESVT8CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C49C83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175314899358.15408.7592765596890845956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 042e9ef2785b05603a645083dd9dcfa0c8540a682967c363650b81eda0bb682a
Date: Tue, 22 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753148993
