Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202342116F4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772733294; cv=none; b=nJLl7znAsheVOj3bbqB/Cv79aLdUFTCWhMjrK5yg6A93guU8YDtkk3yI4MdjO7IWOsfwHQETvxXcIjEChKO9bZytQD/q4iFRszj/xGxQ1q9AnYu2nyI8XFoDpLNDgF7U9jFs57j6rOCeNONoMaj5OizC4jQSazySQRc8J+pO94o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772733294; c=relaxed/simple;
	bh=2AsR2uohZNo48AxDcnkpRmXIaCIQhwv/uQD1ACkbWec=;
	h=To:Subject:From:Message-Id:Date; b=WumrosQzmNqnYrKlhLkgyjK0fwCnoUVu7+pSpx7eAOhYEN8vb89fvxXvLReacbAOcpDwCKGpy/QY7EKkn3ujYSwnj2Z0Kx0fVV57TV+ItuYFoX8XT+E5z30VEAqNZZ8RklxnJdOp/3ZKV74lKC/maFYElfCvobBSMVCMJtLqzuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtWMcrxd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtWMcrxd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51ACC116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772733293;
	bh=2AsR2uohZNo48AxDcnkpRmXIaCIQhwv/uQD1ACkbWec=;
	h=To:Subject:From:Date:From;
	b=TtWMcrxdqLaILhjzYwZgTKk/sSFUzsru4OZ3CaBcrc1FmfZQMWhIPrPbhZcIaqD5y
	 LHfgtLG+cwyMeof3H+WYJVY2n63xfPrL30osf2XP+qm+Bxsox7lyn9NcMWmGbhmVpc
	 0y9B7TJAGPyyuaENV/PPCM/OnwMA4mKmIqnZ/K957mEbsdvdtaRTZ8HnJ03yr/nqJD
	 oO/Iu0JM3KQe4A4FdYtoK88m2iXWf4HO2pti+whznigFslsZW2V1VkkWWhJX5euCqo
	 GH1mA4hIi5qjtJ3B6hqLHdS3ZnK0qjl83XgK39IFTUoTU60M3+Yi2tU59cV/busB7B
	 kb99+rF0/8Cnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B21F47CA4
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273329358.18471.7877751054674696117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8d951fa4c19bfaec2db0817daa375ade8324013f93863d2a35928a553b146c
Date: Thu, 05 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772733293
