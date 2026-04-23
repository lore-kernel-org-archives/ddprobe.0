Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1844E3E714A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776943054; cv=none; b=H8N3iMRdfVvW1WYo7QpOE6uvri8tMTw6dBAwq2pJc/5ZS6o216ObtaXhjv9YeRNmTiPllFad01x44a/pAlR2WnMcQZi+9CiF5Ki1i1wLctoiTk8f4YNjrAjbiCHQj5dsQ5oU+hgRFkPjxMOm2yVW5h6/pReK5g1ird3YjbwQvCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776943054; c=relaxed/simple;
	bh=qvDZuHCW7XJ45UhmhpcIkzcNR/chZlCF4oecjvXsCoc=;
	h=To:Subject:From:Message-Id:Date; b=RUw1UPMR3XgSMGhyHg4hkFpREHzNzIBlilYF/QaG1eJfWqxm8MtSjKaHYyzR9VdtO4G4P+eoYwYa2kZg9pBdx6P3tKkCXxM73QUx4HUxilbVV35Ij7E8bTg4fJwWxTUi/Zle3fcLO75HIWHFWYoL/3cSpBa+FNh3yBmvkY6zRcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tB7fR6GE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tB7fR6GE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9285C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776943053;
	bh=qvDZuHCW7XJ45UhmhpcIkzcNR/chZlCF4oecjvXsCoc=;
	h=To:Subject:From:Date:From;
	b=tB7fR6GETIT+NXsA3VAjuBxtXQW3YuuFM+zwB1XXfcYUHjsa6tEl+abrMUBG0EE4D
	 mdnvXCLyvmrUpAARKkUzYxT7dquA7AIEdcd0FDzSolgQ9wgvRHFxi7VfsAMaXzZSBD
	 NgZvF30VGpDS7MfQyr4SHbz98DFPERqrxWIvkIm7LzGUlB3hX3dJUpjXqsMWNop2ae
	 FXeXPL2aJB0Ry6d8E3dVDqhMr4Nk9l+NNJUEpt0xYWwp5glAnPU+vpx5qbFirX78Mc
	 nP+Ndkt9XDyba7ESYx/wFdiFPhRs+tQO6f44QZypGbqZcfEVKHfkw71fpOHbSkuELi
	 hNutyPlQT4wXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F7F99375
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694305368.2517.11093485428997410558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b6807f9cb0eff2ed646f2094a0e8d0e34435dd9098a8f79dc50491bd2326d9
Date: Thu, 23 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776943053
