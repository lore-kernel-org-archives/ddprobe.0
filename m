Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D00235975
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771179894; cv=none; b=STQh3fPtpakJ7b/qj00Nqg5BxiFtKoHD3Tl3Fp8luHO4JTseOXqCYHKp9eFYbhxUrj3dbCxP1QyrqaQrZtGNSQ8MeJhRumvWQ/pblkM9MrmyuX2BZlBBD5nOtin/hfxmFibCk4Rtp9Pl5ZmwzwYMEZw0KjTTfs7dHo3/BT+P2nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771179894; c=relaxed/simple;
	bh=JNmOeC0SFNoRTblGraUAssN1E0MT75D32rdfdigK3q4=;
	h=To:Subject:From:Message-Id:Date; b=DGOEOvb/pPgUspsHiE/gtYtzHY7XUe7ZFf3SflIdpa4GtK1a4NrQEj12iD++mzqM8Lp5urZFC1eOn1JMJUTp5LEuG7JD3ke+Nu/ogaC1hmEOurnOoQOO0AbtaZYLnZLhudaA5GCGXFod9IGM7WhfgeHMYZ5xCIJYGfgnFK+a2ZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sx7IJI/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sx7IJI/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BC1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771179893;
	bh=JNmOeC0SFNoRTblGraUAssN1E0MT75D32rdfdigK3q4=;
	h=To:Subject:From:Date:From;
	b=sx7IJI/YP+WL+wKCkaGUMbNEeLBCkrJ1y1kl6fqKiex2f/U/vjgGjYbLUJHBNH5QD
	 +wrswoObl7xVvtWxFv8eZOG5KmFESZrXokxaTPN9NDsTUN83VhjqXfCUnPpbuZ6kG0
	 AaE8tpSoar3d28kVLX1DC42mv99CRsxJxLITiCAc+YtDy4EGi+u6lgjYUruXhjEp/P
	 uC3gsY0ArmCUH6HSzW1VsKz2pu9TxYZsAKfnf+0rO+vhtGCCURwiYavIUJQjbUrXYX
	 POTSCe/SwkDY5bWjaDVDicHii7dLrdrXK+0OhL0huKKvyq/7THOMRQqtQLMiaLqInr
	 F7j8MzjhA4bkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F94DE63F08
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117989362.931.2933032255693212777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8b3801825fa2f23f2a85e63d452576fa76a29fe26a3141f66c01422fdb80c8
Date: Sun, 15 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771179893
