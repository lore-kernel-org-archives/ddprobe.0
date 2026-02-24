Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189311428F4
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771928694; cv=none; b=KHx3teoMJGa8u/jP5Pm4wB9uivtB6dELYlYUARFB2zguuymwTxa54MIaPL3KXUPsxOTg6sJiAJh7uXx150ZuL6sD7ED8Bu2JJAexNLI08DENWe/m8xHubc3KHWEQFBXgUPlwINL+PGYdwfZdWeOIJBlFK292wVbSLxMJ5C8kp1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771928694; c=relaxed/simple;
	bh=b+r3XA85HQdCSRbz1YO90bxDjz5v6cU43igO/CrJVWc=;
	h=To:Subject:From:Message-Id:Date; b=R3ftAeT5H9Si5XfRg39EXixB6X/3P4usjGhB3f4zTL3kOqr+qrhbKug9mQHZmpRaIsJv9qqc8Ph2nZqwzGyiHEbXf4xyXB5fGx/tc497Qw93+DEZvFe0Kh4B0M1UkLaqrXp11lFAJ/+PBDhA5DkkxSv+e6DZyZgTou3E3gq/6N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBwy865r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBwy865r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34E0C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771928693;
	bh=b+r3XA85HQdCSRbz1YO90bxDjz5v6cU43igO/CrJVWc=;
	h=To:Subject:From:Date:From;
	b=qBwy865rnGiJh48rFSZxfy70uh38xaKrcB2dH3pOuTEZUOj4Pj+Reoqic7DXO3BMk
	 c9wUN0s8xf19FK3i15Y+WW8rdxiH57PrhrFM3bh9r8tH+wdI7WV4z6MwRDENnKz7th
	 DjRS+kUZNY2JWgjRGUzIF5po66tV/y6+VyjZd0hF/e8Jy7ilhTB/BfrELSlXY+BdDe
	 UkJchqTvMUL6AsF8IVaWpXKyiMIw50NPwFnmI/PRX/jMcCmsdAA1jWt2DagNXmBbDc
	 b+feEcU0oZEY/ZGWAfrLdsS8Y9sMS5sW7H0lyx2WEMGypwH/9K//o9q4AOr9ke6Cdq
	 XkbFDIV6Rpoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911FBE9B24E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192869358.23169.5988216148331582485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a742a0fc8df907a1cf32d8d49dd9a4766fa9c8c7675412089ccec8e50c8086f
Date: Tue, 24 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771928693
