Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AC644683F
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789389034; cv=none; b=JzVLsxzP5dx7eAafmV15E6xdwltblECEqdktn3Ez4Hb/qrhKqNa21rdUy6leAuE8IqtJmrkd7n+w7dWQzCgmoWhcN2W++aerpqA793sAA1VcvRKdHi5XL/peGoZx7MR3S4jZ4Ax551Fmr8JLOCybWpk2/B7YG0w4ZZoXoLFy6C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789389034; c=relaxed/simple;
	bh=hWy4C/+YpvQOQduy2ML2RAElUdYLsenenThvOHbN2v0=;
	h=To:Subject:From:Message-Id:Date; b=ZONIHRFPLJY4zLvEDuRJpRNcRXnx8ojqVP63CINTg4BWc9Cqd8rsHrEB2BQBw5nfXfD/d5zTwn/iptyw1wZVHc4lQ/QwhVnyj3RfYXZU1ZajfFFgOfS1w50uh1QNdoMJbnW23KdBl6RaAEHmvwKJcZNO0EeGo8xbbjScDIHoB6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i18/b4f6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i18/b4f6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE566C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789389033;
	bh=hWy4C/+YpvQOQduy2ML2RAElUdYLsenenThvOHbN2v0=;
	h=To:Subject:From:Date:From;
	b=i18/b4f6nj9Za+iRfjrdRX0+sjysE6A6bNHonc/JUeOS5tRLOr623V1hkt5ZZAPA6
	 OV6aQia6CA5VqIOZF7UNt7nF+5UpEz+LLL0wjhs3wSLO0NAkR3gDdm2wKDVk9Ww0xY
	 QePPjr5TD+SMLwAaRR2jfNg3r+oXL0BA6+A50ZcW+Gsz9znkFyneVBbE/jY00t0Nng
	 QAP/ZXvjHvkNEj4OzosInUY4v3NzZvFtoPpWe+iBFb7jQq2XU8f2DEL7HAL4pxGjaj
	 Yd3Ks0i96YaxN/9OXCWt2daK1n8Hp3Zv4CJo0p/DwmuCp1hqNCEvlYb4vPD8ndZQmk
	 uO1vh6F0tAynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD39C88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938903368.13395.7703533975726476182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b2ed0044ee751853ef20cc721476373fecdbc2cd7058ef5ff5e6394e9a62815
Date: Mon, 14 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789389033
