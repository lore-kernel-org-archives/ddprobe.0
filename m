Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C998F70
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721562354; cv=none; b=CJMjnIVGMz/9RYkvxGnHSWJiBbBbAM6ES1w+FByL3gGz+2tGPJbC8/MuvQyIxFZZIYX3RQ5iro3+Vx9ci/s1fWEu2tVr1qecBlV7KmIN8VTHCKtaE495UiCdY1MVPnaRUEODfbiidbhW4ZHIPfRzGtbpmfjJncyDn2l9ns22Iss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721562354; c=relaxed/simple;
	bh=SwrraZUS8fDigKx0VA2Fvvo4BNsLrRZxdB2w3h/++WM=;
	h=To:Subject:From:Message-Id:Date; b=ndlA8E/7kjkEU/4lv2jrHl6bd69kEqcXzvDN/hZNWgsu0FhCFF/Tr9+z5YuXTfHu/eJyl9h2C150PEpXJkNz6nRbQrgGj6MjxliwJCKe9fiXJ7n2uC+DkvMqSV1xSs975TV2Pw3fNNNKqbqn8uMzhjzjtA9LT9dXWiQl75q7IKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z03C6fnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z03C6fnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA923C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721562353;
	bh=SwrraZUS8fDigKx0VA2Fvvo4BNsLrRZxdB2w3h/++WM=;
	h=To:Subject:From:Date:From;
	b=Z03C6fnFzzTVsIYH3HFlMDRLR95IoBmBcurqBRtXGzNaYmeCH0pkEcmaaF/HcPQ6D
	 YHXZExTHAHU0iYeEqmKo5fAEV7T3lzzLVSN+rQjkKAgXn5vrmj2mIbzewqXDjMdz/J
	 GB07TyAr1/s5XLO4teg73agwR+QPRb9HdJPsD5CibHunVcdP31tYyebtytzUbpxuT/
	 hhJzRKcHwnAyiaitWcxPHhBifOEz1dWY9G5Fn6LwV6YVmn/md24/C3HRHTbfgIkMot
	 Sir6Hj3NyB7/2shi26GhOSX2gcTNrwsXfpFPyyuKDU0UvzkoyFTk5SnpvbT3nvxnl6
	 I9rOvKkE7xCRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4EBC3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156235360.1789.4010340684126749523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90224febf2fa72e36dfa03e90f4281d1d1fd0b312d9c5ffaf0b88c7cf4b0a38
Date: Sun, 21 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721562353
