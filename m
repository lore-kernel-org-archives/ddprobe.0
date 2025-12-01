Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4932F25F5
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764577374; cv=none; b=rO+rturC5S+3U3tNBGA89slgtdNkXLdJru2p7Rx8ZI3lgRx7zo/WRQdEmA/iwDe4KyQplFSJQnxf4NQSMW82q4eJ6ptNTbPGJW4FrQwTCBHqNknjxaWbtWFl4v4QxuafazcxqQ7Tnqe0eAnLvhs4E/TkEli8G4j5mg3J+1aTvzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764577374; c=relaxed/simple;
	bh=wBb+legk3NQJ4l1a7J4Eys/5BFqCft2jJrgcG0xATS0=;
	h=To:Subject:From:Message-Id:Date; b=HjY/5a7HKPZqGMNjaWNV3J0v65ugmcIAUtXv36mLkXpYGbh1839OUzfF8QEY5otTPMMCu5Hw8qceX1304Q8kSKVeHNtER82eyqBxFI3b55HoRUJ8xwlUv/EKxsCGdiA4q17F1OEwbLJX+CF4TBl10LYDC57zx6na0nXrI8die9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+NYI0bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+NYI0bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC36C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764577373;
	bh=wBb+legk3NQJ4l1a7J4Eys/5BFqCft2jJrgcG0xATS0=;
	h=To:Subject:From:Date:From;
	b=V+NYI0bmIqnMDGaZVzrHGs8nKRWGvZiYrPzMRrI8GHS81wUJD2bsZ7MNvwzox3j9A
	 F8klh5MSDP2SuidGyF6CN4irGAcvYaKb19P4BRI4oqIWRVRTN2TnTU20KPKoBNYG9a
	 Q4PxV1ud+wTIrH9t9DHA1QfI6Tm1+MjpHTaPOLvCybB94S05HeD2i0B7hPylHXP3kC
	 VhhWWAkMxQRBlGWPPP6I5/Jo8lq141Z6Umvg3UDVbhM1eax34Jaq0cO8i80RbCi0dl
	 6Zv8qnPWz2pJi6WOEcdlJrmvYEVPSP2PyfYbYQUKa7bB81Y3MGFfmMnsLSdIf7CC1f
	 hn2lNvEzciF1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990B1D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457737360.12536.753065014515719078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbc70b235296c1b6d5d42587cac24095d696e378cd86249d16257aa00e035e4e
Date: Mon, 01 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764577373
