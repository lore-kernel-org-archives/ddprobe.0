Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05776FC08
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749274794; cv=none; b=CkBunz2MevZjVaCB6KJLwvqavo5G8hmhGNzVTLbE6PJLqMr3TN17F70rSIhwiK29noeCh/6mBfuOCHB75O62qfp29bxxM6HvrOMBJ21BJdxOl1yb7/3MaNC0MTlqWtUZbtvIfk6rJr9kL+ga4CvvEa8ziMbEBFOeJzDBStlkqzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749274794; c=relaxed/simple;
	bh=pHai0M4sEgt3GPQGhCrLi1jnkIUBQ4qsplU4QeddsQo=;
	h=To:Subject:From:Message-Id:Date; b=XWR3z7ZuDBtBqWKC9kh3nd7K4QyrWA4EWCq7o/lTmWNjnEyIsxqOtMETVCSHmxU/p3Mkd5JTyjZu6b9FFJA7aAnQxS8cwiBlvuFRvV8x0sOP6HTtZUouhRyqZLdzbdjo7+OHcKpQex7uTRj8z4CNCCmDn5P7HFlIwGURTiVNUTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aL6INU9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aL6INU9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E08C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749274793;
	bh=pHai0M4sEgt3GPQGhCrLi1jnkIUBQ4qsplU4QeddsQo=;
	h=To:Subject:From:Date:From;
	b=aL6INU9jfsktknQF5vBqwfd6yEnX1gFdN7pU50rczzWfy489JkhZoEVVdELmwTkR0
	 RGIIBVxLFEiSDt3fw0QNKqGcKhU3jW3KOSgyJyqW24LfXNR7Nu0e6kvm+wnPKtrFMM
	 D3t15u0qJQ2SGpMdsZmM/z4QWuPf/lb5JvlLEKUn/+wzprRH8oEl2a8SDjBiM6mljn
	 ztr8JEqYHkPsVGbDMC4FKbKFW1yPKBXyNHR+0E4i8ulibZxNa0rmw0Ywifc8cGuKs5
	 eCz4AgF+MXzoAY5SeM9RJLlGss1hYcFfaX+RBbHBi+4h1DvA1cnircegXZbUDSi6v/
	 9Dq77kP8PzsCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FD4C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927479357.24287.15735630480645610238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddadd5708ed90ec38a0921f0dda8179ef1dc3f46a6f9f0ad16eaf80c6fa5e1a
Date: Sat, 07 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749274793
