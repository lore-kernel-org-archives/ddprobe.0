Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264E95475C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727088354; cv=none; b=oePyTXX+SmzwKAVZo9+sqfFq02oZBJMAmAJFCxl+SxlUyuqD6MjpEHf4l5r5NCuNq3KymxZLaj3UQhGzcKj+CRZ7uAjhMJ+eEQs4PCTSjEpJ+fanvUiz3ZiJ5zIJj2KJdypBWdqZxeNHzJ2iuOeZBx+1cu5xpm5vGTA707R8y+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727088354; c=relaxed/simple;
	bh=rknm1lJzc7/fakUTSbqtLmcHYN3i+ns4O3pi8Z8JmYU=;
	h=To:Subject:From:Message-Id:Date; b=LtAfmnM/WwDBnxAZicR5oF/mvvkDt7BRWfzd8DT93iW/rEVJ8eo+5aZMJKKe1I+Snycq3vAuEB2m0ztVdHyBgWmFbSix+2rQflXWde62iFXmS1e1yihpjN2cHNzVlAG7YGAjb2SnFq+3Wc4aZvRGCZmi2HDv0WSAy9PtWBPvn78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2w1XAid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2w1XAid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8493C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727088353;
	bh=rknm1lJzc7/fakUTSbqtLmcHYN3i+ns4O3pi8Z8JmYU=;
	h=To:Subject:From:Date:From;
	b=Z2w1XAid9dTKv2hxOfr3TafJwTR8yQk0ThfU1bCfxmgecCKB8pRvz63NzFz9uhYdr
	 lK3O4w2kmtFqwbrRAo9VivRBND+243686XfMmpL61wN6thrUX+yj4xOaNzQHyVAXlP
	 9vC1rdfYMoaG47SYfJbudYl6EZv2QyKC+GoMpRNrjb9REmc93gjkLgnmqyb/L5FsEt
	 /VAo1GcBVASgkRekp4sMY9KN0ndGEaDJiZ53bU4vkfL3qZzICLIAPClHNhMFhFPG89
	 x/L/OkiWOei7V5jJU6+UkroZLucCkrJvQoHUo9RYlYCVCDXm1oqKRkDuijObbDtPL9
	 CJxl/uMFibpjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93408CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172708835359.29199.2039084070667454653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 822310107809e379b7d8cfe32dfc5ccb0adcd0d37f5c362031a564417c268bbd
Date: Mon, 23 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727088353
