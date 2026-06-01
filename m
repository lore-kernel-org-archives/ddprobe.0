Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9823E1221
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780336474; cv=none; b=s5BasYP9jWCafdK5S0DI8w3/B/sSB/7qnfa8nWe2THt0pfJ05Khlv+85n+M3MQLHMQWdtPWq15lQya/zcDGFpuX2FVnhgt1lEibMoauEi6TR5+HUwlKldy9Yjsz/BJENLIp6tEzF8mrFznEPBiRKcbRKGNgfd0NrvQ6/3op0I7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780336474; c=relaxed/simple;
	bh=Oh/Gs7AuJM0VNWi1eTngNLbfsSpXEssi/OVIgDTDC28=;
	h=To:Subject:From:Message-Id:Date; b=Xj0LAu23MK+DUZB7s9UJQTCK5pN9RPcgCFiJ/tPcDPiYvX8v/mVSjyWw7tv0dF9yiJ9QSvW4AJ94/t9yaFYgns/nKCCnv5THabGUvTRjdIEhk7dhs7IDU4m3n3Df49HpR9RoLpGyPr0SNhpE/IKuJcbWaTbtmGc/ypFaXyDsMXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xv6KBHlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xv6KBHlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9510C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780336473;
	bh=Oh/Gs7AuJM0VNWi1eTngNLbfsSpXEssi/OVIgDTDC28=;
	h=To:Subject:From:Date:From;
	b=Xv6KBHlFDuIu6SeTSAoUh4xAVH6dbwa75X+6XVLNX/J/vhTFiD64JKiQNRNBavYeW
	 8DIWb3861JQMIyIhJJzM9j8j30bRiIsFqumoumR6IVnStIUyZmPYu1reNfHKrtnGdw
	 EqcSm7LGh7ykQY6qJXCY9Q96Oc0UQad9Sl98y4FaaJlPrplMmErmLTwRR5pj6p9xWM
	 9YByDGPGUSa8TQ88IW+SxkZORMpU0usS07nVV+xF6u3ZbudS6KIerDKKgRVEayLjJV
	 8uSOMxTB9Ocgv42GCGhLWacdFX9f4TZu/Itn/SzhyYN2zWOYqQlTWkS2Yk3oeJ9VcM
	 qmnfYXGLtIVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF703CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178033647370.9856.10441106290788275615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96de73b5b4b14c08e1ec0661ce09050f5e1cd0332e7316eff91d698a86f5a8e
Date: Mon, 01 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780336473
