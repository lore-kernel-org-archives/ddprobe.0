Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1998318A921
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767753234; cv=none; b=azgQT/t9cz9gURXhtxluc85slJGpoQL7VIhiZuADXWz3loQGdovxxJ9HgXrSquV2d2rG+g7AOYS1INLeLqcUPF6wp86BSQkM4BU20Nu9ZB7RZ0mEuVmuhaBzxxY4iyNOj8dw1HBQwl8CSJjgyI6iiCkrsZrH5T4vifDG3sWuIik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767753234; c=relaxed/simple;
	bh=HBmzaRpzaWhEaEPgVn4EzsGGnA4JwIYcetxas73bnSA=;
	h=To:Subject:From:Message-Id:Date; b=QGF6I0nxuxJ9xL9bgkx8dqPhVM5cawH3osD7fJgico9kO/iTqyQSszRrRi1c1PX4hSfDzBOZnSTNjuqVRnu70f2XgmEL4qIz95fL58UwhQG3x7qqTixS9qHpyppInqcij37OR3tZ9UDKBWKi77SndS8nzopmfWBoSUlpCxmegeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWPh/1wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWPh/1wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C652C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767753233;
	bh=HBmzaRpzaWhEaEPgVn4EzsGGnA4JwIYcetxas73bnSA=;
	h=To:Subject:From:Date:From;
	b=XWPh/1wIDfX/mo5zV2drVnAkSOrk2r0PyqsEETfM4hOj1mtz7mwmRx8eqVs5fJDT6
	 M2fX/pE4umi/1ohEHez5s4ZnGedHsS+n+//9KdT9Ug/v92JcheFMyjYgbKhnQ2IF+W
	 JO2lNIIdBf1Ck4q9HhEa6InNHMtix48V0UAeJ2W5LNC0O2OaLG0RaMW2BNFFLVzgM6
	 TN995UeXTHtQhxvaV+Qmu0MZc7iZWmMtz7B2y3M2N5zjncox5/xhRO1UOOUg+lNACj
	 OS2p9I1JmU/QKI8zEZxhf62gZdCR9whv07+dFcqLcR2Ur6y9RpwlQu19xRJQx4eqF3
	 9sJo8NKTBhJWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF6CF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775323357.13573.4082223224057850007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056c501ad4bcb7464dea3185ff605ff6b0440a2684245c599754647e3ae3fc67
Date: Wed, 07 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767753233
