Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53150368946
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776101254; cv=none; b=a3xybNi8q4Wp81WEabbf3qSDxu0XrXMJzh3TC5Pxl/iSfD9EP6XFSRWCul2JQdSo4Ji3KnYqUxNV9G/q44HdDd0m2LZ6Smy0MT04vz/9mhFwHs5SLDI/Gn/5WTVXTMMxJVWHW2HPgjZofOQ9gKwgd6IYKQOY1Nddt5pDrDojJjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776101254; c=relaxed/simple;
	bh=KHB0IlQsIdkCAjHLasrbK9XUll8pzaiOJaTOAvzWCuo=;
	h=To:Subject:From:Message-Id:Date; b=eVLy5vMvbsf1onKU4BNBNxPUY7+rpokV5TwKB+opGWmMuspLKwyzdYAeWnQ3EeS3oGOBDgbd6x+tQ6oj/Z9Rv5TihZbEttGNJye4UgNtLytjCDHk7SJ+njTrP0HqTgxI+xSTlmPwlU6XgZrEnScSQqBLo4vdhMG+Wqltps03zj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEavyKjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEavyKjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5ABC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776101253;
	bh=KHB0IlQsIdkCAjHLasrbK9XUll8pzaiOJaTOAvzWCuo=;
	h=To:Subject:From:Date:From;
	b=UEavyKjzer+OZo9qS3ojH1Fo48K8pXJ5wzlmysmXpHKpfSb1rKbE6hRjt1tGCTn+z
	 rWjbm54+se767HkxBiIGEC1YTnWQ7IIu5yTgZNGmW618155+XlfHl1RmaHe4P9EluM
	 kYHiZV2jhjB8ProXqN3M5lvHdtgxKprYnA2wOGFqG87slzTZ3lZ6u0C0ihRwJ8oSZF
	 4TbvXMqYfKBHqeEgpLs0XBGiKEwGRZtPKqK8KlO3rFNv6EFbptoTPH7SnE0JFy3E2m
	 PrAeZGkPZsNPa9eGh+krL0fGPpGwhWhWpjmnMAe8CsflwsC/jda411IIj3co0WufnN
	 1zVcC8OoJLaHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0DCF34C79
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610125369.27679.13603072114539121782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69115e9c62d707c84ca5bd18e19e30096b689efb2f5e27f0fd303895b1ddd481
Date: Mon, 13 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776101253
