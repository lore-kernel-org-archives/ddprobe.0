Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2E02599
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712485696; cv=none; b=rH3MYLkhD/qzUGdfT01ZFQP50538AT1ITa7DZmIGhKUi0P2GY4yHd8CWV0ETD8aeOnkuoteGYojcAHGXcq+61xuDNN66VSckV3xF2o32jYmMHS5RtVhljIMOkuvFDSfsONtzZQ5/aTj1h6nK0n6gYbITUMqfoVnTc5ttNQqLjK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712485696; c=relaxed/simple;
	bh=/17IZzdZWWufEavq1nnkb9kE6xnOjwQ3Goz/rakS/2s=;
	h=To:Subject:From:Message-Id:Date; b=SB463c3OFaRCewepglI4Zw3x7bOE+JT7hBrWOebGulR3QaGpHYTmqlv1/Afm+6o0GGH7OjieswGgH74oo+FZrlqZv2dHIjsZB9vF+jL9LM7Gd7JnQEGIJ6hs38KYIq57J5GFWGTGtLaFsMDOTUFBw/43VbQ+YSJ3Rj4bCeJbpQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtqA5vqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtqA5vqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FACFC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712485696;
	bh=/17IZzdZWWufEavq1nnkb9kE6xnOjwQ3Goz/rakS/2s=;
	h=To:Subject:From:Date:From;
	b=QtqA5vqCUEW6fr7pcPhojgdq1rYQscKdFSMT+Li4IIauGV/nb9nv8ZcBjdrkKJGqa
	 Ie2AHJFqYZXkp/YMz5myIB2at4PN7EeO4GOQdw6EiIY6s6lUbhNtFb6n79/X1nrfTP
	 nV6chpjFpeOFxanGY2hxcGTrAXGgsUTU1x+93ZVW9hLmxsLGzFg1V7tCSMh2FTI8RO
	 lmgT/8ZwFWI1YcAkjvLyMvjV5UsEjuScEpU+F/pzrW+vo/r++Gfhy6nml5ujbK7j6n
	 vbPjuqLZZL31oww0nocWaUy2o/L6AQ6V9ykQb3waMgRcjx1DWgrJ4d5e+SCTBL0JiR
	 TTmle4dFQHcdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE81CD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171248569638.14440.4493449656446133835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7508b800fc801bef246bc127786fbbc03f3f02d74c27d94ef1ab7c2f978f004c
Date: Sun, 07 Apr 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712485696
