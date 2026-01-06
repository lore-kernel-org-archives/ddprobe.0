Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB122EA468
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767685434; cv=none; b=twYdNN/uSC31ejKt8X8niX/i0jSSh0No+otZKa5W/NI1nvc/l8zY3EKwee2o2rc599KO8aSAkWwgX3xPCD5Oss8qmJvGolNmRiDae2F+yZpavG19TJ7SagRGmWX6S2rNvTX2eYKCIFlZsw2owqPGsCj8ahDxhevBAv/jViF4ses=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767685434; c=relaxed/simple;
	bh=2m1V9UBnWzRttcnzjSyi6BqXXkA1j84g/LIvsaIN61c=;
	h=To:Subject:From:Message-Id:Date; b=HeOL1yizq0fEw/goFS6bCbVCQUcXo1ZCJD6Xqx9j1JDXmvyLqCO9A2qx/L7132Z/YgzebZYWhsD1mhaMPrUzxVNRUEUjEPDOdB1caxkHxHVQDgmK5o/3qjTdqdTRRIdrhGc0b/X0xGpT8RfpOBIrFy9oftwXdgHyMvUQV00Kg5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0uPpFen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0uPpFen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF5DC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767685433;
	bh=2m1V9UBnWzRttcnzjSyi6BqXXkA1j84g/LIvsaIN61c=;
	h=To:Subject:From:Date:From;
	b=b0uPpFen0QzUCucYKYttF2D2fh2/Djo+1UXvKcAezhqYcS9gGsLGOLgdjOHI5uU/B
	 ss9hpYhqUn9UxZOd0qTy7DSIN8KJlimJUiZk7DfswGTI5cPFFwR8yWHUU0LLSKTs+f
	 7yH0JKWN1sIboBZg2ZrPbSbKKRZ0Ppp471nfaXyGXoC6oXBAt6j0MhJmBN8Uto//3r
	 U0RHQoue7Pyn5AhdISM+pxweKxjydfdW/ux/dn5ipvlZWhmoPo7MiAX/aygWatk5XX
	 naP6nD17PrpGRw2wZSGOb2448ZdYETMP/FosQu8B/kXtPAh7lLni1m8988L6l0qH3F
	 er2KSckVuGwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBD4C47BC3
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176768543358.11195.5270250787858875282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e971a7ffb6ba06b7769fbc339e307d8df58b79cf4fc82fef20b4c8e190587b48
Date: Tue, 06 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767685433
