Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B19175A86
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785707434; cv=none; b=DZKkDEP8InDEdhafs2E60mcdsr6OGJuHd4K5A3sQcedGR1mq6+ZEuyTNN7vDtMJ13gNfPzH92P3kejAqcIwq2Q05PfLyhP0mk4uDW5busxkEH9yktYqaFMBj4nbWh0+FNFUZ3wqYekrukiiwv3Hk2ylK6Dskh2aD4XPOTO/TT4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785707434; c=relaxed/simple;
	bh=SZlTV9BrqTwKJuT8PSFomeymEqEQEkj3upC7im7i2+0=;
	h=To:Subject:From:Message-Id:Date; b=UVpTKttsKmG0quDEvBar4F582wiv11pghSYtCi+mt/gp2qqnMaGcIYqN7b8gYNfOM3BUFg++Du0gDwvq5WKIy+qreEolDjE+PbsGuFaG8nQt0y/vQTDG/IVysq8PPZFJ/zTsjQuhE8aLb4Q9/W5p+e2VP8stI9JGkoZHGBHx8k8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqlwTyRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqlwTyRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0206C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785707433;
	bh=SZlTV9BrqTwKJuT8PSFomeymEqEQEkj3upC7im7i2+0=;
	h=To:Subject:From:Date:From;
	b=pqlwTyROxYwRD7GsCdKlYSk8bSLjmkgbEgxtf3aMH0G34Ir/45OcZJWWxRGgcfrMZ
	 R1qqwJ/liIWoOCLiNCf5dJ4fsbW3aS+n8V5owIBWGvmsyNeJegjyEfyPoW6D/fb/F6
	 onVApey4suKfDfuM27GddkBdoSgJP9p4ajJM7T7IwhEGO2/79s+cizRpURVlPt0z+N
	 ieuRdbq+zA4I5E9HIyUzT8fLD8lSm20s+5VlobkzlRtkp9OHZd9JX9revWnMi93MRg
	 di/K4zojQFAJ6W6k5TFvofEyX0lE0IigU7KIEXLLlp6omHaK3GLoEMNOhBUN90Utex
	 dECW34HaSUv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEADAC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570743368.17154.5860420415741682903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f77b1ad45c019eda5eaa0ac73870d748d3b03caa2c11243a2fbc7b4e0946ad2
Date: Sun, 02 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785707433
