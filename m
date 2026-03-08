Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B32734EEED
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773005094; cv=none; b=V+f5vuxnginKsauXGepftstmUrvH5v80LMLzTHYXXrWM6Q3ibhjFBcrUCXEKtn1zZvLe11mbNki1ipXQAzyV9rLUqN9T/D8O+Lrex/HbesorELqomM7DoJ+8QuuA6l/47uHLuZ+XP6IZpvtzlwTbHDUGCWmLFaZb1gnBuVlfT14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773005094; c=relaxed/simple;
	bh=kmfgzAWi7qBPWfBB57aDZ4LWykTeG0Aihn4Pn/h0sfs=;
	h=To:Subject:From:Message-Id:Date; b=Kj3NGB5qHTbGserGgo8JvaiDQ9MykX6L5p1aDKiKOs7n/cQNvwFTzjMXxo6eAYlEohlbPWNJlAvNE+Rv7US88wjBUOP53hQEVEJmOjBKFpVRL3HvKzGsnTWAYX2u5LdKQ6PmcmJZ4OJCch2cLmlKkRsZZt9pqJSSOqSKEIdnjs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk8P5Ooc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk8P5Ooc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C4C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773005093;
	bh=kmfgzAWi7qBPWfBB57aDZ4LWykTeG0Aihn4Pn/h0sfs=;
	h=To:Subject:From:Date:From;
	b=Gk8P5OocZrY3F3PoML0NBLYLp6tPvyxFck1393PqkMQMRXzJndapPAGopUXHq7w4C
	 txRn0BSvxboATAnD5w3NhpCaPdx8nvsYQ6i1JeNO2rQ7jJdCmldt3vNz3k5FRvZQ+m
	 9jQa1egWGq+UYTWppu8YBmGQjF4v/3Lr7Oa3tlczrrm3ysb8vYvDKrkPxF521Rcnfj
	 qKekhy9qhdTtAMmBoxEmELbv2e5Dfr/ZNWRp80Iimg4HNLCgyaj62Soqqk3Su6Bw9e
	 WRntrbUWmf4kNXqoERRR9vyr+gKtpDd0T7L2hhA6HGzR1TyuoylZ1xwzP3JbZiODUg
	 uOxFSPDILz0tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D1EEA8543
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 21:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300509359.20634.2347479793450137722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1a35d8fe13d454362444a05c461cd30ca90b3447444bca20f016cc2f2c1455
Date: Sun, 08 Mar 2026 21:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773005093
