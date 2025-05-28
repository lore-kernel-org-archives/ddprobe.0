Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DCD2F2F
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748402994; cv=none; b=cyz77S5euOmvoLtsOI51W7d9NEBlzwu1eDX7r7vlGfAQ1yYGCxghZ6kOq7IpKZnmCU0RdIGW4FEVGikmuFlV4mB4TcX03/DyUQW8MUzR+QsnZuXClAOHeIbi0T8pP9pGcAcFlSq0pHjg3Ax34NKYB7jI1U8xDTeN+v9KVlO+reY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748402994; c=relaxed/simple;
	bh=1W87SUwarZLC5y+Q/KWuEMXWJ/slj7z0hm0BT7tr6rI=;
	h=To:Subject:From:Message-Id:Date; b=Pp/LwXRumeNCrYu4+026bV0gS61Y8fuppdKCLCKGxYqProgKvARmHtiWGO0+/KtjKDJZRqUT02WCuH2BlQASNCcOWUQh081IgPp6epJKEQeLlY8LMEvZFKSnDCWj4VUfiNEThuYNMAIiHGi9h6yQlSKk5xbCxWyDcRbobVN/87Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vPopZ5L6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vPopZ5L6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5089C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748402993;
	bh=1W87SUwarZLC5y+Q/KWuEMXWJ/slj7z0hm0BT7tr6rI=;
	h=To:Subject:From:Date:From;
	b=vPopZ5L6/3kwTw+zgS5pkuBKDyDkcXU5bIWAZGBks15Zz7N3u5fuVkev5StISLwBj
	 BUPbDQ0o1IIPS1SOhqVt5PneBvwJtkyvJ9JJkUPGOROV3sxp9U6rneGuZQ9NfthRsf
	 t9Ct6q6IGw5J/wvTRdLMQHvEWRF4tDf/7ch1425k2g6CrUGnzHeCIDw1l2JgGfe27Q
	 E2JrVOG6VeynYp3iuOGdeH6aOs+V1IQ8piW3+kSFzyJrJIASt+97ArhYEGhPgPb84I
	 z22MHDCKjBV5YuwjJtBDmwGLgjq5oDXG+HxQyB0FBtp6kqy0dooUsFDoEvuC+0z6PW
	 AObjB9ljZzR3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C7BC54F30
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840299357.20492.17676728026810015351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577042a6aa6d813173c0461ef8df6d714e5afcf2adb551b7f804f6867230999d
Date: Wed, 28 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748402993
