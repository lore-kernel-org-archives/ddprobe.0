Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DB61EB186
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740945536; cv=none; b=tOnALyMKvDeVON2clLgswVSayB4gD3VVChOf2zymIsJPZYVEF2zxUbQMXG/PM75Nm/n64Cj3Leawd3HYA7FEVhRrQIdoR6p+ADqfI4PVPkzPrkP/ZExQSxY+iLSHXL66+33gHQA4Eh7w9qP159q5g9NlnCLs6kDWiAtrKxZQZ2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740945536; c=relaxed/simple;
	bh=QI/hUBt9CLalnCo7wV8RG4vSLysH04cXbT8vCvrlGCk=;
	h=To:Subject:From:Message-Id:Date; b=QupmYoPtX/RI7TmdqQg8Tlbc+HsZ0uWqmq9tP0mmKOyYr3D7PFJ8BUQtrsjrdm3UG4SaodIIwIvsylSsGW8351mpID2a/mv3v9fiHNq6IOdRs3jjsWMpdH3WQOqIpx0w/CvkZ0vCdJ/oGkzVV4g4vSYD5evCAEq6td/qkIVQxeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyqUjmJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyqUjmJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC933C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740945533;
	bh=QI/hUBt9CLalnCo7wV8RG4vSLysH04cXbT8vCvrlGCk=;
	h=To:Subject:From:Date:From;
	b=jyqUjmJWzAKMr6FxKrZIJQtB726bguTI+JYO7Bxmzu4/2td7XmGEklcKZ/aPntU15
	 HFttfAEd6UPKxsEOIqhrSFsPkGsI7MNQ2j6rTn5tcDMkdZoGOaUovkID2Odd4t0oiF
	 0HJa+nS2sZ4F3lF5JIJoOtO8wLi84G3peoG+NuZR/d3ieaOM7+dMWZcnUXaikhjAy+
	 6fVStX6KzHYhPLrHjIo7mhrtXb+jomokGGmmO/LUGT7S2wSmIabF7HjqWweVgyEeKH
	 Y4KLNt5ChRBwkV70Rndu6pZGl54MW/0r+hjAR181++uXCoGYxREZZpVPA6kt/vWcFK
	 MwnzakucKvsuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2E5BC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 19:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174094553364.15521.4806523181810712347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424733da5fd67d32848dd930567425744c752afa504d272779e76e5f6b8edd35
Date: Sun, 02 Mar 2025 19:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740945533
