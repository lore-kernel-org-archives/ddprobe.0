Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369B320EB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748659794; cv=none; b=JaZLYHjzSZ/3aI+RVYbV9bQ8mzbgjXMPEUCA6JM6w8lbfpEogKTLB9/gP2ZhjZ6ifTB1uaFy8j3gcHFRLgyb10DFqGpy81ncYLJaaFoXZWX0XnujFgfjw070AvcVPPwbeVoAsGWK4VMoUf38j5GScmnVWd8r5NbhMHAwW6KlEK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748659794; c=relaxed/simple;
	bh=zuUwFin69cl+I/vMlqg15pQ3UfF0v0LlW5sRlpTJzY4=;
	h=To:Subject:From:Message-Id:Date; b=Y+ihE6x9OCLyHgzhy946+UZDPXOy7SwYmrJpyBa4F3eN0J3ZAA35Zt7h6SChkJdHYP8QgOU1oVGeMHNbI3JtwfL9fhQrg4wVEAiiQv5PtFuz7iYtbSLfPRJrfFuHz0thqYz3Q3avqM8iLWn8aOC3ouvtztJxlE56KeJUIs8DRh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hex1W3lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hex1W3lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5280C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748659793;
	bh=zuUwFin69cl+I/vMlqg15pQ3UfF0v0LlW5sRlpTJzY4=;
	h=To:Subject:From:Date:From;
	b=hex1W3lkafq18PeU9caBJD86y5Rsyf6UUYP2bBrn2eoX8O75EMY98/83MmG3YhIVQ
	 6xB0BPqTgiFww0vzvtOxcU7rXBRsizU9xb6/r1LAwvqCZLKoUdadqX8xoUAhld+rGB
	 mQ9ns3tJb7mdA6YXHU0F/X6CvBEOv3VZQBO4DovhFXMmuWlFVxZiGD+W9oyoEWZpgp
	 LenM4zxvRrHosLzWoO+1qChBhAD5omvYUihoR4JAuhr23MuXETscQWgg2zg59tdGLo
	 tIlPlQy/NFWupWMBjfZLGYNbKcr5nari0MANVT04OJyovwcGraXULZnlOAj8RuRLX1
	 7cSFtFURmNk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909BDC5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865979358.15747.12128633003258396342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e5f47a9153a1e7a9355f75079caea98de189d7fd6ba09db2a9b2c3dd823aadd
Date: Sat, 31 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748659793
