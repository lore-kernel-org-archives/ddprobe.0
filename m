Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447F522EF0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721083523; cv=none; b=gOE0Pema2J+zzJjB25IZSk7EZ5uqBEeTzqRS77GsU9a15SVPJZ9dALzIkfpNwXs6O7DMK9SKSoBp62LdNYc8GXW/4nTOtxMP6hg9hpNuS9EUmmGEVxzw3zcala9D8mLlptxn35Es+JEc8Nad+dQEiXu/ngLJldr2DhSvXF8H14E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721083523; c=relaxed/simple;
	bh=zOJHdzqsKol3zKqRNjQhyBw3gpKrZx2OnlS+P9LIpzw=;
	h=To:Subject:From:Message-Id:Date; b=gHe5i+klcZa3yJ2dH1DB/JMM1j1fEyyhysslMBmJQzK4XTHGnDpO/EJSLnUl5s+HSMfDcgp3oZtH5rDzxwRE6IoYAOxr7S83robOQFCLbuQUuiJDYOC2GiOLfLXrGC8bX9HmHZ1f37ArE8j2/aTr9cPPbxG+Z3CpJ6LEBApBu9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhYLQE+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhYLQE+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42ACC32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721083522;
	bh=zOJHdzqsKol3zKqRNjQhyBw3gpKrZx2OnlS+P9LIpzw=;
	h=To:Subject:From:Date:From;
	b=bhYLQE+dtvUHwO77KVn6RTvv0JM5Yf/DhR9lRBpPHrKo6BifKgkO8zw5LI5We/83z
	 CeCxNCX/+KLYTIVbjL/NvfaT4mrmREk9sqbtsk+u2gOz/r6dkQ24hB6mqjkUbZEX4G
	 ZCaooeYy9HSy/MHDBiVno/rVZgadu3ANw0DhoSmoA/vGIbHiPuS8DGs2pyrrISc3hR
	 bUjgf5y5rkVRwUitpegG7yqgaminAlFnh94VoUs46f5N5pJAraSc34d+CMWJfymMkk
	 3WX+3p3VieyV39O+rRtAJW5XsTVmr34IiYpYZZL4qR3HgRv8pPFoG5LWWLsWkHp4YV
	 xAjC48AeyzDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF469C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 22:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172108352276.17295.15125087023052196547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f599456970a808c22610fa160f9e58c05bd29fe8cc25ab21abfce4029ee8a8
Date: Mon, 15 Jul 2024 22:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721083522
