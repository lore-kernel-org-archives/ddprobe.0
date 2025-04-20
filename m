Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A012F2F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745127594; cv=none; b=F60wiBFwbcKyHgRRxeMzqrB3PjdGxQz77TinV7w4rcnTRqpvOvRbCDDlvd4p9mUSy4fsQP62vr15icwmOpJ/Xhx8PUiJf4iz9fib4gFmxCQkGFQ+oximOZbespiIImdI5O245ZMN7kWpDfwYMAMoR4ktXbKwhS2uxcI6arOkLl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745127594; c=relaxed/simple;
	bh=SHq9CoCvIXZrkdl5600J/WQfFct/rD42eBKLhlfz3ds=;
	h=To:Subject:From:Message-Id:Date; b=fhtJ7neGrQq/S2WRuA9j5hdEupRzVhdgfsD7EwjqJor9qT4O0EF6Mn1ku4fScTai+D2tM9rON4KsgarT3i2HOE/arlJsxIj+h8PXfyl9e6H4P8ZOIS/HJIKrXeKsi/C4bZJiIUE7OUE9ZX4JZOmjHA0OppkNMCv32FzwLWiv5l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BE3uL5bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BE3uL5bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E7CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745127593;
	bh=SHq9CoCvIXZrkdl5600J/WQfFct/rD42eBKLhlfz3ds=;
	h=To:Subject:From:Date:From;
	b=BE3uL5bgYni43Fahz95sdEMbXAVGMkqsQtVMJI3y0718Wq3jh3iJ52FRbaufJKjWB
	 kGvrZh7UHb2z9zO50oJL29cPDSAy71bnlNW8O8rpiu3IhKJ1Rt7A07tLuIJfrhBLg1
	 Xco7ZJjeEJ65U0bk3uDbDGdE1GJtq3E+yqWa8tO+dgZbt4YtQs/jQ+hSMi8fh6c8W7
	 xJ5lKtwd2bPIqMsdwcNMJ2q703kcSbuvEdASfxKvySZFNkUVTvF6KgKA0Pw0c1v/IZ
	 E8DnSIlZyo1PXJYdtBpRR6UzS2yFkXLyo8Y6U6Hkkgs4RAXvuyD/tabdQnYxiZLLEq
	 Lk4gBfuwBnCiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E5AC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512759359.10369.11794215279455002714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf6a4be5c1704316b1d8f99c65eb6543e174d40b39a2f85be57fecd8ca34ed24
Date: Sun, 20 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745127593
