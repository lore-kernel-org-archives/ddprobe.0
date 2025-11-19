Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B355B21A
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550114; cv=none; b=SrONHm+x+CyJ9v5s0mnhs6l42zjd1h736vTur2xSHsudg2vGVEvgLN5dIuYDK351FEr59prcYDQTybPsXM5wwgZWj3UF5u3JCwVDm5Z//sBH41nKnAZQY+8agWypXRddN12arNuDvv2vlGXIlrgzGcz6QLVWLpUZx6J4UbZVUTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550114; c=relaxed/simple;
	bh=WdeL1n64EITec8T7L906aQ/+J2Og2xZ1SzCL/FvzQJQ=;
	h=To:Subject:From:Message-Id:Date; b=PdCZV12FazNpJFXI6G96rXTfJS0HwWcsB0ZtDPtQ4TD4J/rsOjZDER6GLMezaSIwlzNezVvNG1XZwYSbXCA49feFMZTRjgaiPaYB3oLPmYAEw5Mt2E+iK/MgXBHKu7ZTFieWx8eJCZ6pWerEPjGXfQiWZL4OhApvlK+u9nmsQ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H58hR/D1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H58hR/D1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDEA0C19424
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763550114;
	bh=WdeL1n64EITec8T7L906aQ/+J2Og2xZ1SzCL/FvzQJQ=;
	h=To:Subject:From:Date:From;
	b=H58hR/D1uCV/UkFpIPvUIj5ifNZEINcU4w/uTG0LpdbMbK3WgbTsOxVGxyO4gLXbI
	 mZ2p1cC9j+vbtMJ6H/hL4RA6Pe4UUuceBSgez2gBdy72y3YZ0Az3j7JwKVN9ieptcq
	 MFTKkmoqhLH889m2gsfoz+rK+w6/KshVj/T5iPmhoO/oFC5KQDxaZPUs+K51DEO4Qp
	 mvbVJpaMcuXsshnAy/cad6Jw7kg4vQRN2QVVMJ73fmXjH9OpnHgRwVNXhBeaAjq1BT
	 rwz2gL/JHdBc2w6uzC53IGeWu4JP0dkcPFuKOTZszJwQFgpikEToRpdmJ0ZaZZyuE8
	 EuB3uq2LeFRpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D38CF3195
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355011359.14392.17605595826036761532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b60d2e729c4857f47fe5f4686c029382eda22ce6db02324fe233484d0c7c85
Date: Wed, 19 Nov 2025 11:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763550113
