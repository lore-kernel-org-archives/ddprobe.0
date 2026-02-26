Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0233B331221
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772103894; cv=none; b=Q20XWn/JXkoJ0JJXA1fJGTtAoMmxoc/z0kQtSFmylYhkjp+yc+diCAiXcl6UnHWMqzmEWtWbNRu50fNgiFRS50RHC+8BroXYpSc01lY1F8TtDaakzg5H+z/iy4kWU4N0letIIouiWrunouJok3eXCbsnpZQtBpeOLRCPnOsfBzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772103894; c=relaxed/simple;
	bh=NbHE0CwrYujp9mz7IFMSmJk3tK3DLs84WFh7YTXdeMY=;
	h=To:Subject:From:Message-Id:Date; b=kitthz5dwoOFJqddA7gFrVHv1DdCcr89VVCgUOmJnMcZqMWMWjV14DOTQUDhHFeSS0KzXO68wDWr0aSZakvi+9kkG6nhKM8vctbYgyogqItGcJ9MxJaTbcmR6SSja92quuYq6vSMbCurcmFuCdYoIDgQ2NY4iwFfqOhfp4evq2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko+UYSDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko+UYSDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A682BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772103893;
	bh=NbHE0CwrYujp9mz7IFMSmJk3tK3DLs84WFh7YTXdeMY=;
	h=To:Subject:From:Date:From;
	b=ko+UYSDEhplr+Z1l7u1hW/uvQxjjMfIwe99+98yWogr6QdhowD17lU/dlovqZTfJ6
	 wAW3zB/fdfL/ZEu0CHk6uqAVteXnMLNixlhYKOH8kyxwFwwYW6ODZu6KD2ZGWofRN1
	 Emsr+3L7gjBj89GBlolncHDvpGFqA0QLDRBTUZ4TjqPw9/bwXKDxGygzt5+Ee1zBtf
	 pTXRGfqZbtyB1MyzgS0i/TrCjXWtamSFzm9/ktyi0bvy1xBc3hazoLhjBTikS4Wcyg
	 S0CrsK8eLGcZ4Iif/V6XscDV13ycyLsaEz8GK8g/0ZtoV/WkRmMYAVhENh2V+s95Ny
	 rmjnigV18DlBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9FFC592B
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210389359.27401.8326255280744243233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd93c159c0d234a66a94ab2272e39b046a310f477c28e5547338749c0e563d3
Date: Thu, 26 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772103893
