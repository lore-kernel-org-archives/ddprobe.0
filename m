Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099031D9A54
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764968574; cv=none; b=gbb6/C5F7OOS7OHeDW6URujnZhj8k3ss93T8e3hcWuvY+Y6QLM4ejKEwxYPJ1C0cgVLRmKFVq0j8qvvkfgO6l6fWE2WbWVGxcoIRmW/FMsv2abKYNTPf+RzRPKXM6FtI+5JhnCF22GT0hHnBPiA+1kMJOV8F7Hzg8PiAF1MyyaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764968574; c=relaxed/simple;
	bh=960+H299lHnZX6TkyFfZvVYUsPBiJzCRg09mxzYVaM8=;
	h=To:Subject:From:Message-Id:Date; b=p4f7yAFw6qPAuYZRH21dmHbAnLnR7rab2CjjPiWVSVPKsJJMNtJJKB0zjcCAiYTJLQgDFKxM1SBE5r2PfIuB29u60tb7qhxyJJTQswockQ1EJDeRgTLOdajxjVxvUnjycYi8eM31wVxkvjTuQr8Qg+NwVTFpubCZxxRR1thkQ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7m2oYTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7m2oYTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A583CC116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764968573;
	bh=960+H299lHnZX6TkyFfZvVYUsPBiJzCRg09mxzYVaM8=;
	h=To:Subject:From:Date:From;
	b=n7m2oYTO8RcZDkqJXiZ+0w8UxH58gYrF8ZHop9Y4gE/CcpSWR+1S9F1LYJ2Ay6PKq
	 b7jnvoe8hi1w6rSNZEBW99qL8XB/SMpftMS/tdO9yW5aEeCSORQqnRQ5pJkPPYzfDa
	 1O328/ikT30spK/NcEONDli9mS4Lur87YudTidIWEVBFgG5W3m0NVsrfMx1Aaq76Lb
	 PPPrjkG2/fWb5a5lrLMlAVIpYujzj/4s4SMDpViRyO/ZUbiZhKQuNidRJU+XWWK9n/
	 EGMRamje/OI1qz2XyluXV/v8lM+MwqAjuy6KDVSmkMgcS2AM3aSDaMpPpiBTVZdxJj
	 IChsj1Rv5S2ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A5CD374A2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176496857360.1742.11766074006907541982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b64e9191494c62a2c1e5e5ee24f08e707313fc388f1220639c40669f5e9cf6
Date: Fri, 05 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764968573
