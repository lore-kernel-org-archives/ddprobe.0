Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AB2209F43
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760578194; cv=none; b=Ja9fLTpLa3cJNk6aE98FjtGEDzMwxPlg+T8M0m5U1wb2mEytopqr5kMUymfzhRYncFj6WTfiQvmTQJX6V95+GoBobUWcV6EJ4te9r2fD8Wkqf7hYIAZnU/vKRFwrI9S2l1e//C/UvroHcptkZys/sruFANGPC4xriMhmnB0L4gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760578194; c=relaxed/simple;
	bh=uchfpsA7snpxaQ0pJyszWs+FkTrhMwInZjy/8cefgMA=;
	h=To:Subject:From:Message-Id:Date; b=HCU0MjkBGCojcrjKHbh0/XtrfUhBarprpnK4Z+urASDVtUpX51PQA5LHgVw7Htu6Ccxgc18ieFk2XL0bMhUy7izyVtLyOvYmqSPGdjLTvW4MUemqlfS1CheIptE4ngjsMhThuFnPpKaCbRkihPZCOjg9d9zMJg5UUKCDFNAuTtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZn1oOKu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZn1oOKu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06E4C4CEF9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760578193;
	bh=uchfpsA7snpxaQ0pJyszWs+FkTrhMwInZjy/8cefgMA=;
	h=To:Subject:From:Date:From;
	b=QZn1oOKuXsY+hWeGgfDOe33m6jYUuu13QN+m1hbHqaZ5cUT4yaghUsLq2CVhAk64P
	 P+9YzxyLn32pBzedeyg38SU+aPCePtA7pmuIwQXpuZHxBHmDX6xkL9kGrvRqrtSvRU
	 GqdpR9eV+tjzqkrf3TV7hV/LL3K/qGHVhZxhndffZNc4xhw/6hVhRn1xKzdR8GYQSS
	 PUlrxSxGXgV088ci/9MkL8unm7BeqTvWir0gC03gThNK3KhJZt6lcHNxyh3Gz69q7A
	 KJMMd2PtL9I599DrdUDo/hMmhFfLoQ26QQbybZ0H8Gpj2AbPB7bCOOpHSK4BG7Mn0g
	 yrwjhkm1M4OZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD90CCD185
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057819358.22024.9051892799273695251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98501ce3783198b2cce7a490836670f6c9d5bd512718f4752e7a16ae7f567e37
Date: Thu, 16 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760578193
