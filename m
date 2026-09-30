Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AAA3E024D
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790800834; cv=none; b=s8PUpI0N3jAKds34XeXF65L1S7cxvku+igyeM/JJFptLSttD+Um6S2AXwMmZufdCG2Ark2Oo2T4xrn8nE/OEB4E9eBVD8pe9kXszf0OtNyg6uTOHAfmJIeJ3Vk8FC3ZLGHCrGIEEnG4C1J50jSUBTL6th9MYe5rXji6AWKScjs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790800834; c=relaxed/simple;
	bh=Br787GepD+nHJHtJQ7yI51DJPIW9HT355C8ppIIgoTw=;
	h=To:Subject:From:Message-Id:Date; b=urom6pO8qLkONPV50DHD0cnoyTwADRx+058/LYjfBshMzJDngUt8v7fcAD3eDhzoIGs4YOZnWkREFdD9qpX0WGVxo0kWrM9q4mtYyOoFd7HQFtCZX6JGRhzaxTgwRXMHRCuF8EV4K4GJyRzSOIEoZCfaIK1UXxftKN3hNDXSomI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gqp6mxWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gqp6mxWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFCEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790800833;
	bh=Br787GepD+nHJHtJQ7yI51DJPIW9HT355C8ppIIgoTw=;
	h=To:Subject:From:Date:From;
	b=Gqp6mxWKfRF/QZHyriWVSkRhYHWL0ogLXrWYGZHKEXhYwZKPx+MLV18YA8J8vS5lL
	 TYGEBSD1Y3fRpoSVEyc+3R3U55hIiHwQN+m282lXY1adXkvDr/YGn7kkOP04dzmbLH
	 +C3jBbz7yJHXykYtpXvwe+XXrLJ3bfdMLAOxFl8ZD5aBeTnnthpmScSEjk1gq8G34P
	 Rm4Wah1OGrlkRCwBg8XqtJqdv8qR4L8Lonl8wS7xsKlytR9Y8kYPlLNnzeneuhs6Wk
	 mVPmhrq5QAjbzxjp/wMsTtRKxyegju27aQleTiP+Xj67ESJYkWMipBHFqKY6ow5SqD
	 wUYH5vobDlpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F25CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080083368.29406.10255179197344984456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77a90352fa17b0c55435236e9c2256cdc625380b48de4d3ca7aee3d5e5ac37c
Date: Wed, 30 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790800833
