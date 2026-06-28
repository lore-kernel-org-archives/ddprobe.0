Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499EABA34
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782608314; cv=none; b=hr+1Mizg9mOXYDtu6wXLc+V/m/O4uoVsKgF/Nl2x0qG+dI28+eSGajtsETSMwrB5t5JXmZMlA2U/pjGueWeSRyRUig+RzaHCuZhO2Q8aQE8LXRSTxdigga5tGKVAH0+nHt3Ni/JFG9zUPQmmBbg6VicEOrBPgHCljFyHo/llv0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782608314; c=relaxed/simple;
	bh=kmTltBedSrxGyWGLHd0p9CUwlaLurtC3M70SMFt2yJo=;
	h=To:Subject:From:Message-Id:Date; b=L7dHdx0VeMor4Z309qKnToMv0KYzs18hL1lQBfUAT/i7rVzszZESpKLQ+zoyi5AQQtR5/hmqWOEZa3jxUgTQj7GQVAtDBtBAr4AiVlfrxCSghZY3lOTE6KaqqEip84z1AbOdsjhpU1nhk9ipaCkCcahLSbgOHhbB2Hw9VcsjTQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndKRIi3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndKRIi3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C584FC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782608313;
	bh=kmTltBedSrxGyWGLHd0p9CUwlaLurtC3M70SMFt2yJo=;
	h=To:Subject:From:Date:From;
	b=ndKRIi3IAEPQU5LqoY3F2AD1BHk8GbmcXEqyKLXKy12MgGhBHty3QC6lrmgE1aFSD
	 xlUF7lezgMQukFWaEWA0cQfEi9f4IC0nwxbDNLPunDs/iUzngWn0s6SFeLsZUozEJp
	 uoiEzP7qExwNjTAlaccJEvYbBs/7EIGzTyTKCt89/NTZuQ47dzkAb3/NRikRp5YM5r
	 wu56U5XM0ks/zqbcnQeIMeFkWs6xWkO4DV+nObBl56MKut1Sq8VcO0iY7ImOwg9YTC
	 Qw32/BxCzNjsgYuQsYZhHsyu7u0SS/QK0oj4qLQX2GSCJ1I5D1ymDO6g3nv6f9ukbs
	 RL0/Cq0pmA08A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB54C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178260831369.27235.11172533112085098315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401a4e8400b2e95a3130c83dc4e63cc5a8704529e967b3d4a5e666821af8bc18
Date: Sun, 28 Jun 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782608313
