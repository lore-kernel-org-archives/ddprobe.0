Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490861C860E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749701394; cv=none; b=YsH11l3ZuqALcamEW/hLLCPEddgV29eQPyTO1J60Y9kjk3fqH+/e4HSwUH0rc6i5+ybwbOKHXCE8r8wx3kYfF8ttZw1aP8Xek5/gwEOLuswQ9NjYY6tb0OyL+T3TaBOwwtg5RrJq2tMkDUEA5sggiZH9ezuTBPytMQLjpGLR26E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749701394; c=relaxed/simple;
	bh=OJqqHp8N/rTonDHkFYW3NKoe1PUmzl9cVKr6eS4qrKg=;
	h=To:Subject:From:Message-Id:Date; b=CnzBn4s1gVJT+dXTflYjk0rdLJdG91YEw+nmCVdQqw3sfNl0GZW7idTt1OIv4ZieBFuQAPC9GZnmPDUJC3VLTaCRRydYJsbOGNJRv4gAZmH7ovxCdEekedyYnoOcq+bgKDeePawIVuyIfmd2rxtVOftXS66YLfG0UlkoKEJhC8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7gSm/P2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7gSm/P2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5034C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749701393;
	bh=OJqqHp8N/rTonDHkFYW3NKoe1PUmzl9cVKr6eS4qrKg=;
	h=To:Subject:From:Date:From;
	b=g7gSm/P2PcER8BgWh31+t2uGhhOfL4wRA5P7z9EnvP7CeioB+2q1n71q4al7HoJMt
	 sMQEwTiFOXT/hMA4R1RT7yC7bHfg6JJ/v2IuSRXpCifVpyQ1rXVx052fR7Y5hi9OGK
	 CIy57m0bslFJ/tQGvJ9qRidtDCOHkABccPHLdQt6HGedGjaJHHN4UC0mwPjqPAGe8W
	 ZMaSs2lb2XuUONU+J/XzFevRZqI43M3V+JIGTxkxr0qPy90PWBjxq1WR9i7OMla8cm
	 H713UPBoKvPxdvUqA7hD4ZzMYX8CC3aD2jxWt5g4Lz1ekSw6ix1Zcn7+WB8cz7Owg4
	 HcqwOLHXGcRww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F4AC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970139358.23965.7964928698476368324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c5173a98c845e0ec7aa01a3555dc3edbae71f389825e593a1d81124f60d1650
Date: Thu, 12 Jun 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749701393
