Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA7F3C063A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775650534; cv=none; b=kia/mIJ1uwLrJ2ahfflz7QFLv4yIxl8mMLgA+hwMD1X96yUITWgsfdgmLUh8z+5PR+/hHCl9oMrG1UNnelpjN/3E48daHgK+l+sw5NChQCLXmTd6aq+Fi3uir37qTuNahMsQvRQanLNd8C3uxM3r0h+tsH5A26BbRmrl71nciyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775650534; c=relaxed/simple;
	bh=En8yoaGe0Qz/cbz/TdlciMW2RYsqjZwUTffOXlXE7ro=;
	h=To:Subject:From:Message-Id:Date; b=VgmkeIukR3hgdj5fx6GVe0HB51QqpcVvlnFeHVOFQbWtYiLN6gzAM0e8Tw8X5qQwTdSRpCry0ZHdrh+wz+iPhDmrHU8bO1Gx5wk+1D2LsGTaMD3yLg+Xsm/1YxORKNP4xq23uLt6kVHhTQzMp36ma6cMgeYdIhT7eTAIIUcOT1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YvD1OT5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YvD1OT5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB1CDC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775650533;
	bh=En8yoaGe0Qz/cbz/TdlciMW2RYsqjZwUTffOXlXE7ro=;
	h=To:Subject:From:Date:From;
	b=YvD1OT5IOsVUco3N9JcyEp/wak5Rx2vMnpubXBeOYbPy0sAyDTLiz+EgE1qlDyuvC
	 vvWde3p2FbS+Z0akhezwHA7Fh59ei8v6yUpOZHP45uTiss30a4/VMiM7KrRP93eTS7
	 CVF+jrhnOZofs/EPlasD9BkGqM/M7VqtfJIOUc+yOck0MadvAVqrQEpbCZYW+epOI6
	 sooGlvHkP9jOyyw+99viu1DHvV/X/j3o/r6T34hA7PwiR+Ql2S0RKbDMKiNZv3VQtZ
	 54SAk0UcAKYcjcbyuIqTK6VRXuvxjG6aJPQooyrQawLxnLG7MSU9uUufydOFsHF2Ld
	 pT0umaUoUKeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAACF1073C9E
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565053368.20980.10429793350550786148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e19f188472bb6c5629c541e0afd592bfde59505244ff07ead0a63eef5729c0b
Date: Wed, 08 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775650533
