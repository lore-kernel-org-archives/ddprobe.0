Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B981C3C1F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738350954; cv=none; b=V19iM0eTANH96o6r7zLXBkjlkITnr22r6tjbjYhPjkIby8j7JWIzFKHdyYdnUWfWOms/aBIoMPa1uFQq9ioxYGcISx40Q1UCTceFxLmVopEn1BiXVmi4bdYEO1ypv5MqlDv/g6QypTmcVcm9pHVW4Q3pg+YsixK6GwLdHRRVnUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738350954; c=relaxed/simple;
	bh=vVLRPcpAEtkmHa55kadl4DBX1tKCV+c5uJ17KJ6F+ak=;
	h=To:Subject:From:Message-Id:Date; b=CIl5lv2Uc8Y2R1LslFsD+rgiwbSTjycs8DCJNO/9d3FNfURFc3X0Raj99+vIfZDWu9Jo+KdTMaEM4jpI9u1GtjIog0Cn9et/sI6/C6HNt2RB4ZSYzvVHHsCgyrVWUBU1IrZvJmS9EoQA4OeXbO2LCuxOc9aaseWM6x80jH+3KmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtqW3hub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtqW3hub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAD83C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738350953;
	bh=vVLRPcpAEtkmHa55kadl4DBX1tKCV+c5uJ17KJ6F+ak=;
	h=To:Subject:From:Date:From;
	b=CtqW3hubOYRYjqYjbwjx7b0WoiNdmoRcjTqPRnQzvLdCjivxReIcJZhg6Ws3SJ5WT
	 pyQKmciGEESnJ2SgpcvvmwKtdUpT9gZd8c8J18t/QfHS2c5rJCmnNu1H8GlSBlbZt4
	 WYz8fLqAJcqrzDv99fq2Nwak05EV035TontSYBQBDF8vSQeJ/zMFWlCWTLzyrwtjfq
	 VpoouRNMEFwi7phqDt/23yi5rCYFjB0CWO9grZgR23Llbt9v3vwqoL2cXgc0VBwRRW
	 KSx22Vkx426cigR009Ht7Xa9LWaooY5YIjKClcet6WBTSIb81K5peY/n+sm4x1sIQU
	 Ea5I+QZPhqPpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19D0C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835095362.22633.13463731900465056455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea294da0ba9ac1759f84d0cc927b88b28652e62b0963e1ea623af679729ff4e
Date: Fri, 31 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738350953
