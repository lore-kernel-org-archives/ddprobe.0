Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314C13D544
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768701234; cv=none; b=RazY3NC/9TteJvLt+G/XyWiLvo8mLfvP3Rl1Nu/leygVQ/CehOW7+XdUZExmNVnL06imHXNmIyafUWHeHL5AuCYcy8zu5AsGQOk8uxdx7ZN2dCvfSPCEv8PysUWYtzgTZIzD35uJ17oLFMy0UUE27jpIRNNfwvZA9qbmX1PekDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768701234; c=relaxed/simple;
	bh=0363RsLz0o1G294FVfBBQyZIoVW2r5/XEwjHL5d32C8=;
	h=To:Subject:From:Message-Id:Date; b=ILJQf5hhCuLvoTy2waguSlatabZ4TB9n5EFyxLl4uHh/97QJO4HRg1ee8lClMZ+a+lbmN8DeNIJKHR+Tyxpn2ZomDUCK1HPCPzJxJgOwYQLaeu7dUSMPCbhWtOxCb0Rt2frSMtEx8NcICKCCUK5wYZ9L1D3oBUofJqxr44rpWys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=saA1XQve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="saA1XQve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768701233;
	bh=0363RsLz0o1G294FVfBBQyZIoVW2r5/XEwjHL5d32C8=;
	h=To:Subject:From:Date:From;
	b=saA1XQve1slYCY3wGtkyAB9PPiQ+DshvQM1Z5w/+7qyfJS27XCukV+4Yw9ILZESKF
	 YLoMRZFQYFezNyQHWE6QJ9JR/yDDfV0p2kIDDuG6ACYhwteCQWjC6LRJmR5lrrj+88
	 yQzMJKPUQ8gY3r/PItiBw9QXYJK7VukbaXjiW8FJKr8JAJyw5xosqhCbJ9EWwXFdCs
	 UhzZOLldEgtkzFxdyQ5vGOiahVj45a5OXXO+oXD7pOk6hUSpsp9Qh1k732ELONMTEr
	 tP4U45z38JfSlH67eOi4oQuFUdkVKmHw8483BOOE8k6zmRzxsTi3Lh/40sKRH48K2A
	 sBfgf8tE92Eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92424CA5FE1
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176870123357.31906.4616814171389913785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5628cc78d2a4be0306bbf84956faa7daab8f67e9902329d3d25a41dd306548b1
Date: Sun, 18 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768701233
