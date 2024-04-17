Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EFA7141995
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713361163; cv=none; b=ZgFXvTyUtUZBz+DYsXg5Rv3w1D6n5Um2HgLyWirN4e4gweYwS8ttgYQP73k00w3xdoDdhQoFbR+XYzkaRuWV9LX1zXbaYBWFqADUC16xmQX1ItfCV/AtvIaaEda+FlgT02PSUD3NYbIPhygEmw6Qx6KCXW7yF8EeFqi3z1c5rvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713361163; c=relaxed/simple;
	bh=ZOcTeo3G7QRH1OCKOxU/00i4yWuq4yIhWzvPboqTdtU=;
	h=To:Subject:From:Message-Id:Date; b=Q33m6vzbIRodJaX5ph8zW+pTRfvoSCVsUkdq8cGq3JgqwUn2fv6zeHbDJuj1/xTkExYjlgBMiBOAkR6tFKO3gA2QJgLNDD50ydjWljvSLQdvPp44EmtCeteDJYpeWBtimnqPGVMCobPenV1ioardFYhJjWhjt0PwsnBdACy6MCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHXz/0eU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHXz/0eU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B24C072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713361162;
	bh=ZOcTeo3G7QRH1OCKOxU/00i4yWuq4yIhWzvPboqTdtU=;
	h=To:Subject:From:Date:From;
	b=BHXz/0eUmcth6aveJA9+R+KiIDG8mR4BTCAOwLpPHm2dXMJ7lx0ZNprOspJOTC0Am
	 OaWgQLYS5PM7jE2BSnzRYvRJMntQkwYRcd68qVELCVCDKHzuIeBo5ARLUdmtqDID//
	 ZJ3VAnibAq4EFt9QtILQZ72wpsKlbklRfYNN2YvXE9521Qc78Ld2aV3LSfnqOmeYrd
	 zJxhAi+qpUz/cVVzDu8mNUSIXoVeCYtrj+1srqYsVGK+AONSH2T4AxSZXzoeGF8z3q
	 gy+Zs+sQlF8RzqSTpL6l8M2GEp3OG7LIoczfH6EenLXj4lb1s0kqjbu7zaw+bFecwy
	 2OF/WtjqbpCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5616C001CC
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 13:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171336116280.31568.6564255860792617280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961be7e8030c6c6fddbf3089e6baa27d4885a70a445eb6c99e1280c43276d57f
Date: Wed, 17 Apr 2024 13:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713361162
