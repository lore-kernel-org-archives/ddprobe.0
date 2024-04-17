Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550B8BE4E
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713329363; cv=none; b=YAEio3xk0L7FZDtOrh/9g/MPtO56AgBQ4i1oZDFhW4FDyHdTHN6PAh/QAtSEzF+bNcqgSNslnX+WnbrhTWswB/6Hw6Ro7npx7lwBdzCyZJlq6EvFaR8qVoa0jYpOZw2+V29D/+nwgZUnayHUSC7VIgNqqxBS+ziBTaeXC96gJxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713329363; c=relaxed/simple;
	bh=93m9E+SErG7DneJoZlWbfip37Nzg1eB43SKeTlWdWC8=;
	h=To:Subject:From:Message-Id:Date; b=pXMCoqWThPcO35yJg4mphUtQt86zx65x7N2121t9h/NkbErFm2pcWY8a5YnUgOkOnIUDQi/gzl2wteoci5BRfGTEAKgPZPZzjEctx0WRe2eqTijkY/8DeWnaRaQr+DZWywQd+VlbRxhnERaJkXhDBN1qw838ZpZRp+wLYyahWZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMQbOGI5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMQbOGI5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDDD2C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713329362;
	bh=93m9E+SErG7DneJoZlWbfip37Nzg1eB43SKeTlWdWC8=;
	h=To:Subject:From:Date:From;
	b=jMQbOGI5qfOMAzLFO7ueAB+VkDDrptxEX6jau1qNnfFQIVAOVZW7BG0uqIWmT5NCy
	 ZyNp3Vfd5p9NB+qene5UbRyMsIc9RTw7htiSxazFiqsxY7tMemPC5tFiLxlTr3SLGY
	 FC8fStnfORKn2gnrPo5zMU1aNRzNWT3kiYEWLbU3uIvJLpls4EyH8jDKW50wdaMZkK
	 cbzFfRhVZ+2BNaZ5FNaDx8odN4Hchzvd+z5mTzCvW8oHHWTZh68WAxaDWYaQET9Zf+
	 2LryXP2NATmRKYlMtiEcdQGdt7BlCYMo/3EirMJiHxhj+FBvtpSubPucs56ygNALmj
	 SHKVPZUE8pxEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5949C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171332936278.29335.9683604426273593441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e03df8b933ab29261ccb60a8bf6e85f45d1711946f78f946ef8d21ed2888ad1
Date: Wed, 17 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713329362
