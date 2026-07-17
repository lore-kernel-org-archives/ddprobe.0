Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2CC379C2E
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784269714; cv=none; b=F74BxfJHTtO2IeMz8xgqJFviP9/0AGb+ddM6735hPl+FHztjy/1WMFsTSNrBdRWJ9sTvHBXCbwizBn1by9RFAQnEDBjFWkM1aBEhNQoRUDx315mHKnFiTC9nXbApqixAwSBrT0amvSoPw+G1BTt6XLUPCSOkPJssVm+bR24IgoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784269714; c=relaxed/simple;
	bh=N2eYqUzxZgs1z62JVuaX1FhsNPcItw8tF9itdYMl3Zs=;
	h=To:Subject:From:Message-Id:Date; b=G0Fum+7MPMmja3BPzYJ5Lm6CyEShQnDKXB00QYGEVFX01qO8mgpV8pgu1MsTm4cKaFY06tsp/iur3heXE4Ff1P6oqtDgFQ9XTBzog41ZGjM9zWhxzejVjmrYtwRi5NtT8bQ/lDjtKlX4fK5J1dXHkru6SpylntmXb5LYiC88GgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f00nU3xX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f00nU3xX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE507C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784269713;
	bh=N2eYqUzxZgs1z62JVuaX1FhsNPcItw8tF9itdYMl3Zs=;
	h=To:Subject:From:Date:From;
	b=f00nU3xXWAEKaz9XP0jmrKIQvF0BY+lFGJoSzL7uDow2a5LDiVSsOHKK7CwzesPd4
	 tyae7VkHJX6ZwSE4lKjt81xMSU9Z5gTCJWZEucKfWFWfdDLGID+Usiw3ZFQJonVsdx
	 fZRfVaka0Cx2H9y6XsXdymL6PgPFtRAG3HbOGxEmWCGtStUxJNvIBIpB1XFmdviuZi
	 7Mac3UPygeVU87P5DJ6kVcwJhBAwP3S5OTz6nvykCzn8VwPrKivMPfMQf/v4Gd1deu
	 P2hvvbqTyC1Hs+pzO+keScFui5B2n6LYWpVK7g0NSmR6EnHrGbIcRTavORFJroZXjB
	 prHoUGiWRTT8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AB8C44507
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 06:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178426971368.20206.3554209114440427695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032865d5c84e5b3a91277ca245a490fa65b560e193f079e0e86fae8f8a1230f6
Date: Fri, 17 Jul 2026 06:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784269713
