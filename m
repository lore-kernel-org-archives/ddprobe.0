Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FFD26AC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774809894; cv=none; b=pGkjv4sPTtrUOdgOkjiQl1j4pVN4MkL+h2wuPX2lisvsVrafb6mE/pQabjgHJ+1HoUR4F/iCFjfH6Uwlhvon01X5BosEgYkrzRnbyHqG8V4PaYfiTvqwYRjXajbbJV65wBAWlXh8E5BmmEE/WaQfsVt9cg6F5d+PL99VeX8jiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774809894; c=relaxed/simple;
	bh=YtqdePhe/VA5W/ki9TVID67ZpwGLRRkeev7MEJKz4tQ=;
	h=To:Subject:From:Message-Id:Date; b=aNBHrujt83KXA3yqHvI3c9mTZJBZ+kXF1cKfh6OMlvuNZnN4bOz7TsIsurasZqCy6CY2UhFIEfLbjbQy4h+lc3djWD4aQh07arwMM3L96cFnyT/e2zH+Ac7BltSaU89aneIat4oJilV9r3elZsBVVaSDNP5QHIsRlKhBuESnYB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMpNvONV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMpNvONV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD8C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774809893;
	bh=YtqdePhe/VA5W/ki9TVID67ZpwGLRRkeev7MEJKz4tQ=;
	h=To:Subject:From:Date:From;
	b=eMpNvONVffD7pU4tXnYqvmnv1u3W6wuzMkKGdrUTXmd1Su3wCyHaN+OKFCV1q2T9j
	 CycZxg3V7ofSYzb7ABLWpdqnt52rAxNoJ4tXnOqTkaItRfaEnNQjbT7dJ2c9tf1BBn
	 QcQUtZF8CIOCtd7s9a0jwR1LkcMvyIDFZBkDQPQz0J/sZP0SBLTBmLBLPeOMRowPMS
	 uAGGRFdD6nUr2nr9vht6bdF0we/P0cVKj8dQO9yeyJVWMQxJL0EPo16z4ROnCk1/lu
	 E+DvDjobyIkSkq1BFIjaJBYDk8v0ywo9yFZy7s9SSuMvfmX/uix/a9hU7I/1mkx+oK
	 Es/o1lCHYgATg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92650FC97E2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480989359.5577.10889729646215535419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9bb2fff754cc07439b9b46e0ee9cb56ac3b5d7425d68580bc24f3bf0b0f2f7
Date: Sun, 29 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774809893
