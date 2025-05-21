Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF822CBD9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747844994; cv=none; b=dS96t48ZXBv1+vCS7rZpjndh0GPtXB8HUAy841Hb/CYOK8dpCiYuDmNFSvwLt5TAcZp/yZ7M5ntKr0nhCeVPBcnl+pOiVkttYFrwvSaKnR0zj9EbMomvyRslGKs9EwIdzPNJ7Q9dEwBH8QMURb/7CmDeiztLyjyO7H40V077s6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747844994; c=relaxed/simple;
	bh=sYK9I93lxNONF0BqAFC/b613malIHECyCHOgTYYYmlA=;
	h=To:Subject:From:Message-Id:Date; b=imonfdhtEvcOiSyyLVSuxUT3HuVLYk+LW0pna4FGiRCdUWB1AOdZcLrALqDHjk6E0U9bX4kP4VBXRQ4jWs+A0GnKpW3mZhDgD8UrRW7oVE0dhnNGpCZ+IoPVPKL9eBxVcncTdD5yxxe9G3iMR1gi4uHs/ACVwGR5HX8Ke6CBB80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxETQZye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxETQZye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EF9C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747844993;
	bh=sYK9I93lxNONF0BqAFC/b613malIHECyCHOgTYYYmlA=;
	h=To:Subject:From:Date:From;
	b=OxETQZyeL15isZxfbZOarl+Yq81P1MDePexjI9D+dMzgth9ClGjV2w7cN3clIKAzB
	 MwxXLeYmS7RUfYC3IM0FIiyIs4a0A+knMlMZ30rH6FadAYOSsR6+3N+Mr1aZWBWrOm
	 YUCn9kHpLT3x60COXGm6Q7OZ9enAil+lhDCsfRTlEVFU19QY3xWUFGIkEUZZCGfF7L
	 wIyoTHuzDXT8DyFZiKSw9yo9Gzt/n/xNY7RCoWG+Nepl8AI7KTiEKMuxG4SdAbwpTo
	 1+9K57wyIfPkvVCbedm+s3eKrd6thRdHNxPEGM7oobgPpupHbdja75u1mQ2uWjBfDY
	 2XqgNyKmgR8+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F481C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784499357.27040.11328238940903124302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 250e2a0f206434c07eaf2b242d38d1f3bce95069cb971583ed19777298adcf61
Date: Wed, 21 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747844993
