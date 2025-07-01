Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356BD271A9A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751394594; cv=none; b=FRTcPEstoRKlBYXMaoPAN+UmWT3FtbFENY3TYnI4s4jlTi7JK3CiLGOU68eYtL/pVAJg/4qujXcv9L2Iu+vNJgl4kEuvLQfADmXv/hR9+psVNKqgUYRvfQZcXKcnK3n2SQX2l1zXAf0wyZRNoH4BUoIlF9lxLtMnXK+wE5kGaL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751394594; c=relaxed/simple;
	bh=q+Q4Fd48s0j/nqkAczA9bC7y6MkJaaqicL+EEGrowds=;
	h=To:Subject:From:Message-Id:Date; b=IOIHh1wSBDRwQJl9MNYdQ1PVw/pND7UCfK3hJYibPUmKW7zhfLB7gtXYnFNw8uyG/cbSvIFj2+/IKbceXlWqxq/c41i7mptVuA0rHbuynF7DuXHNrk2RFnKbrCi4jgRgc8a3CVD+VVrfIJeQHyNYG9yZfUm7SofqqiGtISsrMPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHzd3VoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHzd3VoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A6C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751394593;
	bh=q+Q4Fd48s0j/nqkAczA9bC7y6MkJaaqicL+EEGrowds=;
	h=To:Subject:From:Date:From;
	b=XHzd3VoWsU9Gnc2T4Eu3UdNZxQOAdU3eqVueEFhrQD9DW4NK/5+O9j/kMcpsOzR6W
	 VFymoNmq6JNLQQW47Mo6q6mkMtqBpqeyAC8KNw5WuKH8uUMRqy0m51pmN2z1ygQxv6
	 3xGbBg6jmqzK5c1La+Op15x16TnUcOmRgzhRYhXdBBsrucVrTm5eVaevpQbZljtCAt
	 +YLZ5E0RLwbajQ/u/b09prqIRVk6t9LP8svRR6BFECMeIjlbB7u3v4qwPuw4/9ElGF
	 zl4XbfJs9YOSK2kX8QT8pyWuwelS0tcSPSMjEZ+SUlUtrFWNW9UhwL2fsK//42UgkO
	 UtyJIdNi9x2SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A23C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139459358.859.18097814484607853878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe921a469650b25995e6e87e4ce5e485be5f5de0ab8cea41ba4438e3fd0108c
Date: Tue, 01 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751394593
