Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFC32DCC0D
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748810994; cv=none; b=u1X2HdZPuq3sAQKyrufuIKwiGoMKiBAnls1lrjja5ni375/jrRTBRHqd4NR4XBKYtGebuvuhm1hHq1m2/iRVoDNBRRk/f9/S25bT7tW9OnDb6qbL2ywEOLrCeQO0O3qoYzDzm5yJKwr/+3jWHgZvBt4u9jRTwBxnkPkpaJ2ibUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748810994; c=relaxed/simple;
	bh=m5qjJcD/thmcECgI73pmiBB1vLMM6vDAlC3JmhsmRuo=;
	h=To:Subject:From:Message-Id:Date; b=Bbqsc6Ofs9E9ysaIhx95ZBfDqD3m/a2qRC8oNA3hLxFhiGY+oDvE/TjtZYLSwpEZFcUDspsQ2W4YUYLutA7Vtv8MZHP9oqQV536lqsKX9ExgSCyP8BE/8dFtfWk2SEd+H4zzFFAdpWt8iyTbPZtz9Qu/3uBnLyoNMZTlq5e4BQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvR0Fm+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvR0Fm+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36B0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748810993;
	bh=m5qjJcD/thmcECgI73pmiBB1vLMM6vDAlC3JmhsmRuo=;
	h=To:Subject:From:Date:From;
	b=QvR0Fm+/35hHzd1GgQSfO23qtFynENYwPH2du9Dsgc9iHZnB/cyHSx9wGHnO2XuNN
	 CAMs+0K6L5n9MiGIa5DYSCi4Voh4fXHtr2N+w3mXJj7CT4D79YZyLkkmjcffIG1mHR
	 4GnSPyoW346dRifsFwDt9CNvuzauI7g8tHNFCzd8HwoYuxo1MmWwBLXU8mfCGb3wOV
	 N33E3yzCPLdb+xvNJL6zW67QhgDYtwDnlEFrkakiYanC4eFfdXzVTWnJMNuLQrjJr6
	 UR+jVlyMxO8xB2GL+89BbY92Ap2NvQ1sZ1aW/QP7Bw+Buxt+fhMQnSjSfhpW/G0dx0
	 1N+TH50/y7nOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F67AC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881099357.1137.1286389564753485785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6732ea957dbc494d457c474838674734d5ef5aaaf4ad6f2f6faf4e5322a40193
Date: Sun, 01 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748810993
