Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0FD1946DF
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766321034; cv=none; b=GUAjlT0Itn9gdjoQJmmBhjSAkGfVR2sz4lywKdJTh9mvyajXgmMnMYAUa2n5iV7ueLFPzwFR0TIMOzodBbKeTtUM3fZDx6mcIOa21taxnln/yWhAImJLipxhjQP8wj4qPDw0BRYU+kG2YuEND4k8YYNzN7ZHq+sjTP+12zlD73E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766321034; c=relaxed/simple;
	bh=VnLvwliJMceMr6+XQxhQWpZxwvVRPFT41DDq4OotZuM=;
	h=To:Subject:From:Message-Id:Date; b=c5z7s8JK5peGDIIhLqsoDa1rjDNEXLyUDij6KP5hkLhOvkl8svrNY8r39DnrfZX2fBv+Vgw61eWL3fud8TK1fGduhzfg6GWjAI/Of0dk0DquVtqTrnSwqsrLbaLQWIYcTUyrJbFkk99s59pua39RzXeXIDlCjVFdbH4W9D78oHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxVOPu2F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxVOPu2F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C4CC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766321033;
	bh=VnLvwliJMceMr6+XQxhQWpZxwvVRPFT41DDq4OotZuM=;
	h=To:Subject:From:Date:From;
	b=NxVOPu2FBlPsiDF2TAC+GHDm3+4WgNi0O+mzfrOn9GTertDuG2MVHv1oAgjk/4TrC
	 1/zrDfpud2ABJBPGWV5LPBph4o9cZfohrZCir0YyMkcujzfJQk+RbFJmEyuWSFl+2Z
	 7ZGNxwjpblpnD+6kiQ4X2wPGQ+A7gLYFEWHhFiZcYKR2vpxpJKiLc8FrBw1ugEk95m
	 Y/3AEl7GRdLCOa+6BVaEnkDw0BWkdQBGwbCdBFWwiFT9L5dbz/L27dD7AFUMU+0JW8
	 MWUCxOsHsKzIA1seiyUGzCvgZ3lAEJ1Sb4g0gu7zDVSTVSRsfYCsh4pvVdn5yLmW0s
	 fkJ9FbmY1WGSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90771E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176632103358.4204.9105680646607602178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b685d03d00270cb6ef95027098845faa8d181dcc382be3b1eab3f903f102de
Date: Sun, 21 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766321033
