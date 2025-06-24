Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514A8433A8
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750726794; cv=none; b=KWt/8ZkoWUwfxV15LA1eKpzX1esv2sAgbRni6j+y4ipHM90Ehx6L8tHORfC+OalIJhQde41C2BLPOjwhbkBrv+yvn6t07Uf0rV1x6KE2zSHO66n+kpGQSEaCM1YrbHRui3QwB33jMUKrVcuf2ZocmzJBtBX3NLlBywx+h3D2AS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750726794; c=relaxed/simple;
	bh=xsuB/AIPT9Z/TXVNhliZ7bFQ+HjHm8WHNjCuNkk0+ac=;
	h=To:Subject:From:Message-Id:Date; b=g+Rf3I1gqKmOcfqffH9d53Z0oyD2eYE/ZF+7CFgoInKU+HcGiorvxAHQ/eqbnAQ6unnpYsT00TpE2TUrzgIgc5vzi9Pvs9I6/VE/yE15TODu8b80CeuCR3RrkYzCpCP/sTbt0XFEDkpKY4qqbKhMTCkqxFPrFYXq3H3P7d/uK8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRTj7L1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRTj7L1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FDEC4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750726793;
	bh=xsuB/AIPT9Z/TXVNhliZ7bFQ+HjHm8WHNjCuNkk0+ac=;
	h=To:Subject:From:Date:From;
	b=oRTj7L1f68gxzuIVpev1ZwzXHMTzZoM9tWZNW28pkvxpYEKs4sGDtD5r8kV4Mibu9
	 DeNWjJhmElKhpEF6AyF7zzujrX0Iy+vIr/xEzzDuX3FURkxFxd6oP8WB0rEjgfvzPv
	 GDBmuSHEpbp1h4nTauMYuWCQ3kQp17Kg3heG1WTlP5UaQc+sH6jsPnJJmG7sYllXVA
	 5Jk09XXXkAg/aDHW8HGXVeypAVLcNKLaDl1ckTubNY6Ez6Qc8v/xHz9VpbS4eSgWM6
	 dedN/zvP2q4hnWA0I0qzrVdPqPSdT8hsDkdbHQ2jro3JYKeB1Kvd9ZZykIL/N9Efqs
	 OQ6xxQd5C2ijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F3AC7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175072679357.17971.13768720405583059339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfacb7cf864965295e01cfca3ee7fc02ebcaf72b098ce626b9a877a3cfd0419
Date: Tue, 24 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750726793
