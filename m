Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AF6442397
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791117035; cv=none; b=eLhDP88XgTwOr6V0Hpw+5pUT4PqPBML2sGTZ3BzNSmv4cNo7HyBF65r1WHGQBteECsdwft/4NhADW6n7fXAOBZ7fK8HV3XF7MASvT+qAB5exXdlzjRPOlUFDmnNtS5hP+C70C0tUvIH3PW3GBKwdahQLkmEw8KRmY9CdVDQCkGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791117035; c=relaxed/simple;
	bh=NCINDvF5FmVl8lwCLeblGitNyaZekM7krgQMiXk9tXw=;
	h=To:Subject:From:Message-Id:Date; b=ljCh97dYcif4Sj0W54i82IXEbZL6MOmAagapy2J3NFSF3FAY4gHM9iMeiBuSyhBiTCXTquSB9ptJedMDNOM1wM6MhXYPvdhsDrNAnloJAbgwrILdhVY/8gQQJ3/q6YGdr3xsmKfwokh007f8hpumGhOh2+t0XJEHVw5j5WVH8Ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMnppWE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMnppWE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD7AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791117033;
	bh=NCINDvF5FmVl8lwCLeblGitNyaZekM7krgQMiXk9tXw=;
	h=To:Subject:From:Date:From;
	b=DMnppWE+p1KDjqcuuc5i0OpTQwuO+V6izHg5p/+fLiJ1fGVmy1U5Jqcx/vH2auHsR
	 TIk9F8MSr+3bjm+xtcC25EMBllHarxImuOqAc//W6huTwOxL5LRyoQi9s62u5GUfxJ
	 ts9jcKK5BkUPx3nh5z37e0t6lUAuCWsIkeHqRz4nBZHE99Sh5LYXednKTA2Jgt4/Ih
	 9bt0qoMAyUc63i4YYhu1oE+wPEs0p3MPiFdX1zORdMcO7q7l0uyOXeQTmyhSY98BZt
	 Ret3UTsLHrSNf91e+ieiraQbFNgm9yOsU7YNpgdv5XlnrUT8k0Yv5WtVr+BT56UIT1
	 rnG4HvB8k71Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB602CA5FF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111703369.28001.5112856666736225153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276800f614405a7547f3cf7224d219981a494fc04cebfc691344ac95c46d783a
Date: Sun, 04 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791117033
