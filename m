Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A76517BA0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717780643; cv=none; b=aYrqYy9Bypry/xlNnTl2OhZcnybXsIXTCj+XGs9jRlxcG9EvrR2uFa6uP11IKpCJExcQhtUwxHLevoBq24Sb5Ov+n1Rur4KYnNKnq3v7ZiuJAM9drdot7BBcb0TJstgg+iB6KZnEytqCh4WFp6QDdO0rP5z/S4TEXpf/vdiNeUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717780643; c=relaxed/simple;
	bh=2/OAfyE7wrVVE4I0g7xpK1cz7nmb6JKUyTAJn4yNqc4=;
	h=To:Subject:From:Message-Id:Date; b=mB/CDRHR5khwNqDVlSBnLrfaXf+Pv5S2NHXCI/lNy9qB2gRsP8bZymTjMDnezj1db4OPoBgkJn4ENmSDYNNAncUrnHI635SE48UGaKNqr7vjdozDPRPlO6Q8YRvojWXzJL+EDoNG2Z7M6d0uZMXkPSEPaBPpCkJh6W9NFyNeqos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKesfBov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKesfBov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CE8C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717780642;
	bh=2/OAfyE7wrVVE4I0g7xpK1cz7nmb6JKUyTAJn4yNqc4=;
	h=To:Subject:From:Date:From;
	b=dKesfBovOovtPgWNaRxA/qRzZUra1AL47dR+eEgVfzPsVf4gOdcvS4MU7L6N/dwQC
	 osRP8GcOE2kZ1j0S1ixcxDJM6tvRgYKDFlrn8JbUvcTm0FlOCt0pjphM6wz+uHAWjk
	 DpofjvvngXJ1L6n1MS9uO5eZmsZbgip0S5DhdmUG8jIA+XjrEbWnxJhSshLmI37Zvh
	 GgcUD2noj5ToWzgokIQeFuUNpxmtaztUOWw6PBUBQuc5E1zSjKoutujTD4WzJIBsgG
	 JEpw9oT/7F3sNyGBG/xxTX/01dQxjh4Vy66FhPwXd9SnEoZbviLvRtP28A1Zxzk4IZ
	 lY+oQEtd8M2EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEDB1C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 17:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778064277.13444.9796027269468833618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a147182209c64cec8118bbfd1290bd3f9d580b01491ca7317e5823495e46034
Date: Fri, 07 Jun 2024 17:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717780642
