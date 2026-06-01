Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF0A28C2A1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780331074; cv=none; b=VHKsou+Jps18xIUD290+YX1jxOAo1rUdZJl9taKUCgQDmFI9E98Ug8eNCHPiuhT33tZ7E6WiKCWghsE7zm2S4BusCegLf5ZOqUjDp58pw3PJG40QV3z38mxQOhZ448IwxuObPU2wzR2wrFDEbr9+JrG3uVIJxUgnfCtKiYUR/KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780331074; c=relaxed/simple;
	bh=xc478Gtm7tLrrtueZ66kXbtzTX9fP1uMkiAYvUtyKqc=;
	h=To:Subject:From:Message-Id:Date; b=AE2CP1W8hEeWaPOCtvfL/wUlFIyFMzajpqiaPtW631sEtDzcyeqkHd7HhGFx/1aGxwEXU9R31vDLadUxdks89icAVMLItsHzxsvkfTt+zlikjYbqyeCvzOyA4y1yyVLWtZEhJjl8NWVTXMFKZfVXkYcWVtIm4SwKdPqWvZYKig4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfdXTXUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfdXTXUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B91C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780331073;
	bh=xc478Gtm7tLrrtueZ66kXbtzTX9fP1uMkiAYvUtyKqc=;
	h=To:Subject:From:Date:From;
	b=cfdXTXUbKBNk73xEKm6lsh03+3IWboVeh6fRxF2QUFwSrgjH5F+mxmHRypx1X5PIS
	 D0Bc91ANPy4lX6CTX99s3AkLaFxOEFgP3q8S/CetD+QGiYdrrDjpUBHCKEHxjB6c16
	 FI90qQtcpc/iQ2e0iG1BonN+E5SUo6L06X6BOVtxQ9/T8pBhAF+f95xB6SSaNQu5Ff
	 xM2zeqBdSJgMqFDjtLGCAvvy93QhG6dKHkKlWln3mGLx9jj6VYsBEOy5RFMXjLciMg
	 mqXnVAYIXVM8ydSuh6sn2YyLCpcPJyJnXIWCwW9bDvpxBoGX07xPfhElwsdMKfnRMH
	 3xs0lmFg/V/9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD25CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 16:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033107371.17010.2388932062356577403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d485e712d7179876ecd17b3e2ca7af02aae8829704ba6d78f8209e287c4b6c3
Date: Mon, 01 Jun 2026 16:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780331073
