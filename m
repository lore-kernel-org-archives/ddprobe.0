Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21FE733262B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780868674; cv=none; b=g2+WuSoV0WK6BxiTZyXp7ygSvtQcv9kdOQa+lFlfav4SIdaV65Ho7gy7M4UUKpzPu8cw+f39Ii8waIFJ4meAei2l3xYJaTRKvTRK8KmfRcDoVM2hJmU4Xpnw50aqRvplOV9hTS5IlBJ/aFKGtXfsGpTu8ZRl/Esy/p+vlupit1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780868674; c=relaxed/simple;
	bh=NE9cMdNVpRVNhu3EuUccvMwPCs9+qwPlKQb5hFkpC0Y=;
	h=To:Subject:From:Message-Id:Date; b=kDy9LCvjNj3bZgYwzuBtWCTGsVeNWruqZKpWSnX7vzV6Z01ecacmnd4bR3gK7AahBedsuDb2zPxHdVTcM2E0+c5IkW27hgCYgCC/C4lSoe9dTKZaHbZYKl5X4gtpBddrBINedOtbhz3XQbUQ4ECO/DcnfjaAlZh+Qhhjussw40k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAGbXAmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAGbXAmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8715C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780868673;
	bh=NE9cMdNVpRVNhu3EuUccvMwPCs9+qwPlKQb5hFkpC0Y=;
	h=To:Subject:From:Date:From;
	b=tAGbXAmjwa2UlYq+hZOkJKCkCGXzP1HadeGqsAGFWdL87DP1WmdOUMky81UMfLjbO
	 ju8T/34gIKLWgRgLNxltegl4YpeH1wYArTvrpxNxasC55ItuN1rTQard4jjBWaOVmi
	 6FMNuLTHYwXTaThhASVuXOYW+w6iwEqvJdAsIuN4vpROMTYmMRYWV7z2gk6OF/uGg9
	 DxmyDzWCa7D7RudJ842FBbGIECM+yhRT3p+LuY36sm0J18Yv4X3pKCvCAJ3NdK048e
	 7oHQfWnSIP5iOVZDi9F4xSlMssW9bf0Jd6+DqTYMPBT/zznJ58DPQMj6wIo8XRSxZz
	 mqKGCEA5UyGPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5ACD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086867368.21186.2059838060292389208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8215a67223099e8992b28f5d1ce8436329f1043d625fc621d3a5ab340276ab0
Date: Sun, 07 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780868673
