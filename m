Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BC41DDEE
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714854743; cv=none; b=Lj8ZHIGrpG/ApM4oiOmagD1jZlvjJXZbPYpijveuXJZZT7O8WoJ/bs7a9rh86mq34jTIN68np0tGGFtFNCW13M94c8muKcFs63qN1poUAJkf9GrbCZ890KD9N91JsRkg0F9saljNUxBB5M4FamQHeZqwQgx7t/Gg3tXsKxwAJB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714854743; c=relaxed/simple;
	bh=rwBNtYZInAMSKuto8hAjaN4bsfV6+NC5FPxcxaRrCfk=;
	h=To:Subject:From:Message-Id:Date; b=EApV+mNPqOYcCL31GEdDZC5VWFOTQiq4ecySiqMfNHaD4yxZ6/ANmQ1uUqu0v9+yn2Va5l9a+9DW22OXQfW5LWEyHSdXdaKmLU8vDdbhNRP6essVhfn5sJGJS6cpVD+6DantZmUOrp37khE44k375UdVs8fIybn48GvY6X1rtTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsWLruva; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsWLruva"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C58C2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714854742;
	bh=rwBNtYZInAMSKuto8hAjaN4bsfV6+NC5FPxcxaRrCfk=;
	h=To:Subject:From:Date:From;
	b=bsWLruvaJupbCkF3JJLMpETF6UNP1n8VppjAUWhvjjBDiyF5CCTqoqBonLxP8wxlQ
	 7NzqfPadUyjs5P5jHFKL8yESaLNyulCwqw+ZkwT8vFdZ5LTvbBjnj5bnnazyA6PXze
	 G6RkJJVfLtkN/MRqzsSVRgRgf1ziCsN49wuTigJFAJ6zPe7rGSyrIt9FMgbnU0Cbd4
	 w8FsZE4ZyCc1aMMHm4vnNQki4Q8XFyO1f31ARTVitn0JD11UjJw4t7bPlXf7P/Ibdq
	 LW/YKfpWRvD56OjZrUNrhHGF6GAn/oQ1i7tCnyZrWCMV+i84lVkwhToGNQ95wY4Eao
	 sC+q0NkTLHLhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4BDAC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 20:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171485474284.28465.11811309752166086343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4e98d9ab94f171819889a6302dbd9712cd1d7f1bef57ca54cfd187286f7722b
Date: Sat, 04 May 2024 20:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714854742
