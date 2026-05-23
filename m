Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337221A239A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779509554; cv=none; b=epBKVB8CDGosctOxasuE55/1zuk0+8+q9oXP+uNOCpZtFiucCkFeo5+35IuOQgBEfLMkTG1uTuIOeON9A/ga3VOV7xOl0bcRZLywL5EinYfR3KqMpO8t42UE72eLyfH2fyG5J/UQ4eFVQ3AaqrPt6pW0MFTEu4EfxLOzfw9aAAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779509554; c=relaxed/simple;
	bh=YXejHdp9rt9a51/fbuariO2TZzu6YS9VDZ6wgpyTliw=;
	h=To:Subject:From:Message-Id:Date; b=oKwIyQ1yXbCD9Bh4CxuNb/SZGk62WyemVLMNkYPoW0R/t3znCHlczxestMBkwKaecVAobHzFVzImgkCErn/2y6a0QMO3QGliGidBc66i6Tt0gJPpjXkzIWfq9WQTZ+aMwfZAwvurE9XxvBkK5xQk/R/0nPkE2IlJgc/etaLqrME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhbpZMW5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhbpZMW5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C67C6C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779509553;
	bh=YXejHdp9rt9a51/fbuariO2TZzu6YS9VDZ6wgpyTliw=;
	h=To:Subject:From:Date:From;
	b=qhbpZMW5ZXTnc3xTKGSVi1hGz4rn3VfTJ+HQ3pF9niUmzerf/Nbl5KfuJzgm4MlHZ
	 s5GzIAbE2HRhheDEGU71w70brFnemTV8RupB2/1E++7CEPXzxrdKMNW9G/QyLcB4of
	 +D1VrXAqOODmybQ9ismz0H4I0SoW9i1FmK/9onUcKycrpI0VwJsWVnli4dFkl1baP9
	 PddW6MXqlO9YTKiE8bwnumZKYTV5EoQQnPQYUbHfaTM2j03zb0zAx+ICRGpxqgtt89
	 pG5eibFD2hTCY8Fdzc+zclJtleNakIM9DknocO53YVypKmDE9TYzkh2u07XJOtblIQ
	 DoVeAqZuZsELQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAE1CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950955368.3316.14516026541394722464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723519f74b85afdf3b53b3a887dfcee58d74693f3faa328748c920a15dae9df2
Date: Sat, 23 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779509553
