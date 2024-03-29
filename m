Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B0B42079
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711698497; cv=none; b=GUXqESsCg1oWGag+T41XZEebPOOx5NQwduA3NYIPwm9R6L+EzKJD7nr1YMoC6OpQ9lmNcS1Ax9guGaRj924ZtW2ZS0SreN6HSmJ2v8WP2JflogMBFp3l0vdScEY+G40P3gVNER3JDJT6wxdppwr+RpNjmTrDdvU9CX/mz1dV4mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711698497; c=relaxed/simple;
	bh=VwTucgHG8djkJ3+XEw/YF4BVJPeYug8u7A4clHEk1wE=;
	h=To:Subject:From:Message-Id:Date; b=crqjSSf9YGCSEIfeOjEnDOcZ+LYhCu/ykKRPd/soKaXaTI+sMVr9qs8WpT69bLpElSfT0jtDzAl5f1XdOdH0C6XwUTUwo06modVDzdje6aqlwJV207r/+2K4/iMXAItMbpJx/yKWUAY2itl1GrSROntUgeIxjY0Uo3vx4Q4N2TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QO4HAnsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QO4HAnsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93891C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711698496;
	bh=VwTucgHG8djkJ3+XEw/YF4BVJPeYug8u7A4clHEk1wE=;
	h=To:Subject:From:Date:From;
	b=QO4HAnsKZlZ17LZFd9wS1Sy2btLk5UGeQuHFp1PMa4LkgFJm8XFMWCoC+byrpxW3g
	 ErBhCNYQekTgFuc5ATICeXyFbbN41Ku8JY650H2VOPiqm6Xg+Etlf5Yo2bJ9k+eO/+
	 06WLjuuKR0hPV4Z/Uxb8UYdh6KbiyWI3P2MS68vzqBQSXKWOlhiYqwsbVsw20VKI6T
	 DwWSmMjBZmnBj3wwsIzkkdtcCk1l+W83N/3cm04hHSrffzpl7Ek77DA6fHvm/q9+mP
	 AGhDKTWlYXmahM8wSohQG+aYg78qyiL8wzDQS2RniX3cIXEnz1pDZE+tftVZ+dQOJd
	 oGF7UJQFt2H+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 812F9CD1288
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171169849648.29458.16240238420587721308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba4cef9787aa530e86814fc9ab0ae921217d233c0a0f311af4cded08c74b6fd
Date: Fri, 29 Mar 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711698496
