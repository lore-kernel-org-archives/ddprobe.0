Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA5957E6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705984697; cv=none; b=cckTlvEJYzECBeQKgqSnXUOHu6dAfZMssgjbcBZ0UwE5Q7t0ScWsRL810EaCZIme0HwwJGRzpwdw7qY5rvXgvs2Ep+/Nkzc3sHZW0GoxNgMX2jpBTNkwexrAgdca0rjCHmiuAVz5I/cVgbkJpE+tAdZAhcc6wbtvjnOXQCmOcKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705984697; c=relaxed/simple;
	bh=QOZEKjzTvCluieoEOri1slu8MzQeZyHOUy23BeL0iOI=;
	h=To:Subject:From:Message-Id:Date; b=OWMNS1rwQCapI6UDezawALkzXzOs+4WqHtVg91j+dTkjJ2ymRR5MhmA5ulpoMNrnzXRCDcfvyLLALTDex3YGU+LV2vh8UW+Vvqr+wdtn9jYPde4wWKg/QxaLjZSUXm66RCK1II+rUWoeuUTThqkXA+UZNCqawIYPxNRGF9dX5nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JzZfBxRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JzZfBxRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A31C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705984696;
	bh=QOZEKjzTvCluieoEOri1slu8MzQeZyHOUy23BeL0iOI=;
	h=To:Subject:From:Date:From;
	b=JzZfBxRJb+KdO+zfaG2Su/7FgTRhP7SkGe0QUZQqX5+mvJlG8S6PAvGkwiEdFAh+E
	 JBz+W3E3vwHQv7QLmMRgffO3H4THE+S7w7F2raOCIzS+lPFXd9Q0J8H8n8+twwy716
	 4qZj65xl6P8LNBgrNXLnAA2wuJo7uNgrq+wproyVlQQQzGKRotDtI9ZTUXPTeBas1C
	 Z8hCEpbytA84eIuLA8DDvOM0nAbrafOdGve094HIzBhrMctyhnVh0afyeNYlvYdzlR
	 0JGCu8Fpse9GTuTXCUKhz7BunGQk1172EddULtV0AQql+wDQWhAiGHSldAjq7LTpaG
	 RpmSYMu3yEK+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F06DC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170598469638.784.16875616215091955862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47df780583d0d196792c134363cb2e3c079de31d7c4972e919103634fffc7ba0
Date: Tue, 23 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705984696
