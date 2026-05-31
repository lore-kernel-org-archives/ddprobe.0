Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3593213D51E
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780257874; cv=none; b=A84r1X0cTc/Q3wyNDSn1ZXewaQyR9Hh2znB/DbBlvZvagmQR8YcCOZSdq5Aujr/ENc7J2xqP79dGMi6JIxL43VeJ4vZ239pKhFLREhwY6rFBk/MvNBOrjTukR1Xo64AtorLkKO7zKTq+n+4j0kZs7gYiPMCbwJNxjbhno7KUgqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780257874; c=relaxed/simple;
	bh=X0ttvLv3RghNvBBG7gX/VnLoWFzFTMhiucw1UPDRS/Y=;
	h=To:Subject:From:Message-Id:Date; b=ek4FXlX5dKHKLKg1ks0FrPPTMfES829VYVvS1YRGirvwIKKTcv2g22oOJ0OUCX37wZ/nnvl0mOZIgkAiRDUfZGIfdVdQkJ+8TVi/MPiImEisl00q7EzwDYBgg8C2dlQfD1gtvQ5n8Mxa6+cEnaSgbr+LPZTi9Lzbv4W4YX5OxMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udvFo8oH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udvFo8oH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B27C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780257873;
	bh=X0ttvLv3RghNvBBG7gX/VnLoWFzFTMhiucw1UPDRS/Y=;
	h=To:Subject:From:Date:From;
	b=udvFo8oHBMD3JfU+Yec3VqovX4ifp2manamE1jEnYajD+3FxqvSPnfR+G6cmJhhIT
	 xIrPlJti39TPADGFLjGEwVPqIFjDhl/JWmIUncmd5ONB7FjvMPEYpr6u2MNKsQ7Dp/
	 NYloZATubOCpdScUA/OwNi1Ss1uyMbzDZVtna/o/+oAIfV18gXJU7nBy9ILsejd2Qe
	 F5n0L9IcmJGvLU6rx1U9Vn6jVIKM6/TDOeiBcwkbLf832vfgWcuUEGz6Ee7QbCWnx1
	 ta0ymbRAniYI8rhbsYrOxE78wQ6qMet13NDZYrDN3FjkCWrJ3yWFG0QtOYY9E9DydJ
	 WAq6j3x0ubdtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E53CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 20:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025787368.20251.13673290403699956482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc7e8a3a4fbe86cac4591513dbe5dfa7bd1e73ca7426b7ae898d5a78481cfce
Date: Sun, 31 May 2026 20:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780257873
