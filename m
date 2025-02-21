Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404241C3F02
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740129534; cv=none; b=VXPGl0GnZr5gKCoxf22Yuz4WV5vfXJpfZjQLirHlo8gXzPBjHfvm8RarKih2TjHcMfInODEpDMbIxHwzIYNOIHEDHyy84W2zMB4CfGkqWSxAwrulaysdUIBKg/JXv1+dvP/uhPvz7wJJKa13PtgSKk2Z7vQVG2wktmyzqJYRLYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740129534; c=relaxed/simple;
	bh=1OzJDlV7Ao2fTbbbMTWA9IHsbu1YT35aVtyqYLInzv0=;
	h=To:Subject:From:Message-Id:Date; b=S1RSLzMKyhkqDw3Q4SZVOoaXumU3jTGg5cyMHW30oXKh6h3PMNu2876zaTN0XQwllAZb/C/ycC40iBwXMbhJsaVFzfapBni1jghHMT1R1KuiVbv7bMFFQ3V5bwfqvvJwom0JWWsu2khChM+Pc2cMhntSTEi+G4A0egEaw0oGkuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYqrw32N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYqrw32N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16F2C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740129533;
	bh=1OzJDlV7Ao2fTbbbMTWA9IHsbu1YT35aVtyqYLInzv0=;
	h=To:Subject:From:Date:From;
	b=UYqrw32N77aaXkc7DC/wiwMjwZ1G7tRrDRyvdLWMmzhtPs2zm5Q3dWNt+b+FsizNY
	 +AVfij1wkNqjtp3OrdFv5q5+dyX+Qj6iV2mIhuGfI3FhJO0qKOhAYY1JKS/8dSF1s/
	 2OLERFShEeBBIYKX+mN1pkdj76OE9xZCzK02DuPbgL/K8861dXEXJFd3v0JzzuViNa
	 9mTpWbWt/u6knOJJM1WM7YVfyZXredLPF/NV06ya2jJUeLVDDBOq4pUm3sZAJCHcL+
	 dSVIansLz59fqDxscbEzIU+K4zVUAL0+yaA1E7CWPMb4EyK5gXdTq6ObZqyAlBE3Zl
	 LRZmz+ShJoUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB9BC021B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012953362.9280.3629786164742348247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad15a116ffaa70a9ad1eaea6dbb197a6d1db4234d8d2b24e3838b91dad65985
Date: Fri, 21 Feb 2025 09:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740129533
