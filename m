Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B26BB5B
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766347434; cv=none; b=u4OuxvuJrR9JSVgBY5rKIAShHnx9aMd0swpKSs3suU81ASKsp4nH09r+JQz2tmNYyjF2PFsYDaX0rg3VllX1JzRFsTu1nkIMQ2vFJq8aJIRVB8DcoEiqc+x1tDF8x+5IX3K81EhXMohObmuft2OucRPXBx6WxKtSsZGy5X5Y0T0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766347434; c=relaxed/simple;
	bh=1ZczhjpqQfNI2afOcVDafB0F9Q2l4rlDDEht6swQo6M=;
	h=To:Subject:From:Message-Id:Date; b=rfXkRFY2ACYwgRSzxrSrZQ8N8IHd8i+6KHa4pqaVnmnRtzbdJpY5WPpXtGBFWgKxzOEH6V3Vk+IN93qur1Wbmrtd1coXWfj5By5Flsr9U0bnMal74jFJPKpxy+sKNjp1+bVIxJJANJhdnU6ZCldKolVWDxLcMrvqMTBiJa77Rz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rpJ2lDgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rpJ2lDgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3352C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766347433;
	bh=1ZczhjpqQfNI2afOcVDafB0F9Q2l4rlDDEht6swQo6M=;
	h=To:Subject:From:Date:From;
	b=rpJ2lDgYjAb+HZHOWnJpb9t3H/DnV7m6G4d0fPXU63R+ibwdsekG1UtGx4xpg7Sea
	 lk/NYR2TjPKzvMReZ2dfelex92m611KG4WrreI+HENtONbAB+yC6a2XWPY6+MD0gBO
	 gHRcaJSmWsaikLPZmevzw7WlOEcXkUZOruDlaDbvCwiQGZVMaCJ9MTrNlIXEyspwro
	 DdQKmIL3DAwDwjCyO08+saxlqLGu+89Pi8Hg6PPYUiiMkecdhD8HIOA68N8EYa4Nx3
	 TZIEZYlRO7JvS6f1UwtL0pKepHlJYuYrx2fBu2kF5Cgoo1hSSevAVSx0mp3lL6NUJI
	 or51FYT3zfhNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9567FE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634743357.5750.15145028775646007584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b193f5589629302364cf1f386e9a5b2aec8db9ef163a82f7114474929cc5767
Date: Sun, 21 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766347433
