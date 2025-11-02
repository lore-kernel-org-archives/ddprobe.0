Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F712DE200
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762105194; cv=none; b=KLq3x7bhPYs4UR3RlSvQzOrAwuXjFkzQX1Wq6diIy8NAYa3Ghm2WhV+UleRAOD33VC/7xCOT2JY68srgTg+TvigI6P3hrWDRL0JzuEXSO2lWFJvF4al6DgZq8h5yIsn+7zuxRrrgjxjZppiLdRK2k+y/k4nv+i8yeVeCVk0yQI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762105194; c=relaxed/simple;
	bh=gF1XP3Yr5/pbziWxt+rZ/r/SWcoBhlfnaUS0YyaODtA=;
	h=To:Subject:From:Message-Id:Date; b=VD/PyUlrc5X61+SXn1QMYr35IuqImrVfEcajShSk1ZGqcPsEpjZ3RDLcKoZPqXMuAH7IMmSdmxwMS42lT4GntGnvDwe2nRLDWHDWDE6axtcRdMnoVqwNr1dO5gUlE9o60U85k4ZmpMvU9uQKO5ulHOCweFYut2WjC1Cd/VttEJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUYCxq51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUYCxq51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8768C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762105193;
	bh=gF1XP3Yr5/pbziWxt+rZ/r/SWcoBhlfnaUS0YyaODtA=;
	h=To:Subject:From:Date:From;
	b=cUYCxq512AtFOB+lqEuFMXDyT4MSaD+MRUcm5CRRpj1KCnCkHTOo+INPc5ZrqpJcj
	 F9xetVP8rAkIMmHmmVDSZS5BYqdOP+JoL7xXWZouVRKBlQTftQck+d+bGd6BzY1Gwi
	 2uACU9OcZCHBhiTZuougYpdmXx1K+5YuQY8t4TOlGkPslp6yACTOdNsmrzxfQM/QEx
	 1HKT0kbzbR3KicchynnkE1fM7Ye3WW0AU1ZuqSO5oH7Q71qcigmf5vDncMID/p3nMD
	 61vPu6dL1mbwh6+1G8lu/rKXTLqK7qdkK4SJHcRy9fcygrB5SNJWFT7amTIuEiyBzR
	 lDnn/1vitZVWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C25CCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176210519359.23402.18380347406938840799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 682f0a469a73c4cd3b103fa8daf802e4fe1bf9bea0ece23674ff37aa814d88ec
Date: Sun, 02 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762105193
