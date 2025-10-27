Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AC0F9C1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761535194; cv=none; b=lSi/RYuR9s4UciqNDTxjybobuxU8QebMZEk+bjZJ0zt5wYqoxY17OnYkZFg3EilD9bDr9HSkdsO/xwSeaPPYnFK+KQTmsGXw2HJf7pJ7vO9BBLVPv0RcwLO+sRXGOewXpUU73sOKKydfP3qrJfWrSGCApQlIcQ0fZAmM/IHBR4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761535194; c=relaxed/simple;
	bh=aRGYmjbLNTLNKyMBtphYaDMJcNZAsmqSdM1Go0Yt3OI=;
	h=To:Subject:From:Message-Id:Date; b=Yim96QxayCCnTHx5QrQaV07yTyS161HNJnXiz0HWwl1uSxmKMdVD4m3+fbTFvm6ptC6xZbbCdfQ94T5uuse9+jY8BKygnsl6ozdQQiNtEMdM4Dj7aa6Qv8Bbzvc97lHpC0UZaEZTkfAblBbYmx9UIsQe4xaO3VvVxg3a/yS32Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npmUhywG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npmUhywG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68C4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761535193;
	bh=aRGYmjbLNTLNKyMBtphYaDMJcNZAsmqSdM1Go0Yt3OI=;
	h=To:Subject:From:Date:From;
	b=npmUhywGju+a5YWuboI+rx/r0eFhpgLeRRVWJZCA41xfUcN2GLdHM33JiDLDVh7rX
	 Y9Rrt0BWiDsdFw1Y/LgY6bUAArQ9FxzBfTnVAD6V1zq5YPlq9eRe5fVOj2q4t1TS4T
	 gPgeF8ArO2+ggr8u0YBe+UAUK0C5S0XUdLlKvrtL8VK7rdkKRA9Jt5WSxwR68Xq38I
	 EDt9ltJyrjqT8ze/ofPadSsMJQP0wt78rhQsLptw3HIm8dQY17/lrdppgCTIBu2pVf
	 Z1bErkSan7tkeqU6iUKUaJKUqA8GJv76hPfskq4GZwczgHO8C/jBrnsJc0tJ9iGWyH
	 9zA1OkMa1B3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B0CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176153519357.19611.13820394170639906676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32f056fd213aeec54196262b834ce76312aa26d4beaaae3c44f66462d9915c96
Date: Mon, 27 Oct 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761535193
