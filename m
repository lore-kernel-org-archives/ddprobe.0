Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65712195FC1
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717590983; cv=none; b=OqfhuPAFW8W61Bj+lIgv3A3SuQ6V0artpByiF67dJV5f+83dw2wQH9+NGx1xDnZiLinVn+YcRCqy2wum/AJ8vVx2s4oBCHvt8eBMgN50YaXPx08IbdafLcyeDB5KkJxYWIFbkGS1cDPzLW29Dzpm8mqHl1u+OpUjG1mzbKgvA/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717590983; c=relaxed/simple;
	bh=E+4qRawAtASbNukF0yN6JxOj8CkkgCiP9Kxa+rHLeXA=;
	h=To:Subject:From:Message-Id:Date; b=U4bDUT7eydVsTFoDf3HmCck6iAO4HbSr9autbLPGqg/dUU4yxkce7bPfFrH+12qBoFy3TrwjNS6yAGaNwpBc/ro25Pxjp1ObsPktwqLTYVa8OJmTBZiUG4MY0k1rY31BxDwXqGlYm0242VbvPgx9M1ANXeyPgHOrZ+KPo8df/0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9bVME+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9bVME+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E9CC3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717590982;
	bh=E+4qRawAtASbNukF0yN6JxOj8CkkgCiP9Kxa+rHLeXA=;
	h=To:Subject:From:Date:From;
	b=h9bVME+ZI8PYKNHn4x9yaidMxntWkuiYN7N2Ku6d69zR0i9wbP0EYl+bfUb9BixcG
	 1o+AjqGG6gZG1sNm2iayLR01i9UIODTiRbLrM2L56UA06POUa5jjoOMn6Sx0CXDDmS
	 agYJTF3kgzll3Z8ZcYzDSbfZx8OvUFndVvxedNj9xp1istyNE6XN3XZg18ocfXBMJx
	 l2oQz0TtnQEZti6UY3Nn2G2uTqSamuKWtnYj/xwQ6ZxyVuFsPhNvezcucQ+E85r/Vs
	 VUxeOakHkPhIi+emkMXiF/IwALqu18wRoXCLNI5emU1C5otqT1/kH/OJy+vJ8hblse
	 ARTesClHhfmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2265C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 12:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759098278.22260.2654511278587972360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee2742cceb17691ed42b440083030460c06fed55dc408094e8e8e1e249b1391
Date: Wed, 05 Jun 2024 12:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717590982
