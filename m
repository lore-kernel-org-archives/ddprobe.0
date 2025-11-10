Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B56B29CE9
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762748994; cv=none; b=VWpBwl18b5UUMzJWwspqsxZ9Xzr4A3W8PgAvTR1Jya6ulEuGhIaUnC/ctwLWk8AirsQa1OLhIoTD7f4ahKoaREE21JzFGP6rCV2PMdPNzLudzURvhOf4ItsCuMCtLnzMSo3A29J4e+blDhcR13jEg03QobUcr1HvDAFgowb+Yro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762748994; c=relaxed/simple;
	bh=50IknWUz7VbjBiKrk4yS0aE8ACY4MM/vUWo/MkLy1x0=;
	h=To:Subject:From:Message-Id:Date; b=XTF4yTM4u5VGUWlhrGtmbFBrZtgENOCN8cRfqk6Ig+2O2K8gJDLZMP3q3OMC74Aw9XoTwveaDMsxPa9HQpFOGvpx/08W/ZnOuUqxnxYv6bLwgZEkhkeVdBvTfuJL+ruiZ/MMtYdp5/Rlb5PUQVDavdNK98IXW8hHU4/7TSdRb7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PXh2dYkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PXh2dYkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51A8C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762748993;
	bh=50IknWUz7VbjBiKrk4yS0aE8ACY4MM/vUWo/MkLy1x0=;
	h=To:Subject:From:Date:From;
	b=PXh2dYkVe+9saeraGPDAaZOHPakGkLOkUQeULq+g43hR+sGbDbM7DCfdhD4SLwsvv
	 NnX3vLS8rWez7JGapz5gUXSfmuRyLUEmk+KEixumuqfUbTxaTln2WSe8/0xdZmjfkf
	 SYxTA1cRnJxf+Xozwh6mazVaNTIUDSi6/VW8UYR0AeWWYdgUibVMybbhQTBO7v7I75
	 L9s/r+aspBXwRLUUgc9PZwOZCvjPlqGOUIZGor8ErQHzOp4hr6si/fjQIaMeTl2k2l
	 qZ4t16hvwEBW38l3lwbkeRRTRa6TQ8JR+0whhFtJLBL+bbyUbAEWMkGJ/TRB8PIRQp
	 3IoQZtsobqjdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0616CCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274899362.22208.5290828450538253517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0149e9d1e60cd4362216a262611e00e15c5a7b76833d4c39b131351423a992
Date: Mon, 10 Nov 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762748993
