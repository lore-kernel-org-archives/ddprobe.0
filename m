Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504DD17BA5
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716734063; cv=none; b=sHX6KoAOF0b/u62rRKbhbLFr6TI7G+smMxrB4CvvoQn9kcQAZJ+p4Z5seNRxxZL2AzHy6qWTBdAb3WJsPpeoIbzu+42dvpm0Mg56Esby8ak450muW3zEGQNXTwUGcVaLrtMApgDfWEQt7LILxLdbE204oPcatgRdWO2cGL/urFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716734063; c=relaxed/simple;
	bh=U0LPKLpmRG+b6ctsK3AYb8pw8rzlNPUz7CPT0SArSk0=;
	h=To:Subject:From:Message-Id:Date; b=SRzuRiMVcZU6UhElGkR5dkLpnoVFwTqd4yYVs8gNGwo5zEwqwu65bvWyRcBnCIxk59kLbJtEdVt57iyqCo5kljLnX3l/ZRw0a1rN0W0SXk0frgvFkPhkeZtQ9d2quFNwwH67ejEzRYjVxfXrxMFovBlJe0SVNKMmuSzQNq/HrxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rh3gpIG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rh3gpIG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF56BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716734062;
	bh=U0LPKLpmRG+b6ctsK3AYb8pw8rzlNPUz7CPT0SArSk0=;
	h=To:Subject:From:Date:From;
	b=rh3gpIG6KOUSpyDkkT6qAiasqwz5iquAoNMw/Vh+eeFeSVj8lol2yo2JQf1XzFcUF
	 jhSmhKZqjmXMUgvEWP/mxLUBCRWgCTugjbO01g/9rrwRW6q3oomc9rQcZ9TiiPIuYD
	 O+t1OmmLYfg4wYmWwiRENlaIaptK52MTSv0nZuIc+o5PYtdkT0Cx2cHh1BLReTNyBO
	 ZcDp9yCt3xD9VPnoKbqmE1413D3kJiLUgWKd81PFl9L8c/L5/vsj4en6Yxs7sl4P+S
	 r31ptqXQU5W0PNKhxCskDkNBiGfM+1dv9H+Zjq9MGTM4h4avzNkFPx7jJDaLQldLZu
	 wLIYdB7dmjecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B16C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 14:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673406277.24910.12342110995161205805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea58f4071c5f7dc4cd8fd31a43b3d8b66c72b4e93b21743cd40cc6a54817fcff
Date: Sun, 26 May 2024 14:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716734062
