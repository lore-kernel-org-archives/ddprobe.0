Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 864E8426ED1
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777985854; cv=none; b=CWf3mmqTWYFxqLktwsuBDHr3J/NUJtwyOFVxFlAY9bpuSZtqjrYLYSo1K53rEQDdm9gzPm6jUGcEtfE3WXjh1ShEfKbuSj0mTHOvcfvkTXt1Tws/gy4Urq7YGCyk6acaqBcQ+AaoULorNC44M73XdkoV7dCfBhlqylpXd64W9D0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777985854; c=relaxed/simple;
	bh=juEsrIFpQH6628YfqeIgoJ+AKsri1Pa8Nw9lDWlNLjk=;
	h=To:Subject:From:Message-Id:Date; b=PauhQDk55mxRs5hqyrLTWUbqaSgNp4gnHeA2lv8QYQdTex9NyEviX9tuXlZQC1xSZUtp4t5URWlbzyfVGAnqD8G7O/YwnnbAi8CemZ9pcgSM+IEqfgjRGEQ+GO1ADgCPtTPj0AGM9iXpPAwBbHBbQAF/ZT9B2FwclPmdDcrFhoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkSuQNM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkSuQNM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88F8C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777985853;
	bh=juEsrIFpQH6628YfqeIgoJ+AKsri1Pa8Nw9lDWlNLjk=;
	h=To:Subject:From:Date:From;
	b=XkSuQNM0y+3OgyAOlZeF0qYTG+yEuJ5zhA2MYbb9CgWUfZC3SWUdkas7Syxy7GJdl
	 uatcibM9SmDxj+XvqKvQ/gUKBkqgfwotL7p0kXNzC+CG15mPkhNI4I8kFqhwnpxNo2
	 OD4pysenh77GR25BOgZkbyWSV8GY9lNNyW2Ax9km/jBXMr8OOzKSIsjaAfc8I5jisk
	 Ht0LTbWuYjVKz/vsSyDApeg2EYUak+Zt6UG4kJV1pb9SPmeW0ilTl+18lJDQ2Osrmt
	 YV+5UDG6gvL9DF1ITJX4VxFVLIenKY4v/6R/o5u3ofgHNKlTFT/PFD3ftyhFK/NgH5
	 mptKXKvmPek1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D3FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 12:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798585368.30048.1036998745698329893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ca8618ed0670f6aa9714f66aa0bcb6f1245dfaef29e32f6c65ad454e0f15ce
Date: Tue, 05 May 2026 12:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777985853
