Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E213A2AE6A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758479394; cv=none; b=FxQ1EVr/inyLFcQoGt49cfrOQ/GQPLD1rNgbYX9Cg1wmI4Dd1cOJ193T36ujvrg/9W3PlfKrlMv3t0CM+MgMlMpWTtSSd0EODxSqwFVf+X8QbBvkDuIuZ9mDtxfbQbiYrp72MnCcP2GH98qb+L0vBWtdGOltg/OccKj1qEtVYnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758479394; c=relaxed/simple;
	bh=trCANjqYurBIniLxrVFInzuvID5nsSMAN7c8td2V+j0=;
	h=To:Subject:From:Message-Id:Date; b=nHQsYcQ++zxRA2LUf52icrx/gNtC6O4XSOlp4NT1R5DxQzWwQckfYCFqmzSdirltDC4teXn69KWVoFemKYPthhUGFOpF/4SHWNYs2jZaqslbFGOUfyzxrI7EoHNi+FnSJe9vKpFi0Oaw53eV0HCv5IUz1VL3eEwxjrN0Rpp/0kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+K5+cRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+K5+cRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36D4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758479393;
	bh=trCANjqYurBIniLxrVFInzuvID5nsSMAN7c8td2V+j0=;
	h=To:Subject:From:Date:From;
	b=L+K5+cRQ5S73QpoR69O/6PdxEPgrWpA+ykNdPaPkC9m7n5Fc81KVDe7hNGCjFJI5E
	 /DP86hZxPmTQbUL0oFKLgOmZ/BS0MHq8rMPn3QcqjiTMuFrfck9/xMSu+OTxiR0gXY
	 qiFlOXsHiOm7gEzOENftKPAqwn6FTfsFeG8EUh8Ih2L0DIvcqWwGpwBV8lLZjfxu9T
	 3EMmafBTkSI+k3jv+h9iWczFPOC7GcorKprNoLM6dPz4nmMoK5VyLTICuJbXfkKKOI
	 0CF50S1T9ToPLicQIJGn7g472jzfA8Sb8fJXBrtMPQYiKJM10oZqk3LwB6L32dfNST
	 GHJwfSx2kMlEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F35ECAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847939357.23450.5047173073787259137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6f0016d6f03532d07f6c8db631a4d3ccbbfb3af38f4ae13b3c5baa558e5764
Date: Sun, 21 Sep 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758479393
