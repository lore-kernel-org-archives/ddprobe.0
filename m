Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5F81DE8A0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756955394; cv=none; b=L20adPfdZUsfpVDK87al6mkuGkoGscRcWhMS3c2rYeaajMuvcXTuMoNivFQZsAE0c2AKKkYgnJkdDvSq/c5IlYe9iEmVkqvHVJPkmR0jg5sq3i6HLtfMPWZ1IEzbNkj6V8BM2K9w/qQDfZs/q2wzS8JO9+xWoBweWPBknVoe7X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756955394; c=relaxed/simple;
	bh=HU4vr1uEnRN1ivmH3/Xc11BPeFKhEanOQKhaQHbpg/I=;
	h=To:Subject:From:Message-Id:Date; b=UOXGX9x7moQjDqmS9mQUIVg1S9ph+Gapk4/yDuMyfUh/x0m60vSfXQ26YrF1c3g9uBk4otOXeClzJ5tVd2qZLmemMB4WGD4iQCtIRJUvftJRCc0IoofT6WpSbVVyZFLr8Y3wpbBysIP+uL03c2FwfF5G2SpQHdcZ2IL0JNYheq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4in9pkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4in9pkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A096FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756955393;
	bh=HU4vr1uEnRN1ivmH3/Xc11BPeFKhEanOQKhaQHbpg/I=;
	h=To:Subject:From:Date:From;
	b=q4in9pkWujvZoiAuRIm2MyCB5BZoE96tvfYRCyyuhgg+719plDqfxQrGAgX2fPSgi
	 xoMmHMjQq75YE5fCkwkkZeAAbRtiFDUgEEja/txDsT0B5SWP5LfY1ivz76APDR7xZH
	 Pymwosbaz78S53tf6PahQBtzYMxPBee1Th4FeCwDaYKte/A9hCoGqYs5hYCUhlkjBE
	 4RJX/mKR/DA5hiO4GjJzBC5DIH8OK/hT1Hm9yOPBoWAHAVG37fZvR8PxG6IhB41tzY
	 BY/chGlTSoqqv79ld8tax/bcg57cVQdiqIQgIMlsAa9GGsOmiN4OQZrEu3DCqcpOkE
	 6jDwThRUd5EQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F383CA1010
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175695539357.28589.16538518597565718554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42d9efc8e78521bc05098475e70a052b142695b7b6704447f3bb10073eb6e27
Date: Thu, 04 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756955393
