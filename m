Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0A81370AE1
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785296435; cv=none; b=NnQXJgA/OrScCPlGrLbE70Km3uxW65Wgcb6CsPLEzHQSLFhO6UyLKuIE7ee23IXQN/KHMKVFoX6yyA/cASnWThTHcwIfC/9nITM6p7hOZtQmLgzjRakaniD3i60zEoXCJttUWmT4ybKv3c9LsyeEiDXvKb+Ttgn22C5xJWiaN8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785296435; c=relaxed/simple;
	bh=Uec9QXL4orB1YT5dIyRPPoNX2MWauBAaYhbU5MnlEdc=;
	h=To:Subject:From:Message-Id:Date; b=rJTZqUTgPIhFnlc6kpcZD+DhnBJvKI0r+FWHnRLlkkHjpbFbxC5mb6+5r52osfyAGb3VYCpfuqk3j/3bk4E6YwG+CrBELJW5qY1Ed2X+2b/Hm13PFldLgY7Lr7mtMuSPFFdZVWC8i8RT2f8KarR5Zu0JL2IPopj7l//XP5SClvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKshHr2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKshHr2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCF9C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785296433;
	bh=Uec9QXL4orB1YT5dIyRPPoNX2MWauBAaYhbU5MnlEdc=;
	h=To:Subject:From:Date:From;
	b=DKshHr2IPM4N1ks1uyhwft9BXk5pSR3J8PIrbfQRq7cPeQ/Kto4Cp1J84XwlbT5qH
	 KQbiYhN7QDj54TW33+YkVXZEhUS5CGYIulhIJbT+rw2CON7lXE7j8pi0ILABWXWfTs
	 /2Hx3jBSumR2YWMkSvwpL7Ni09PCjrX8QZ6subxsxSWYj4/eq5XBQsyZClGQZ/bm+v
	 hr3Sq5emrRuT7UNtX7+8FV3QmLa8ri6Uyb6HPQyOAFjMXv6A7JieW4DD5aJHnJv3Zn
	 kq6XQnJOJVmCne0c4y5IL0hzDOE+oCNLolM3M63gGcm1AhV73Jh6YdAThB/rHYGb/D
	 LgGa0JNYcZ0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE773C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529643368.26150.18443960496558595981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 959107eabaf0a4c55e7f3a52d294c8a667482bc2f1928a5225efbc847f390687
Date: Wed, 29 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785296433
