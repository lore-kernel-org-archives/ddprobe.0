Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0087D2ECD1B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767120234; cv=none; b=PS/H7BpzQu7j82NXrQg512gHyJMqDQbXMsXsW7w1Qo7NhnPkqt3k74i2KE3Ajol5eH3HWpYSHGMhjDPjdOZPr1Ffa/6uA1bc4HoQ31UyeUqxrsFpC2aqFo3I1abfy5Oi6OATOcb7qflDwFjxr4fJOV/SeGuAKdUC7qkGFdM1Fow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767120234; c=relaxed/simple;
	bh=hHfU76sG3qxD/mWRgPTWZqiWlaAK8aLqk+J8o/u5kTg=;
	h=To:Subject:From:Message-Id:Date; b=MeogGePUfTJZeNTtYf4lX6t67CqaZPDG9yt0k/MPcU2uWIh3rC9yClxing/hC4rz80Npry4CwbNpdfPxo1SMDFmCJcrv57PGygSdrpcnnBUifNoQEaHpC+Q2yDAzLdD+wQP2UbJX+D11cSaGPohJs8WInqMrOybz26dHPuc+Mhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=If4L+SpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="If4L+SpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF78C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767120233;
	bh=hHfU76sG3qxD/mWRgPTWZqiWlaAK8aLqk+J8o/u5kTg=;
	h=To:Subject:From:Date:From;
	b=If4L+SpJ9F4l+EDMWekIKt4QK+4Iw16eLayyUPD460hvEHzEfHT0lWNFEHqfObbg9
	 Kr4PJYfYjTHKGDtsiXYJeWFgEwJYRXg2n8gwqr+faRPQGd++ZjjEaDH02B4Ouf/r2A
	 DB1ruytOXIo+h9mbh4YJyZvzlUwd69G7x6UQikCmDyYhpXKobdUGUkbqLNbkug6/At
	 yEcflPs0tINwqcdY4WuPR+m5BnMZfJmDHPYucFXTZaWozOYVGhtnQlY+cDZ60yyCMy
	 4ajO4lnr20o3ez9QwuacrWhzwzTsx1N4xTAHCdlZcQHhDV6pVqBJSnRTS41BhFWtCQ
	 s1qmc4fUtjDRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69DEE4990
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712023357.14922.8955240617136703474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f975a9e02b817d45e411f0604c3709c473447a2d757528f7823b4d392c5afa66
Date: Tue, 30 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767120233
