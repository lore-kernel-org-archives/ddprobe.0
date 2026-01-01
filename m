Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E55155A5D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767228234; cv=none; b=fOhGhZ8jKKB0pEsc4uezPTFUs9JQdvE/JdrTvjoqRzd0u+d+EHv6YKcevum8uInQp638rXxrZkiW4p29A2Iiz3Rs3bvZsU5niHgv3JbF+b8e0FXvqrvzO1/y6OP6x0ysTadmCBuR9Vy4F15BxI3nky14+NKMN/0zYvgvvfPptyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767228234; c=relaxed/simple;
	bh=4CVe5MTN6WPbLaJwlbVa4ygmISigzbmns7KFkaMHfw8=;
	h=To:Subject:From:Message-Id:Date; b=THyZ1MlzuU6ISnrJIJd2wVea76PxEkvenw6onwNpv07seqgYd4VQsFpLzjU0Oi3jw4+PDF1h23QNI0bmULhuk4iGXdEP9bisPSeuaJLkRjrhZCviMFtGyli4hjduTiCkdjXpCEuj5iV71oXUT8/llNu7l23bePYSZwHShOtEoGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XrXKfUMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XrXKfUMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6082C113D0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767228233;
	bh=4CVe5MTN6WPbLaJwlbVa4ygmISigzbmns7KFkaMHfw8=;
	h=To:Subject:From:Date:From;
	b=XrXKfUMw8rx4UytlpFLjqGRupX3jRUOH37MHa40YfTQV9KJBLfVZM5jY0ZngK+5tB
	 WMlo5l0dolKm7LGVR4ZHjrbluq+wYDH5LPsYTg6LWr85/YNRUF6OFBPbQ54s6lpJIc
	 2dkOQZHzeMcDuLEuyXSI3gfZTd8H8eBKMJZ4BfvPLBYjZivutd8Kuu6EdkB6jfw4HH
	 zq/bSrJwXPaARlIU5T3X4qyM4LiqoZbRP5Gn1JbBG+6XOOL1F13lvl5/PNrLjRB2+c
	 4FWii/cg1y6d44uBSiN2fe0/205N+ZxxDchvMnlKDNO5WINnREA7K1QecfBQXBoOnn
	 U3RrJ8YfBfDfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A6EEB573
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722823358.8654.351356352758642005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44521fe1c655366d48d9fa75086c19136c7ef633ff3aafed57d329bda2a41e98
Date: Thu, 01 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767228233
