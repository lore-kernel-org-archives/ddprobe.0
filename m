Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E1E41F344
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786695634; cv=none; b=MLvKBSJJsufMjrYeJhM/xqILg3asWXURTPgcm7HO2UL4NKkDGSJZp5hfNd0B2I6jY4BUuKs+yHKwvdDwHKmeobMUP9UyNz9cPOeDEI5d7RnCMeVIS4MPIhlwkwaebRPrvBUgZBpgUCzqscOXYdQN7r1vyctgR8TDSD89mFbuISw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786695634; c=relaxed/simple;
	bh=OEy2R7zHWqZYzVQXNRs2xo0nXtb6b1fzx7BDhmvUcPw=;
	h=To:Subject:From:Message-Id:Date; b=RiW3G1CwtU4HDxc6ybAkzinTpi4b+AcirTzhObRXaXhA3bEaZ3KBss9edkySt9siiBczTi7nX3knPslFAASFeH7TlH6j09w5iiZUbHSOIoj91I634dgEzOESgDuFtO4RaCf0TOAge7SqJEoQQbFnPENl3cqmfiJSLYKbboVRosc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZyVFuxQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZyVFuxQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD27AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786695633;
	bh=OEy2R7zHWqZYzVQXNRs2xo0nXtb6b1fzx7BDhmvUcPw=;
	h=To:Subject:From:Date:From;
	b=ZyVFuxQEThZt0TbiqXY75L7mv58dPRAAvvivX9jjUPmOjqgTx6yVPOljbmLDK87bl
	 945/MmkQThmzby0Rpsf28yifq65Lw+OVJmbzkJAwq1GYyH6WcAX94iTPy+ccSL3Yjf
	 zZvvIlZI3xnESrPKgaKkaPpoJDOLLaR+C7B3YmM3rRpP3HJxYbcVpdTZfJHD86yry3
	 IBZAl+Kgt0XNx5sn8JqiIKsqoN3Sg/EQ8+mRefO3RYOixO+2T40wBz2CUfzl1echo8
	 m13WHa6U1pjCMhT8KAVIEDiR5DwoWldRojd/5KaAuNZnoDDxyGtdDf+az+conTyPSR
	 yNnwMAOfut8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD9FC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669563369.10774.1659194221264709327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e13a0fd5b7f513c566dab1b5caf2a33796393a6c02b9e69082c47b231942db
Date: Fri, 14 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786695633
