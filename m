Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D741BD9CE
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776560854; cv=none; b=qTd4cXTvNwZopchebyL/1nBk0hDljQOjnW6Zhg3RTrWUaO9/Ubi218kDRpPykaKSW8zlRp1tMGLysvIRIPlyfYWYuT4FH8z7mAnlwnvqt87HMG/XhKczbK5d6jZfs713iDpMmxFbGA1aLiXK3eCzfmCFJweuVnpf+t1U0PlkSgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776560854; c=relaxed/simple;
	bh=feiNcB3UzqPCS01kXPoFYqSlBQ5qzccVEBmz30CB8Kk=;
	h=To:Subject:From:Message-Id:Date; b=IBU8UtXDKW8UlwHGwV4M9CAQdLPrLRBCAfrI+jdHPla4foSrCi5U8oqeoYdxeCSUv2qnoO1Esh+mYX/skSfyc4E5l8SN67071bdoWrZYWuN/UjtpRfmhdT81OqQsO6TMvabtzRXreXW+Anp9StzRzIEPlkpyBNCPsnA1sUneGdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NfMSGeAc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NfMSGeAc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C010FC19424
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776560853;
	bh=feiNcB3UzqPCS01kXPoFYqSlBQ5qzccVEBmz30CB8Kk=;
	h=To:Subject:From:Date:From;
	b=NfMSGeAcmp3WnnenxORr44x764IL6juy9CUMG4V+n93scuDMJw4gpIqM6Z6wyNEGx
	 jQtoAm98J2gqQVxQRgUacFFDgVDepPBLZ5Wu4S22Y7rnna1PoFUD7XOr6d8SgLqhjW
	 L3lwE9g4awljCldFVfKZlPXTNp0QJ+GC6KK4kwE0UXOiSoPwuC3XTUP+XvGDHCMsdI
	 VaqPLxrlbBU1UmjDBnpfThVn7r165PCRMPxm+pqRD4m2Pw+imn4WOnV/b3gSop7GXS
	 F0ISzKra/tcbJ0S8Zrdrn14gExTnHGUTxm5K7ISRpi6C67023DocaVhsAfefPXkNEN
	 G2YhXrHkRRO3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FCF99C8D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656085368.30448.577800662906339294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27758f3cbe35e2bcb96f982a2f3a928af09f80b4eb39fc28ee52e24d20a66073
Date: Sun, 19 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776560853
