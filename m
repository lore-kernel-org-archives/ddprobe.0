Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321F946B5
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750051794; cv=none; b=STlubcMxhITqvzgMAWtjZm2LLJjVdOe9Cnkvt9UgCAr8yJiVmLlou6uG+/W3h9f5cFrAwcpXXHHxJ1TX/J/WFeQPcrLC+4rJrEoOiWKV6FZu2ieqUgNhw3WAbFSj5UxZkgxDsnWsaFxTUl9687AAzDD6Tvqcj38tsOCqjowUHX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750051794; c=relaxed/simple;
	bh=WhqzyM54LHZ4kh9whzd2d87Yg8/jVnMI3PiPeYGnfy8=;
	h=To:Subject:From:Message-Id:Date; b=tT12oxyBFztxT5nZzsRVZsNDhRf8/CyLa8rkAR42iKc+nKSAbqVzAqpq0vXC5Q2NV1C69WoBsvO5dtkMSEnyAIj3n+h8JY1+19ovfqq8834ybQwf4eLj4qE2NRQlOowDzzVvISuzdm3I+PVqrMldnf5RstiOxI6vJDe0umwHQ84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHVNoueB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHVNoueB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFAEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750051793;
	bh=WhqzyM54LHZ4kh9whzd2d87Yg8/jVnMI3PiPeYGnfy8=;
	h=To:Subject:From:Date:From;
	b=tHVNoueBQoT/xlo6fmD3VgkOWHwYroHaPuzQhPI7wCEPIGoccSd7J9jlL99fIW01U
	 BIeHPPDmuSKvPt9qv1kAdr+mE79S2efyce49ngZVzlMOXkxiVXv2B406vMaI6D+r0I
	 HWQV7xC8UESSJQjc+ZikMm0YX+nGuXtJf5wY2V5kNSygI3uHh0s+7pl3T3wcmjSrds
	 S/wEFkF2OY2r9C0WSQDkprnTqqMLvpxj5IiMuTSd0tX4KzcBxvvXcX145IMuzvbWQ8
	 TLIgxK4Vz/xOkzslP+1OhrUHHmowL50TdKCouIOF3Ma5AhvOUMeFsyQ4QR59wYkRSt
	 duTskM2UiRUsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4FC71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175005179358.13191.7972869480007630247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244e8612206b71da6401c43ec753552b55114b316d8ca0de46e8b984c4bd1b01
Date: Mon, 16 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750051793
