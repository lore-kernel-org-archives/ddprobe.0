Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215AFEEB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753582194; cv=none; b=u4leg+dTEsqJHUxTJkiVbCfaG0ZYD8TETbPGij7aOOITTX7OREfmtM0QaNGjER7E3UO66XpczA13S/PnG6A2Mx/SaL2RmTcXjQO/MPP9OAOlQz4OrwvmHwWqEYDm1MxCpgsGxxnETL4nBxZpwFZXydN+v2lrnYLxW5kpukBtiVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753582194; c=relaxed/simple;
	bh=jU839Pk3x6BzDgbY/Ip4x8pOALLfYdZrWPhMXQpGfA4=;
	h=To:Subject:From:Message-Id:Date; b=gtnmt0Yl/XFwAdgkax1jZ4d8APJEEQWkPor5YQa3HZIFCv+AKyTHzFmY86TBVySF+CovbA7qROmPg1LKK+50BKJnFwSNi4ivbghDKBwuK0+qD2Cmt0Cms5IMwgWBneHNO9t0fuYCbrO72xvk0F+F/PKOQifzjKn8OOpwjQ85aIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+Nnn8x1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+Nnn8x1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FDDC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753582193;
	bh=jU839Pk3x6BzDgbY/Ip4x8pOALLfYdZrWPhMXQpGfA4=;
	h=To:Subject:From:Date:From;
	b=f+Nnn8x1dmUKOAbLoy0OgfZA6DKCHSdEhEGk9bkXiZFZR/H42ouamARBgcPuUEiM7
	 1HOkaE6t0W7d534doi4z6ZNE6xgdGbm7YIHifYQQ1hv2c0O+w357eely9o2OIQJf0F
	 68MUJIM6AZVqS0HwyT33zAQFtD8uRxdyGiPvm4UJSLOThq8674+mgZHlDZ/vMRSgB8
	 b7GZmJXE8bKuam9EJ6FlbDTe/G4QJUgX7nAkZhqQwNMalSCgM0ocCtqNl/X7XCl/s6
	 2YqodMu/LxU26XtqtxiecG/PPOCpGHHzzp/jXXwzwlR2lQ2s4+nnikJGYDeFjE0EjN
	 JXi+0rllkzZFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FEC83F17
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358219357.13531.18094343081722617621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9939d57bfa54e41eaff41b0d9bddf8c6b2869bbe3e7ff44cde1179a494a1606e
Date: Sun, 27 Jul 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753582193
