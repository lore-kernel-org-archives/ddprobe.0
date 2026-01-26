Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD753016FC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769430834; cv=none; b=eGrRlXspS4GF1YeSl4J7KVby63XEAHV/MNHs/44nCUwzuNzhHhsJtMXHmsGXFvvwXDMluDx3WDtrUdreVX1Fy6cQtpWJhWsuFyeI8pAA94K6ntkw1m1enkSIKKbWb9k7HxIs3BwcHDHmnSA+6B7JMuBmX3QeLz6b1oLUfOS6oA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769430834; c=relaxed/simple;
	bh=7N5yzxNZkaBUtMGRZ2HWsCT6ugaT7zVk74VS2smPFqU=;
	h=To:Subject:From:Message-Id:Date; b=tgUY+7lck0id3mgperVCJ8gqhVHHQhHJEOu3iA6FUqGkSOhg3vsDZlOicONPp9fCkZbJFydlI9RYaSS16W7lGr9PpQDx5fTWd36FXfgOUKygMeIHnqD37j8mPUeBABw2XUmxrP5FdfOfbBguf4JKdbUnPivn0RNyvzFCLC7EGj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh012isL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qh012isL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E08C19425
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769430833;
	bh=7N5yzxNZkaBUtMGRZ2HWsCT6ugaT7zVk74VS2smPFqU=;
	h=To:Subject:From:Date:From;
	b=Qh012isL7v/Fg5VcN8fUldb0AN7GX4+lUSZM5S90AxLXrgf14xHhHTsNprkXVBjzS
	 KWIglEqkCIQKfaI+HAyWsS1RpYgRxCShExpHIKQ3JaDXCK7Xcwg5AtmpvAwAZCJH19
	 6FFZ6vEqtWHbSq8duRjnZsogrNPhePUZhOcqXYpmFKJrxS7u715ngnmz5UiM/3CwvH
	 jMVwf3y2hXvJtfHkM1/VuJEa1ophUW4MXl2swtwMs/w8yHRCCa7dlm8ZqjQFOt/AA1
	 1N1PWpm2R8dapYg1tv4H3qp0YekcuaDai+S4tmg3SBgqDswkLLHUr5dAwGexAtl2Nh
	 Cvs9IL1IwYaYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A8CF65EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943083357.8390.1334673615273395668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d88676cfd57475bec69a2abe97ea9041104c1924839d4c79ae059e351eada0d
Date: Mon, 26 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769430833
