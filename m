Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373512E0901
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780254874; cv=none; b=ASPERkPZpw9OnE3bg4C8hR4oayPzUz1pKNg6TUo9PsyzNSybr0Bdnr+V+mVx2bvhYD5D1iWxbDWyDNAbgTz6eWqyoM59L15ffA3+Eqnhoo0HmZ02/P5ycdWf5tH9QcrAP/mXkVVS6KimU6B5wGNx4wXLdBl/hnNR7/Ad3XLbHM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780254874; c=relaxed/simple;
	bh=AEGDm8t0XfqaWnZFJABDkL/f3CPRMjbU6TN1CqvQzkc=;
	h=To:Subject:From:Message-Id:Date; b=LDelJJ//F6+8J0TEpA6srCMrzGdknFdYFKYu0zQIJwZiB5HEg++DLOBiaxdDBb8SO7JSibFDWg3dQAV4LyfWhmwPv2UjWhwZk+CsulqL/uKRiS/Si8iE7lRVH8osqtoUyznrU4HRQeeJDh0RLT9BbI07YgJUecDOnOxByrh7FW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1Rzdps5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1Rzdps5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1573C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780254873;
	bh=AEGDm8t0XfqaWnZFJABDkL/f3CPRMjbU6TN1CqvQzkc=;
	h=To:Subject:From:Date:From;
	b=V1Rzdps5ZfIamb+fqT2Ytp1ft1KrboR+fq0TQJll4uO9QAtQdxjg6hbZDhtziI1HL
	 MPFgzG7mMvCGhVZGFiX8r6OK2hjgIEVRtSUCsVocC+DCQD8h05KiW/2ef1hQZ/nW0n
	 bpLoBlN6pdiu1rhBpDGszkLkIIQ6bv5qmQn7lQI4wTq9/WulCrJD5imnNnfR9/GvDk
	 pGUC8PyDGhPlqvt9CO5GsjeJlO1xEKBu9H74n1kRfKnE3S4YZEPbISxQeWC0/l4N/i
	 O7TF3kc1cPCkkXMXZXKbzFDUq1hCgcO+G3CCO6EYcPLjNtBj+Z43AT0gpwj+kUGmCy
	 9ueY+THyFGvfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8536CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025487368.27250.3520176146589256376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ee32b46648ef689409e8e7d739e34b4be18c11347522d5a91721fe3b087352a
Date: Sun, 31 May 2026 19:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780254873
