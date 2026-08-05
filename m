Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2013BCD05
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785968434; cv=none; b=VTC0tJ4lSd0ZUSS8+GNvARQ5uBXEHjEzJEU7HKL6rOEpkGkMa2DeMrCiDDbG9hIMIxo6O/NH3rCJmH4eMrKfzc5V+zqT8URVGPGDjhspbfIeutaWB52JAZPTYylnddC/8suCkpK2j7sl78ohVDMg6NBB3/pfHejkuodAqRiwmtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785968434; c=relaxed/simple;
	bh=JXTPM19SdSpyAt8AIho+2dUzN7f+NrBJGMlyZtCY9/g=;
	h=To:Subject:From:Message-Id:Date; b=GgndA9Hpkcab9okSZOV1oWVk+KlIy9t8+af040oUKikWKsBe2j+uD4MV7fVLpap7/uLLHHwUS+32p7kDNcN+RGiHvtVB0zYwEz0INY7R3EMemv6+a/dTr8MDgTZ7ZkkUquJkC8YgkBSkVH/dCqHpTGSNjOtiynYC1b0BuXFkMB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auicZGqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auicZGqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A16C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785968433;
	bh=JXTPM19SdSpyAt8AIho+2dUzN7f+NrBJGMlyZtCY9/g=;
	h=To:Subject:From:Date:From;
	b=auicZGqyBDeFuJkTiuOIrJjI7u4TWW+WgX9GJE+9iPktyQZ20bA7NPMbG51tmhNm0
	 q5tbjF0913xUoDHwyFj92kOPeWeSeVwsyVQUpEfyqKpDGi5CIx0hpFJmlBdNx1niEL
	 Qjl1eN5V8aKLVw3tmOi0a/VwNafjOv9/ZNfrn+NCejY841akVk5iuqgprIcO1c66KQ
	 iRih+7CFiKJCGVnKP2Y1M7rXQs5El5ksr7bueocWizo5c9SSeVgFNDpAqBvZ4jSvbb
	 6Fr5cCewjeEd1PXLimNzWOJOn6qaBwGAqMVYkQe1K9XfR2LZErx842WJtlTa1o8Vpn
	 XzlCBu0kbBrgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE66AC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178596843369.25599.4208202835313812727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5529626ecd97e3af0b2994bac836da4fe5b781279b12744f51318064bddd02
Date: Wed, 05 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785968433
