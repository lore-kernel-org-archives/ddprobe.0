Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6288A2AF04
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744480794; cv=none; b=MKytI6dyYUxWbOkQUQf984MUhubjaptBzIdGz0qgLkIyt/wSwMKqyqw/Ow0PJ13z10y85eaAiLmZnYRkVMRhyLIh8CIBLMpfKei/x96O6sIzBRN9PvOjJItSj8jJeGLpwYx3hPxCwkwjxB86CuOr6yX8/hbOAD0xwiNOpilLKyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744480794; c=relaxed/simple;
	bh=QZf/Uu2nBegqQojMXAtw/Zkz4BkXnfLhQa091HIhj/A=;
	h=To:Subject:From:Message-Id:Date; b=l2UNOtj9mOhu8e8TC9cUzwxQheCpoBV1m7H6mOQE5QouCp5yBisSo9ubFbnISKfoAbt/Gh0mdNRqa4Rocrk8z6eGU4y5wx+1YeOsVHBfmNwLblea2UvnKYg5aJbvqExFALB8AH8fy2FV6+39swjNzEMiejEbAqMjvg6kQ9YO9VY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNBnv/XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNBnv/XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADED5C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744480793;
	bh=QZf/Uu2nBegqQojMXAtw/Zkz4BkXnfLhQa091HIhj/A=;
	h=To:Subject:From:Date:From;
	b=WNBnv/XZ9Oqwmlfs6xlcadiwO7LNki5xpKCYywY8cpZAZbxKzhC343EGaZWaqsyAX
	 t9ALpROPcnXFQgp9SoDIC47bgbHrxUMhIN9oEl1ayy/azxg/vMEBxcMszOaGhTtMyd
	 SMvcA8KIOIVJXE2rH8Kvyp8CeVtKzM/oNgN6m0DdolyznEBy1r9MXGSyd3t4ThS5Yf
	 e0x8G2VVuJguy63VTqQ/YPVvHa0mC6XbGE1dqVxhff1RPij2zj1KGsDMjfB9CjGzLN
	 l9cDwxBgHWNKkGSWyvqSFVz4XvT0p+eMJZ12jT5xT6uvymCjHE6B1TpWdaL85FilHp
	 MLspXCq1bu0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A70C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448079360.15908.3543073953171523417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ee721b62b808ab205d8a75b8f5c581d90152a90c3af8a2bceb21fb275bd456
Date: Sat, 12 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744480793
