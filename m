Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2373315D5A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768200234; cv=none; b=ClO/V7sh3hAdwF42Kr7PzuCwAesw3FIO3kdKKGbzAtpx2X8xvcfD1JdunT1IA2/haHmw3F7UCEkm75wAT7q8E7tabOb/MbNi1IsBezkW+SAls2YQlET1RN87agLzrhwhQTm8lCc0XMLIyexOVwj9fwZlx4O6NETlnqsQNCFUP8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768200234; c=relaxed/simple;
	bh=79CW8h8SrMB0YtqIAPXE3Jh2ckXPnGecYTEY2PuCcF4=;
	h=To:Subject:From:Message-Id:Date; b=lSZr2aIzZvcIDqpbf18pH1w1orplvIsVCKE6OE7F22hkMpau6f7Z8nxsIegstaGqf1o0uXoEL3MAFYiJt/tWkW1MDITnLE+DtXDMQ7pAt/Wj+UaU2thUQvlKUj7xXA4acN6OsOcVo2/KJDa7oze2mwPIQ/PFCa4OF9YWmc0R4fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eO44sRQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eO44sRQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 996F6C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768200233;
	bh=79CW8h8SrMB0YtqIAPXE3Jh2ckXPnGecYTEY2PuCcF4=;
	h=To:Subject:From:Date:From;
	b=eO44sRQ7G8iQKDNSCtKtJNOvOE5QVCUI/eIjE0um49FB3QCw+JoyDyFeO93mRGKRV
	 vd7aKkEHG00AcrhZhULKv/Pj6XVd3FElSUy52Id8JHHHRmonYjgl6VknjYj9z/zPfu
	 MnKsUlxvYcTIUn0r20v14eRyO822LUrp4zxA36+rQMkVEQlBrgzpGRr8iu56SPUXzr
	 li683lsln5Q2IVxpEbFzqbo4CXNGBeWlaefdT0ydmJS0IBJiq5evY3cDOQUHhKuaj8
	 2UAO9/30kdADHewGAbOhc7e6g66P8iI6EeihIHHLJ/oBSdU513T/BRFgYCLVlItIPQ
	 vm14/JpRS56qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE38D2503A
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176820023358.1733.14641452032170034901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b834d892665da7fe123eac04d805c26eecbd190bb97d9f70ba87837c638f010
Date: Mon, 12 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768200233
