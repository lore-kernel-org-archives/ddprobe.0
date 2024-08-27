Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE161D4142
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724795754; cv=none; b=WSm/7Xab1lwqnRiCx96Afka0ec6M0iYRZwqMWebA2uepadx5Wh9wvZLEIqsH/MgtpUYwPddM4evhLb8/XOvyTMjcK+GlNQFuxbkaAzbp5mXlrfe6PfHw+HHtmpBbVDx5etALMr2Vuns1mnNZF91H3aq92Y6/8QcUXpZDg8OaljM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724795754; c=relaxed/simple;
	bh=eLpuf3DkzAo9Mb0hw5lhLs1bxh2Fx1hJExkr9NgRCI8=;
	h=To:Subject:From:Message-Id:Date; b=Tw3SlR5S2M5hwohbgwIB/YvyMRbWaHZ10Q0dayIbl2qI4xRYyIXpFIM0JmXvF/xrR7eYaX+KK+y+qK2AXvgAXCZVIhuOL6aczbcCESEpB9guGUcd4o4nppeN6EuObzUVzCHtF4pl1km2UuFqoCKpItZSi6EU/GbCIwN5hR77xHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1XWPIQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1XWPIQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E19C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724795753;
	bh=eLpuf3DkzAo9Mb0hw5lhLs1bxh2Fx1hJExkr9NgRCI8=;
	h=To:Subject:From:Date:From;
	b=q1XWPIQ5lpjIBEXPDeWHfAffM2jrdu+l9n5DjDVxvWAdp/b33egrqicu2xyQ2rsAF
	 cRZVlhKsHaHrXxhuX6wdqaPjjSznOdhPJYuUJci9yacql8USupyueRhfkE83vXsRg8
	 VOp4b6wdqhWFfL6bQ+vkBoYRaJCQDucuybfvrwrpEVWW747sLN9jo0ZhesvNQUONhS
	 7pox2+sctyXYxONy6N8IGzV5tOFd2x/DZJT3oaKKTOy8UJ12qHNXonFmWagk4g1v0o
	 Ud0WZj1h+XmtrFoJogi5sEsvKkJ1i8g+XlkNMaaDBTu4pIslySB8WquaIR9BiemmnQ
	 SF0fWWQcd8xMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740FC54731
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172479575360.553.2441326577580454952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b8d8cb06b2f7eb4c7058739d10ae5fde901655a0ce577a6fa190f56df3af1f
Date: Tue, 27 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724795753
