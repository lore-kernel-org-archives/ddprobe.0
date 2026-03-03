Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCA637BE9E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772523294; cv=none; b=u82vO7Tzn7i+loXB8R82kNYMEshaDRDLdwF9EOrLYjBDPLN/W/pjrzswoe9IAMAPVvRJDms3tM4GdwYJNnGHG8Q5pbTONHtQ5UN4H46lJTQlcfkjUFlpfQI6t3E1QUvb1/9FdtCmWH+UJo9s+qyjyqNj3azOtmgx7FICeTq1pGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772523294; c=relaxed/simple;
	bh=b1BJRHjdbyZl1WuZpkZL1eWaxglnbUswIPRXdZ7T0nI=;
	h=To:Subject:From:Message-Id:Date; b=sQkjKAsgmLArrq4MWtCi1BaGn0uRn+M82/brTfKj3bGFwCrkEeewd7UTZzNsb69kmGVN1JhkQ478QAWYuSebY1r7mYt/Sads+mW+Ke5xF116kcoryDGOujQ2UJs0y4GubCmH1vKSpvFl5Lz/a3EVOzTNlYWyRGUwOtQdJzZCVq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1ael3aJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1ael3aJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78A0C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772523293;
	bh=b1BJRHjdbyZl1WuZpkZL1eWaxglnbUswIPRXdZ7T0nI=;
	h=To:Subject:From:Date:From;
	b=D1ael3aJ4o5wZiX63fYbVncLFb+IGWnh6hq57DURq6ucp3Kvz3NRYRmU8rRaivzGa
	 CSQOVIKlsSnbBhJQt3h00DJPS47ZGBTKawsqCOOoFXhricNjTGGvgj2C9RNIvsLqjk
	 /1fR38t4KnHyk4Aq3Zfd/d3fp2kgcNP1btk/U5u/fkOxP6YXiYA7hwaDCMED21bb9Y
	 MkObDady10EzAsvBwmg48lw/tqfCn2VSe2QS1dY51J+2G54AprXvneKFTNeRgsV2xJ
	 1WoJ/GCSz0WWLxSCvGZBt9aGnSFcz3OBGEv/+LpFZkVwR4z9g1lmDSvVM2tnQS+PeP
	 2Tndd8sOSnT0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4136E67A8A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177252329365.18886.7330688331457770517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d25ea513f752b9c55e197893b7f54fa4e918c30eab54c66e3e2b52aa249a69c6
Date: Tue, 03 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772523293
