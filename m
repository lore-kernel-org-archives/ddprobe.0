Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1628A349B19
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765897434; cv=none; b=ZZ5R3S1aW1s5RejVDvh39XyQCemC/WZQjjrKYeRrPTyYXXO7dCA3tlAjSA8om9wIQxGW7VW8XQtTc/Y07SPeoaWoTe5mET5sMc3o8382bVvy+CAqHe0ocNoe0OL3BI/C1p3buQSfys7cMXF8n+xhT7AT0+OzIAPUVM94rhvYiiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765897434; c=relaxed/simple;
	bh=pUJs3W5UhS8zma/gAlWn94xi9JgT57DXEHz3ytBmnj8=;
	h=To:Subject:From:Message-Id:Date; b=fNB+y6wuBUvHZuPjOhoBcWV8RVj9lpQome766VUcy0MD80ymGW2AD8XqeS2QfYUah1fBIPVNnCbn+P+T2C8aJ7DQocimaDLCo6itKDCDi3MVNP9KEpIMki5PgUKFC2p5/hrIA86eU8xE3JUmohEYcSOxdqzeV/My+RcYd6IVl1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG1EALnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YG1EALnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45A4C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765897433;
	bh=pUJs3W5UhS8zma/gAlWn94xi9JgT57DXEHz3ytBmnj8=;
	h=To:Subject:From:Date:From;
	b=YG1EALndavwyg+1D4v+O6uqQ38SazT7kBnnm+m27s0Ci0QIklRlIOHwf4i1+RRF/r
	 rk/CH1l2fsElj/z4BI20ucalHfW4RD6WSUUPG2yPuhmi4KvJOcRTMFlKzxIFFVh9up
	 zznHrzPrZVG0af0OKeSGmDjRtOjhMgkzDVdWlQZW8y0CnqOXE1MSZrz5AL9292J39K
	 NvUwwCUbWKAe5Id4qOmQNUAdVZmzS/2fH3ivWXmxgsno8XiWye9V41D5fzMHLsrIPT
	 Jm50PDpNphqfCt+rCyzn8iw3K+vuk4p3IoayRR5J9HPdVdXAoAyqOCKj+0YxPWP5vM
	 r6Flx4uSCMR5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921E6D5E39D
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176589743359.25850.2169751405869274309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d06ad37fe6a040211e166ef849055b575ab1a62a31fda76c9de250f0db83ef
Date: Tue, 16 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765897433
