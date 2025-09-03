Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1701F2371
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756933794; cv=none; b=p8GNhrSW6S6/x9MSgie0P/sPVbfZ79p4dW4kwnG+7uxsDTVtbR5/Z3Xxh8cYKBJNlbrdMPEjvgJG54gqFBA7PJb4W5DI/azY6vjIpupm4VjBnlsLHvLJAipe8Rt83ENQ4/QHr7GhRk8zIpD+WqLOKHPFe47A+NtSFqMmFKi38Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756933794; c=relaxed/simple;
	bh=0ubsjVKc+gbqcVvQkCWPSU2I9096jozSn0xEcWVyW30=;
	h=To:Subject:From:Message-Id:Date; b=XY9uFO//ES8UYKfJaMlE1AsTYYeB6hJXRTIV/pa/5tRiQ3+DH8RQfWJziEsdrbaUjyxBB6aUL6ij4fgDenygBveDEz+sn952ItHW/JI3/f7xjB04nhITr+l2QLfk9/vBXvzmkHJMao12Ia6Q7kiep6Sr+mq2yzU1D4owOzMkQX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYrCM4j5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYrCM4j5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756933793;
	bh=0ubsjVKc+gbqcVvQkCWPSU2I9096jozSn0xEcWVyW30=;
	h=To:Subject:From:Date:From;
	b=uYrCM4j56SQ5+zC/qfJN3plLy7YPPrtXXrLGmbIYNY/tOOGmVwjYEmVESgJlp6Ov6
	 jV+zL1obJN5uApW+JecGmTS9BmF9KKUEdWMImrcyWmiPFKJRv5HB1ukc9BOKVGtWnf
	 W1fPjsoCF/k+cXXCM50I4XRKSoo0ptrx1uZyY8LcKhw8Pnd5SRP5Klpmr8GRYVykE7
	 UiLJiLkbH24ML48T7eibVUDxj01oPaTucAUjjfeIhz/zdxvtrbhGaKB2C6D7Py3nvk
	 it0Ag9X2o/sgIGjcK3135T7Gug7RHy80NffxpIvTnN6QMrx8aJgZSFOHYlSolddQnl
	 PMpyGqMGYMTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E01CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175693379357.25397.4473882487429857752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c78d9c6d68c5ddf855cdfa3858a1a688bf3929f6527e2473399219b2ecfe22b
Date: Wed, 03 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756933793
