Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CB718D636
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767276234; cv=none; b=IBhCDaZftyAa0JCsAon6gLj21HTanXmqLr9YHWaiRc6LLeYxMACR3taRtpvz5zmZn50h/NAwPdMumP4OBHGUgT9Q8BNIpNvQbIpBuWHZra2Wr2ZkjHGAM055yBfFrZVQTeUKNRux3WUE61qmFPiS5LJfqU7Q9v+8TKDE1Kc4MPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767276234; c=relaxed/simple;
	bh=JltWJLSmfs3phoOAYZHeTwVkWTBGVdK7PvKSvHuWFEU=;
	h=To:Subject:From:Message-Id:Date; b=ewO8Up3aZFYxHjV+KePonQEf3RKpBqpUSCeN3gmONrYQz344rLYpq7rRmyhd0sIj6uqt1+tl6r9PD1Yov7BsgBmBfaDlJt9uunF02yU+Nl6puEENiQgGwJkREn1EaNb4qCBgVIdwicrKDLW+vikta3BYIKZ0QRfQwZqDg5mFLGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GxycvbSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GxycvbSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7024C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767276233;
	bh=JltWJLSmfs3phoOAYZHeTwVkWTBGVdK7PvKSvHuWFEU=;
	h=To:Subject:From:Date:From;
	b=GxycvbSg6uM4IgggIrPXFS2oK9BrJ/mpgkkzPSKgHmoRntf9+DqilrZdg0oxGGyF1
	 oE7iKMHkv9V3BXBMuV37/lw4By1nikhYGTZ/2OZkdEY63mOeydk61ViwvO7j7SOhPU
	 1RvF3+BK6OWttWo4PQD9Ph15w1utthdyxkPUzoZnMYyMk811c5FMYAHuXdlS/Mrgsd
	 X4BApQuKpqU3NsBTGTQSlMXdMjXWKTsQuyKhqi0ppdJsnbtetf0lPkUjc9cvW2BQ/A
	 J0R9EzgpUGO0qXC/JwuxpykbSTCMYufcpE/lYpf8GB/yKqQ4vS1Rzzuf3OwoLZTTWm
	 gFZ73lfV3OU1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDBEED609
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176727623358.25009.9240275979522397232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a860f2e9c4d63d88de63c7ae993c3371f093b1238afc2ddced836a8298fd98ac
Date: Thu, 01 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767276233
