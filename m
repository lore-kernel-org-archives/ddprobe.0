Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC37D147C6F
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712611097; cv=none; b=CEf7MKLO1Auo/wMP2YbEzPvgsKA1C17YPb6eXdemXmdc+CY5dxXeok59E9Xh4PvWFns4ZD40BK0KyL2rGfEescg7t0V7qWnDzELD3ORhIaRdgv1Oz9BQQhV8zMSLsaDhe8sqRVXBUhbNKe7RuG8xZlj6TTZuGS7BaTDpUroK20E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712611097; c=relaxed/simple;
	bh=0oiCE2w/w+QbIwhqIs8kntwOatVJjpDlibkCijoO8Jw=;
	h=To:Subject:From:Message-Id:Date; b=dPV8m0HXkEN0HnwZn0VWH5/EoWRdOl0jfjIfLyET/CzBMPEDSUeAcfEYejSb7crianoFfrWpT2zJlpyfIaARdaIbc/c0KF4CEPnptChkrWJHuATzJMk2QwltNRdUOKrdEzV6yAPflm3LUjKyYuIr0qgCti54P6eVnKwscq7RK1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnF5HG3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnF5HG3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737F3C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712611096;
	bh=0oiCE2w/w+QbIwhqIs8kntwOatVJjpDlibkCijoO8Jw=;
	h=To:Subject:From:Date:From;
	b=OnF5HG3tqWvE6eeD9iE48dTT7xusnHUGaaecDuhT/Chx/e9+Qm2hiXXBuYf6Bkdmq
	 R0XgHbQgzexjTK/3R8cgp9pDp0KMJZ2Xorahonalnh6nEddP8HwzbbwepTAW1WbFIa
	 se99oJZXjRY7vI5AHQmL8Bt0rLD2cVzkJo6CcaEN1Y8zLYk+/iatrra46VyUxg1F+W
	 oGrqtJPbhQayo5ytT2e3BqjQCyIT8szHl0efZm0DpX9+j7MgUrv7/qCbM+gOdfqeed
	 xfqDfujt9nAcnyN2rmddsT4UJ0F/M/yJEaGdbAtpmsOGZIu7A5zQ+4MwDAQyrrks1L
	 L9l4eoDOwh8+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F979C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171261109638.23850.939386483590424528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4f373d591b12daca0b71a05efae3358df3c1f01066a0f9a66e3d193087269d3
Date: Mon, 08 Apr 2024 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712611096
