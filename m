Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15077EEAB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765761774; cv=none; b=r4/O2q02Q72j3er+fglx9/SR+xpyKrOsP3iBJLB6cXy953wu8N2Zg7NjxdCDC8wRlIdC2C5I34uwuXw66fMPfjSXykUZXnZYexPxAkGzN80wuLMZ1HPhvEjFZSV4uDx1r11I+Ec6ZmZBfTgYfG4udolV1eOQ2N4KST82uXmAnIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765761774; c=relaxed/simple;
	bh=gpUQVPx6Lnj9gn3JUZ8waEGmuWFHbbY9C7dKjKVxq4Q=;
	h=To:Subject:From:Message-Id:Date; b=APLkZSfgAv3C4lG6jkMpN0+4l0YycsENTo16z8rs6RIDK+4LxWpN5llEU1ohx+md2ISxGTPaBOsXn35+g2rXnEp9wGcc9akJ1/7T29GV7N9RyjlfJ4hZqQRp58rJCTKwdq1bbW2WsE2UgJ22KvxAdN9eftw6xrxmtwq0Kz9DSwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejDpdVXL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejDpdVXL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765761773;
	bh=gpUQVPx6Lnj9gn3JUZ8waEGmuWFHbbY9C7dKjKVxq4Q=;
	h=To:Subject:From:Date:From;
	b=ejDpdVXLTURHSAK68vYUyk5iFSQ4f7COaGjO7rrfcntDxbR4LWEOm//2OzAsgWzal
	 06T6hJXzVUvKJQSDQnxneAxjtbweGJgKswQp06jM+nO7lzN0uEy3sgeVRKOC+LGSgV
	 dHpF07Dz2Vy0iLpIeIjBhdY4CiLWswbtDXot16RsR05oOjcs6MJVsfLFQqGROfwkSg
	 XVbiPl1stRBqPUu3SClXdF6BSj6Pi50yfJrgFGEmd7b/8eys0WrbnNXOyg3pDBZ/Jr
	 OBTsg4Av9FmokzJXz3LX+4NAxgjIleFRUcBQyEsZo9tkIUctWtDYRR6BigYmtO53DO
	 FxcVQKtuU7upQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F3D5B16E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576177359.10246.2533091942397687856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a62ba907e7c450b4d3c76bea351bef396f181544e1133b153c74e3d55c7541d
Date: Mon, 15 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765761773
