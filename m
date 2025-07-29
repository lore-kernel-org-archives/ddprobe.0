Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334C110957
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753753794; cv=none; b=ZEda2Fhnv5/VIYKTYfnG/EZUkT/d9aXAL/ZfwNld+tGadsGm6rJC3hP+X0lnJIsFs2vcnJww7cB4ukJ//heigHMLxi9olGvISeDN8Oqe6mS+F41O0G6W+FQgtXyoQJdMqrZ/zeS39uOkiZKIN6aTYwo0if6fWqfRQD2uldPQqm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753753794; c=relaxed/simple;
	bh=Th1Wh1DDNy/4aGtpPpNmXLMxFJV7R8zusNip5PatIQ4=;
	h=To:Subject:From:Message-Id:Date; b=u6u0mF0S5xKJbHaHBMQn41RL1GGb01qZhk1UEVPlGkl5vbwmHzuhLv6zX8DySl7IWHIWyyjI6gZTikCI/KLP1UuBTqnPTaYWM5uFEimz31sOgBas+IHUGWUL6hCn81S/JIcAAOwz+G6ky3TWfLBh75BILUi9WQwB5NbEnfZ83Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=igRRBVzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="igRRBVzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35E3C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753753793;
	bh=Th1Wh1DDNy/4aGtpPpNmXLMxFJV7R8zusNip5PatIQ4=;
	h=To:Subject:From:Date:From;
	b=igRRBVzUAcQAujF59REkjHU5FyCqIoM3xb43N0b6nUBQMeEoNNDUQsEnAShbqlXZv
	 HAg5VhXcdMGCE/rYSZUYB+/R7mxJaGOXxoiABD296Sq46LvXCcYLZ0vaYga/BJEul1
	 R0+jyjn3/S75o3AnkqFEOOtO+TiSuIGtGO4OTOZP8JIpkYRrvJydrdaSqj+ESBB/C1
	 CoKkvxPzTK0maCCAnMyM4l1e8PqJr33pytYhb5bq1ssU00ZE1HZgXQtCRTeLL3OmHY
	 tKi/XHisQzWgP/wpUHlgL3OK7Es56SnvJ1uUcntLGHN/domshlRG/2a3MOg6KAR31A
	 jD3gOI+pUYFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96677C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375379360.24712.17923641356376039971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d047714baf4055ac802ba7dea8122e943cd9b75813e8158602a3b376f0be22b
Date: Tue, 29 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753753793
