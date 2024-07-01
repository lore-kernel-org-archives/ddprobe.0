Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760EC4A3E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719798263; cv=none; b=VlPRFHbX2eKrttq7NOT+c5/ZkiyYGPzcC9nGdCS40uy3tXbi2pNUXcn1Nz8X5VhanCyfjgVz/k6KRxHda4hR9yIVKPOpNbErqtgzQOPfvqXYrDtC2Kp4tFtbd2JNjclPIIqvFKLUl1P/MfhB6xw40PgDvdvniBXcNwtkUp5kJfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719798263; c=relaxed/simple;
	bh=HzOFG5r0gC1RwgoqAt96wNDi3WIYabXG7FcBVaNyPmI=;
	h=To:Subject:From:Message-Id:Date; b=kDR8TB66PbQfNcuSDRswEumP6pVV98ez9eAUfK1Kbv9y1RmpgEc8e6nB0DFIIZtnvaS4JvO1WBif2u/pXh9M1w7NgFSpqP009KZsEycnI5l+1HAUeqYNIadb+JFXlXF7BPAttQxhhLk8c9zsqQyQZhEznxi6B8h+0gP0YBMaDLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CzkSHF71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CzkSHF71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8973C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719798262;
	bh=HzOFG5r0gC1RwgoqAt96wNDi3WIYabXG7FcBVaNyPmI=;
	h=To:Subject:From:Date:From;
	b=CzkSHF71o7gaw6iQpeHNMSEu9S6Rcq9t70U29V2NHu8oZGSosKUJQKrp7o5G2qfsO
	 2/2dK4pKuKKnZhYFvM5flJDj5buLNn5fzSqJDGSVH51tlVVw2IVfG1988FqSN4wD50
	 hbrRSZE6ftLCMWZlwCn4io3y6Tab8xMi1Mt/6mvquC+VAdsxL2kdFzsWiagEkRTUXn
	 5CCWbUiC2GZ2zfvLA37vZ31zZUJPR95XMb693oxd8MIX35IrSkNaMq2CGa7bfOnopV
	 Goso2AgKTBYgj9jxv+rDxlEZgIoU9y5ZULp/KBsKlVwsYV71Nyy9EF9G25EZVj6LUs
	 4kBlwGtNi/9Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04B9C27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979826275.25516.16331605585198641033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a39564add83820011a9a0abcc4170b0a5708fd9c21cda9ec2dfb7701fa59f7b
Date: Mon, 01 Jul 2024 01:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719798262
