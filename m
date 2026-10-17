Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E27923507B
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792199434; cv=none; b=cMoPlyle36zFqXHuZo/GlgMxbk84KnVxnRN2mPvMcWhNd/3rbjo0WCoJeJb3WXb7HBx84GIUJFG5LIn11Jv/KlfDKmX/J9CZmJk4jQq8kz7Y5YU/SOj9gU87h4DNDRk2gR1O2yxv/7JktFKtiQJ8WOigmB4l2gijfnZ7TQ+kJfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792199434; c=relaxed/simple;
	bh=SC0XUp+viLpmTsJRZx67cNPugqmtbmKWUSj/C3kedSc=;
	h=To:Subject:From:Message-Id:Date; b=SKGZqqx+uoq0tMnjhwb5z9xk0gRXn8uRpvx01hE15854WuAI3aIei+o0u1jwoJwPzzCgNlHocPc/picii0Wvk5ZiDrbstG9KS/LDe4zPOg7H4COEQ/cmCWR/xMxH/fE/9cFXdb/3WkPZVGjZUPpdH3BgPJ6s1lCBAFHs0c3xsLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIZASPh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIZASPh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DA3C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792199433;
	bh=SC0XUp+viLpmTsJRZx67cNPugqmtbmKWUSj/C3kedSc=;
	h=To:Subject:From:Date:From;
	b=BIZASPh5Yxgb+HEAO4ml9/V3raHJMLfFEx4W31AqLyf0UQ4BZPUbbzAveG+kncE52
	 CUF5PVX8ooSxe5do7Nu3WDYvIreBwYGMfSkEDsSEJWLCQVYl/uUZ3d2Q5cwX8WyZps
	 p0Xl9zJDa/6xDSqFh0+UusUpycNEtQ0l/xQ0TndIAfckEG2LS3HneMwIDeeWbp8bcf
	 IqBblo1F2YE3tU6ty0pS47vrBGdKOWwnHGMqaBRDe21mlNjR1cP51nYVyEmo6tWZGf
	 7U+Gx+zfR2N4iLKIW9qgx/2CLHGGUweQLnNkOzUddz3pttBeiDG4lc4wjiTZsV5MJM
	 ck+NBNKdFp/qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C133BCCA46C
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219943374.10949.5808128216966951528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144a0a6470624eff21dee7ebdc7c0afe0f148bdfba5ca676adc34b004d58389e
Date: Sat, 17 Oct 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792199433
