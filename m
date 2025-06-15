Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380152CA9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749997194; cv=none; b=F4dkuokpOPfAyDcS7WnpwCBpab+Bz3q8UTpDq2/epUJmBNQ3+oMrProV0Gh2w6IYZX+jZREG6bqXe0Yj4Di24C6Ee9B95KyeQUEyw3EmxlsZAwGWVehSz/rS//z9l0lM2BKNKpAcIkHULS1Fn/BUlDmjrtES91e5i1Twpg9y74s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749997194; c=relaxed/simple;
	bh=SsUIk5AyDehiwkqPzhNoQuDb+N9Im9W3adFZ8ctR88w=;
	h=To:Subject:From:Message-Id:Date; b=AhmMwxfVJV9rSW2JngDJQXoLSi2nOLdBYzH26vbTFX73gxVytefTNwvMMjsdxjQq8tWbuhsgW2aSWXHv5nCxCDdqd0c1DlnPlGe+CQ1yob3UNpL8dgtTrfMTcexKFohnRcaBGXL7eG+kca2oaHBtKx/tTCcQ/Q4Wv7+PtXqronA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkjZYkkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkjZYkkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749997193;
	bh=SsUIk5AyDehiwkqPzhNoQuDb+N9Im9W3adFZ8ctR88w=;
	h=To:Subject:From:Date:From;
	b=AkjZYkkIgsb42VUC+ZySLO+jDriYOR+0hz+a5wTISY5gLKXkmuKaMHZSFD5ae+sJu
	 9ufclkE6b8zWNKwNgCQu+kQ+sAyG/iVf/AJSdUDC71GE+tzSWTfKd8wdvd6mo0VotU
	 XXYRt+bHFVAs77jWnVdlz+mgH8Ev99WKY38ItaiTjFxoA2WzknimgrmW310xLjOHEy
	 BSh0ctRhDZoCmUsvIt5Q7VcvumJ3IKAp4F8E9SQsVTa/02SVjQmU4B7agBJPjggd0G
	 kznRWQ3SK20wZpHMIVWBLYq8Cd3OTiSTU1dzSIItDbL2Ack/02cVp6SMHInVPpxKj6
	 RGrZ1lDiAfNlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9548EC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999719358.10114.13959660147330971084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bb45760bdb58cc3cea3e7f9f20cb93fd70607043970b386368b6cfdbda39383
Date: Sun, 15 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749997193
