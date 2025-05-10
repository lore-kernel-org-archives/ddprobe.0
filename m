Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4716817BEBF
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746853794; cv=none; b=MO0vP1uMhRqaNcv8CrFkndyNYMwut51/h9odLat+w4AaJzgl2B7XbB1jrju3lTZMJCBQLJGpmFrXg3klpbtXtITWjwqvyRp9rLRF9wwPTCy1LNs/RmuP1OeT69xJnAh2CSl6pIllpjYgrGEOGdY+6WutnTJtXmQSp0wQAO4jEgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746853794; c=relaxed/simple;
	bh=tNUrUvS86Hz7pA0hWwXQgvMS5Oy9AjDaGXLqPbd/sTE=;
	h=To:Subject:From:Message-Id:Date; b=r8Hz8m+i7Aoby+R11nfQcLbSQW2N3lN/3jYuxoV9idq1t5kaVvljkziebsEyKZ2nU7jClXEiO7juG6D8uHh3k86tr2xlJz8+dpI3jVUrTAZJ52YeCBqhcRkrnmfh3f4KXq+uEo9o/3j+5dsgAtDWBFCAzhP8Z3laCXNdQn2kXwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv+y2he/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv+y2he/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A498FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746853793;
	bh=tNUrUvS86Hz7pA0hWwXQgvMS5Oy9AjDaGXLqPbd/sTE=;
	h=To:Subject:From:Date:From;
	b=sv+y2he/dvsprTC0uHh2nz+8oDuSqYygFGkN2+Xcx/9JvlEnsC9+7kKqDAqPxa+3w
	 1efY0p368xcqRgGj8AkpWQXuwnNYuu7DJUPWVoFUGe/cwFebnuuUkk2A/ykDyhdhaX
	 zedys/BKaNYhSDTYOxwnjP/+4mTeyMJmp21Y2tYBNdpgoRhrrYRE1KlDPziOGFTp/n
	 6rSNmE8Y+19rL0bPWrZOkANFjs2TkA2CExJU0lLZS/HuOaolpJJLCS+Hqy8dS8dtCC
	 VDwjXw5fTAdua2Q0eSm1JbJ/PNSElG0+Z3lJGGAAZoVxsNxeIzL294MaTzE6FOiAf4
	 hjLWo3WCuFTcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9345CC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685379358.26398.16779937390452564043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2c2b1fda31bb893552256f216f04bc23c5f83013f940cc2c463651dc187243
Date: Sat, 10 May 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746853793
