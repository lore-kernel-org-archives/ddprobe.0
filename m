Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DCA1D356E
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737675954; cv=none; b=BxRtf4Y6Y0fbh1UJwINg+GPEQhOCq5v6uvte+X5e2NIfYWPCFHeak/bEFI3SeJKBzElgJ3AIUQGDEvOHW8vQy/lyYwS7+cYxXE4QCO9+I53iWEbtIpMs/HPHSxBtsqqoJdLrzNPoePZcKdtgiaKyZ2yLMeaFlJhijGHv5+uKxHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737675954; c=relaxed/simple;
	bh=OlwwFI9MFzJu1jMUyo9v0uNebI3yEpt079o13ivkYXQ=;
	h=To:Subject:From:Message-Id:Date; b=R/HFRuIcpNkGDPbFAC2FpXYuJppEdvzR9yguHMRl02AcmNUOYNi7EM7d08XvDeNmt3F0ncXsoE2NIecshxOReqh9oNTxFWVvHHcu8TwkTHlpL4I1yK9uHw8EocKbQO8aJ+vXPBgZowl1HZJGk3HozdHK/e/p7ePBcM9W/Lg0wJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgcNKQuL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgcNKQuL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF07BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737675953;
	bh=OlwwFI9MFzJu1jMUyo9v0uNebI3yEpt079o13ivkYXQ=;
	h=To:Subject:From:Date:From;
	b=bgcNKQuLZ32YWIxW1hvzQDkjYU+F4DSeLW6QGJ6+wwET8jnErErzmNSMXvXjzGQHx
	 txhSBAQpLFgqqSPw/c38qPtY20qh3DuNy6Tt577noBGW4ZoFQ147MZ5cf33l9fVnz2
	 EG3xdbHXr2NY5NeR3I6aq7nyHlA1Go/F/IITa+uqUbWjZTxHN+uCH5GJeVrUGUPxW5
	 GJHHelSJ/wdhd9DpZOvAzV0bc0jRxnsUOkTA5FPQ7TqEU7vnBxdYONA1v/VMyq4B6J
	 bPQfMMu7xislpB3/O4HZsLbaNuNMhrjaGYWQNHqOBm9aG/LcXHTYGWJ0zd0TQ9Lc5O
	 +RQ2MIcUZl3sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4F38C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173767595372.20675.4703149215067978484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d784353a324be12072b2570e05252e38026b05b17b7cf2956baa0580027efc
Date: Thu, 23 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737675953
