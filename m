Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAE318A921
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764171174; cv=none; b=FPrIaSJh3mPpYx0+QYklfsaO/Xb8aj2sfQzqBpFX6NFfbg0v91oWhMh2a0mtDwine097CIH7wqan/NbyhfFWegCT9/pZJrt5f8YBtLxTvmsdVizlo0bfMAcUzTC9lVs89qgF94fbFAeXSipzWh8F6gi5Mh+xhzxzuS7geXrzRVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764171174; c=relaxed/simple;
	bh=ZST8iQyF1PANM9jLK+AI6Mi9WOrIM3T1Io2nZZ9Rjeo=;
	h=To:Subject:From:Message-Id:Date; b=q9rtqRz+ayQszxlCE1r6X8e7AHEjXPkeQf0ZRxQzwA5uZ93KejgKN+GgB42yQXORkFwxuULmIHf8E5LBoY8sfjXMdU+Oosr68u16n0Fadf1Sj0gFd3+IEhccnj6qBQC6OLPd2BKOgGqFkNiUQ2vfrNVKOI8XIF8/C7bGQfLMPeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYxuXing; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYxuXing"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA35C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764171173;
	bh=ZST8iQyF1PANM9jLK+AI6Mi9WOrIM3T1Io2nZZ9Rjeo=;
	h=To:Subject:From:Date:From;
	b=mYxuXingx48J9Iw9RMQ3RHwGiYNmnBLnJXYimdFmGwbUO/FkDsTgnV6jFzRS3g8uH
	 jP6cYm0LPT2N/NCAJeL5Dzqyz5xpBWXURthr2FA6KUduznA6S/4ZYy8bdnXLUJArIH
	 lCFLSym8Me1CKZ/8/aBoaq+BYuHyigPEs0B1y9vTjWZXUQYMK1pP4Hr84cjehy8W3o
	 0FgU7MUreuhT1lxhS86Jim2eJDgAYj+Ohjh25MzY9V1VzNP0BuUl/a5lNbJns7UCjQ
	 YLpwGyzOgfbD0YOYsAcH3gwgXLP4eyAbTJ9JwTSTdHV4UpvgE6P0m3wU0vJnlJmwkO
	 sRa8btXg7N22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967AAD10F58
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 15:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417117360.3086.10184449035991117415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e08ed71189240eb114e0f7131fc715e39be8f2cc0cac5e7055400114e568d98
Date: Wed, 26 Nov 2025 15:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764171173
