Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E78B26056C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779167434; cv=none; b=EsImL3RyA5wh96g6keFAiV5FiDvTVjnD4gfhEtpa7dx1axuRXfj61WvCLmSs4YiZ6w20WLzj0OOd2XZXyFN3XQnzCgE/2ONhDgLjtmb7iaF8xos7WGQgoJJVos+oAKDWFrGPmDnJM3+Y02omJ+gdOPMymyiHoWFLlKAcOQaOPMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779167434; c=relaxed/simple;
	bh=B5kyHbd50bFv4GhffxusQggp/TYrud1QvmqZFDgx7co=;
	h=To:Subject:From:Message-Id:Date; b=JlxYM5XU9JeKZqNxq43Mnc1jl3MjbmcA+Tf7ZnSLEKwzoSXtnCcs56CMiZUSj/e/Vxit0ym+O+77EkzEfB6xt0cZ/e6bRGIvh9HNtwZc5ZiBMKgmneU4/82bJOtd1mMu9ELSQ30GmVed6vUD59gsHVxdIpxJcONWtWCpTQmhnPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpCnM6qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpCnM6qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC033C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779167433;
	bh=B5kyHbd50bFv4GhffxusQggp/TYrud1QvmqZFDgx7co=;
	h=To:Subject:From:Date:From;
	b=PpCnM6qDigzhiAyAIXkEiD5ahiCG2jXLkwss2PRbYbYnLBIqDfvHYrvtiDvqZrrPg
	 RS1+OdukN6HZMG4/Ns6PqN7141lq1uzIzwpmCZnCXxsh+50kByocaUAgPLiJVCvkrl
	 33liFaUHwkUqAhE9TEe99m40JAhQjATTUBciHopnbCplRzXOxvHmgDEHUlJkQhr5oD
	 TQz4r4oKvohOYC9rx6Ki0waI74WYNHsSn/vyqWIz5PQsUscvpgmfQ04NDSWMOwV2Tr
	 y/S02OUFl656fUij267gaHCLkfmzSqrzAhcX5NuHyxM8j6XUj9SIAYr69UIrHk6Fso
	 KW/2v6zxYJHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA61ACD4851
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916743368.20107.12374007849463156677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278d525d1cdeac11d6eab6227e62fce30fb8ad563bf83fa039ed3ae42e1fc94d
Date: Tue, 19 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779167433
