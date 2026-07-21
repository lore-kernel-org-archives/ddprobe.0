Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB82749C1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784605714; cv=none; b=OpCe4PEuI3DySxaoJKa4iLUPjMqob3reXBgcGV8BT3uKLpMsAxzzNlPJK5MyC/sydW6jKAFw55I6Xib7AO86XLIrwpsV1gDAPGsSTULPTEpwVcp+lvpVqkxYyPl5MrlT+3o1Osf5gi6vNxl84KND3OboLzCOhqTt7J5LJzaxI7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784605714; c=relaxed/simple;
	bh=dsIvvpuip8peOlxh8zp9VfUfEOVXXKQv754CDBtuvB0=;
	h=To:Subject:From:Message-Id:Date; b=j3TDGs3YVugtyCqZyu5Mkvm53TCv1X6HpExHnky+xdA4w9YXRHnZ7wAY5P/frWlWlrOa3xYpeVqYbfWsrMN78BuTxRBUUP7L7MqodBtdwrKC2imEEKgihZVfeCcJfhQxrVTXL3o/yP7wr7zcP0HA1kbzRIF3JGvL4Wsg0pc7sRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGEwjDa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGEwjDa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBDBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784605713;
	bh=dsIvvpuip8peOlxh8zp9VfUfEOVXXKQv754CDBtuvB0=;
	h=To:Subject:From:Date:From;
	b=DGEwjDa522yZrEw0mN1D+0tFT7XTWUtqNght4HV6tYwCYuiiyJ6nvupKhCQd7qWS7
	 fieKu/89UeX5k4YRqIsTKTFWJZ2UPRACRu1/n3V+V23aD9RorpjfPZJMWMr3mm4LD1
	 EGCEQQWXEH2M9+AJaZjF6JOr0j7bVr+EGXirh6975op6IYc0vZmtKfU3TPPFb5EQbu
	 zgUYC6G2PJ02kbBT90a6fHntRiL39CwwkdteMd4i10zMMuZAW4dL6KGyaQzk9PgI6O
	 gfsxS3pQqQVPyHz74Bun6p7pcm2yPgiQTALYxZN8J3S42aEweIhzoehRpjW9K1aVTr
	 VEviMeqRtOA2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9907C4452F
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 03:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460571368.17492.18009830597865696953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0d45e5090e79acaa0a3038fccd26fca4234ea7b4cd15c4b436d54e4434e279
Date: Tue, 21 Jul 2026 03:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784605713
