Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B69C267AF6
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766022834; cv=none; b=OJn/SC9Ya/RU6E09Pfyq+KEBpoYJm+Nn3chhZVgLkAeIlBMGNrHojJ1eJbqU3I2YtQ6JXOefaKINMxf6BUjJ95MvkwlwVce9TrtfhOkTqCbZqCUJoYQKDRGh2B+MqD5nR+wfmoBBG4i/ZegweVMy3bMbHnXYyALS0RyItA0mY7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766022834; c=relaxed/simple;
	bh=3C5WEwkh5RYayK2/j9KtgCB6ZUC7+txrodaN6bL1sl4=;
	h=To:Subject:From:Message-Id:Date; b=bSFokbiC7NvyLocLhtdaD17MB7q4z1lkGR9lFMOVkik1o6dJ+GUF0O8dVmCaPMTwWhrFcC4ER5qEGiEdWTtKzESsQoFvOcRujJ3+CxfMgPm/8Eih6479JhlhoENhgGbjRPUWMlhFuwaHiIN4cWqvkRYGeU8XbitdveczgGhYtLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxuKCeju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxuKCeju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DC1C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766022833;
	bh=3C5WEwkh5RYayK2/j9KtgCB6ZUC7+txrodaN6bL1sl4=;
	h=To:Subject:From:Date:From;
	b=JxuKCejuGHJzKlA0jF27qXNeS3LP/2pQnDxJCEr9ilBod1NYk1Ro0ssnafohFYBwY
	 lUG6LccR77iJB9moTOej55hGo1zwYNb8Hb1vkAD3JwOq1XViTg2q2taZ9rKpyj2Eik
	 gjey8NXwQ7YEuz7y+r5GXlmRxjAbk4umitGafUCA7NkiQlveelxvwYj20bo71HF9sL
	 jesX7tPwRMnxBnGr17eLC+EqVDdEpdcbj7OkRU5esYdxBgRRQ5SgVJuWTdoCCFdLqV
	 gYVbZG6sP1DVTWuRk7wBL+JEvoEjcZ02uhMKnKtQUnwvu5wufYHHFqkjerrErt+Zry
	 OglUlRPRhkXzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9797BD68BC9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602283358.21608.9584692091560196633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf9ef687cb222ff145d6a21af7609e6909c45104ebee3114cae1cd92032bcf2
Date: Thu, 18 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766022833
