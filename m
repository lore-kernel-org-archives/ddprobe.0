Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDD23358BE
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762952994; cv=none; b=ooxsN4862YLzKcYVg0iftyYQXsP4ZifKFDvdHLo0KYUyR8vgGaZO4Krivn9bP+PP7wp8a+cQneWcoDeV8hrVuR/W5bmq7t25kkGyT+yYRS7KiQHBRLREcZRrzWiJLoMukWAt+sWUbOzOrotrymB9swzZqu3SseLpu1jpbkFCQ54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762952994; c=relaxed/simple;
	bh=DFX1uP5RKayyJWdpU8lihRGyLEWui05HNcUHc0lR1EA=;
	h=To:Subject:From:Message-Id:Date; b=lFX31F3fkcVnM34XYx9sNAlQPR5HZ5W+2427wen0f1pYys0/aHCDs1OSp1NUo8FuM5jhx5GY5UPd9xdl56B2R6rzIjlt/jrf2S6RwhxCnlqdjFlyJIBkFRstAvNyosLsoeB1ffyxp7i3CS8M8jvnJxP+NgWCxQTOarrKINBR7SU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5IU2zsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5IU2zsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE05C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762952993;
	bh=DFX1uP5RKayyJWdpU8lihRGyLEWui05HNcUHc0lR1EA=;
	h=To:Subject:From:Date:From;
	b=c5IU2zsbeBV8Kg93bCrExnVupBohZdSWlB7bobwXQebOIteIXEHVoFIvsrIUDjRMz
	 9+1nhL6ijnu/gH/Ueu4z6ag7uZhkBVE2QsJETPDYul7vgxsqyb/YJ79HlqP/2EZrGj
	 QYvh2V1sFMiysenK7jHYKxyswTtFiVPI7KKCnk8kAjdcPj4U6B6Z1HzGAuYosKBGtz
	 md5ObfQ3Dtz2tk5ETI9As27GCgkWP9HnbYSEem+DBbPG1rnmkcWxF537fh3AE+oWjk
	 5a+oI+IStLEDpv61ApYR4g1NDgzXcrlwZVFubk5QDz0NxGIPftrtzM/P0485ErSkAB
	 vxkkCxvEfMOQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F83CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176295299358.679.8392130876683066923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22755b461dd959cf7a06afb95305615cb0a79c7682216cab450561a231a4c0c4
Date: Wed, 12 Nov 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762952993
