Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C76339390
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786656035; cv=none; b=NNDVTQnOOwi+StWRzir9ZgKLOMxrlQ8b8aXow3+Kt9gCTcQo2mMnVvlo254bYBOCS3/TJnJ9QQdzI2pdUItsNQFoyg2WZhOBhwZ4P5BagLv0OBTxceA4Tkl4AOTpQIW0tRcgtF/SnkHGqtrJHePdc5DoA+trIPEiTRLkCCuW0Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786656035; c=relaxed/simple;
	bh=oePl0mFmQdwvcscWc4UWoYWarTHbDyAOn26PpGcUce0=;
	h=To:Subject:From:Message-Id:Date; b=OI55/NI0KMs5+PSQWqf7UMtvRR1k2IysPAe1W3iPjQROsuMpwZ+Her+V79+tGQMPt8eJs0I2+FKb70Ibhs3uM7ASJiAj8153FcLip6//EDtRVQ4HEaMZCtbpNxPlB7nd8DsdY2a1BF7IWX2A+IP5OQiPucSi8tcaTuBU9pKuGXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hp6ENqJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hp6ENqJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0855C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786656033;
	bh=oePl0mFmQdwvcscWc4UWoYWarTHbDyAOn26PpGcUce0=;
	h=To:Subject:From:Date:From;
	b=hp6ENqJMHHVd6HZReaDBN9Y+H3OPfsI5vQgQGexUcniJ3z/uO63rxitt2eBsDkvGp
	 a0Z2h26xEhbRPTGzzTGu3x+/qJAip0i4pLLwmY+2qjpn7NBjUHf+dWxtHrKLIzlglv
	 W0cStyolXqGG+bOjHGY7HcgGy985Anthi34t+RItqV8gseAS5Qy1pEgqG5yIXAP6D9
	 aEy/3iq1c9JkbfruHsh6s9QZA4Ie1ydCJbsZZMFPpUV+jP5rkdZTUzEajWfHo6h1T2
	 vl0D0y+nzt+3y5c+nMdg25TX6FhLcA3I5UXHpZU2kIkY0VVfBKpxDKBRaXj2yfUUDl
	 BPeVK33KDrG8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB70CC5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178665603369.5891.14602366830586718083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272748b8d9a2c3cc9f5951914fbe607ece9700f5b62695f805846e8d0cd06a3b
Date: Thu, 13 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786656033
