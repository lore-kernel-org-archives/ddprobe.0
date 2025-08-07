Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBF949641
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754584195; cv=none; b=Ix1BgX6QNTKNx5WTT6WHgzAHy1tlxKFFLSmS49aaUwvrnoV9qX2EpM1zk4kJtpttVyXIZfLn/d2X605daQyiWItzXORFxlGuS7X0DeHTCoL1LqxdhC5Ep812rRjK2+A3OJO3srXuGmW8AgZx9l10AvS0HUw9h1QZ38npfVKcaJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754584195; c=relaxed/simple;
	bh=F7Q0b2xAFW9zRXsuf6QtIjcM9Zt70U+v/1GyUoOP47U=;
	h=To:Subject:From:Message-Id:Date; b=WZcmAwAL1UALMmuBSUUZj44FWbTcdxFaFLV1xzkHtiFutsyGczlT7m++XdWjdqJjkJCmVUJtom2Z1IL7Ssi6jTr8OvWUwKBCzzPjKIYyaZaKbUW0mGiWcJx0m6dhSoEZRa/lx6UROV8Re7TaSj5vN6C7Bw9lFtlN4wo6ysp6aqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU9iBSDZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU9iBSDZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754584193;
	bh=F7Q0b2xAFW9zRXsuf6QtIjcM9Zt70U+v/1GyUoOP47U=;
	h=To:Subject:From:Date:From;
	b=bU9iBSDZtYJFXDjFYP71XC8gbWcYuClTQLN39bzCYzyWuIoRriZX7qzVKuOYg/JvI
	 8piBwnne6SIdKaXu/FSBJ5eAZrCKWzDOIBZ1dP0Gl2vugaPE4att7dgADv3cC8JtsS
	 gyP8WJw0p4IPMbTLRzuF4ode8b8YDzt3K0tYGjEGA73mRpl3tEAh0eGlR6lzKwcmrr
	 ttAIMkb8ktYNzrooYTJzUSVYnO60m5m8HCORLcCIhKW9+ptyHAv8f60V4MRh4iEJft
	 CxYtmSb0pk8cvosVE/dgbZnfS3nlNBqdX3gXKXbytgMKe21eo05R7pyt/h7BE4SRIH
	 U4IJf8xK+64jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A66C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458419358.8557.15995161593607636959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d403c079ffeffe7a2c637228e5d7e4061adad546595234e384d6a3e4e4349d
Date: Thu, 07 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754584193
