Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C49C1C3F36
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726421154; cv=none; b=exuLNf/y08+Wig4bAxbFL1RR8F6Ppj0JBbW6PlW3ZcOw4pZcoATVsT1OzQ+Hgg60fgDDvJYYO13hvaF3rTOGyd4GVxbCrHLxslHP9jMApfc0daeqgcPR1vfIL3m+CXOA6Qpua1EvXglRFkbt6cZ6h6OF7lXklc4PZvJHlksTcuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726421154; c=relaxed/simple;
	bh=MffMjkunCTBudssg8D4Pq00NiWBeNCzrA2s9szFzKL8=;
	h=To:Subject:From:Message-Id:Date; b=LZGquJxyfoLvSAd4shn7+4AazsaLGIHQY0+tTnnLqmr+PZ+u81lNHlhYh1pSSc4WUARgdbcO9uSVcwQbjgyqh5DwpoF8Xc7MQv8UJxx8FWK1K26/R3nUk9/cLa8bZj9YPwq5lvTmfofMYmgzQLIZ3K4Dbi07FaKgO7Q+28pwWNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4zmc2ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4zmc2ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF72FC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726421153;
	bh=MffMjkunCTBudssg8D4Pq00NiWBeNCzrA2s9szFzKL8=;
	h=To:Subject:From:Date:From;
	b=e4zmc2ibQFFSHk7YDRwN3+rJlc17Lq6PTLc4AnkDatOfRpoTESbgLGIejyXXfl14/
	 X96msTMlTeVFN+vI7vmJ32mUq8wiuhjKv2DcuGV7xouotGW/ggYy3ekD7yLf3KuRbC
	 9nY5o34PVLjJW7Bk2PMtsMZ0gj2OyKAFa+5zyHw13hAoVNDxx4dhEY1zJykkwY/A6h
	 5wPms+RlwoRtN+H0CIcd5dwa2EtJmel9IQoYiyJb7v4NOd+YpxgKjjIE3FGHwOcuPd
	 5Pfye6OaarVqRnFHawOYDEZD6KJyKiPOxBFUVFQYcKUUjnAyWlWWvUjH9zBUwTbKYp
	 T6IiHFykD7d4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60DAC3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642115364.6963.17307187657279564926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fe1d8ecfb4a96b1784e11245a29b56a44e5dec2a2b671b3bb65c669584013e
Date: Sun, 15 Sep 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726421153
