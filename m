Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204C33033EC
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787512234; cv=none; b=RF7eba1ZBYJXrqx0jI9Gud3H/RiCKea+Ql8xDemMiWYyEJIN4cyreSOYYCiROJ7GFrycxZMitXSYcGAFwB3uOekUmolgezt7nmvIhZL4G3alfdO8w0jgRy6/kegIjAQrvzimbs6IDKRb2LFfFzJ4dtgC/JCUksFy0fKYPGYbqQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787512234; c=relaxed/simple;
	bh=2pw0SU9iUhArEXEFXvG7wYViLE8xdzaBLfWWnIAqWrw=;
	h=To:Subject:From:Message-Id:Date; b=rCb5NiAKK2gogjQV4ehky+5kclf18KXOEWb/aG2WqAfxfmDa/H0p9EJ8/LsIqMbK85IsfzFKG4wlQUnT1t+mGC+ZtfVJvpzshI6h+lbHxpeLX2xflpVnScXIKNmxeD2wYraR4aA73rFLt0xG2Tv7H/fotF/0vdpNUpb9lpgOi9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rs/5/gwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rs/5/gwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7DAC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787512233;
	bh=2pw0SU9iUhArEXEFXvG7wYViLE8xdzaBLfWWnIAqWrw=;
	h=To:Subject:From:Date:From;
	b=Rs/5/gwKPKceN5kCainMbqfOQCDI477A0kF3cXBj5SkMiFsEX9WW5Q3VOtIu2INhb
	 5yJOnXIOTrlKuMV4/7FrViS33Zflp8ukkdeaUCcc6/R7AgKjYZ6heZo/KhluP7pjaB
	 5QXoPsLeqd4MagOsXMq5u1ZHDZgVZk0+GJ34+0ponspVCa+AnFAWQ6zZqQ2gALbg1o
	 +kwL/fJWS9E1A4jl/p5QxrsZDrwcFhrd/Ec171xjMJiXtPdovFYWc/+Id4znymkOfy
	 MgDFkq5jRUedIEPnLpJKgqlFd7Xsk8EgzFcBn9gs6e8p5HE01l0loXAzz82KpynS1y
	 6A4SoqTOuH3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F47C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178751223368.15270.13356445710991289935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6961ad786d7498bcb8ede689d4800031247392ffa2d785510e9e050caa50b7f4
Date: Sun, 23 Aug 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787512233
