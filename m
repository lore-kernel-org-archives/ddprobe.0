Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3C2BE5A
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716737063; cv=none; b=QM44PzfNs6Qj646GjKK0j9yCBX7u5pv3B2vARPKg8sFQPKgR3BlB+AaVDrk8aNmswtVZSiuo6whIQA9kanOknJm6PljNPaolF/LujXDpv6k/7VEt1mhVBHWI79ogXWkswMkLcz7GemZ6QpZ3Xu16dlGStYzPg5NpntFNcsQBTtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716737063; c=relaxed/simple;
	bh=QSqTt3BE+HRPY/gwbmlCNrc1ZuXsw5S7VkU0HYJObXI=;
	h=To:Subject:From:Message-Id:Date; b=bJVM3KJCwBzxXJ1+4gxNdepvYll2lFv/C5JFtlewr1zg0bvrSOY2LRsgex8aAFO8BEXU6LlWLT+CF4L3VPuQrJINxjiIRwvdqtOZPzxY5/GBXYxSMcRumqPrzx0P0qSFspe2J9Fe0Ii6nUtSTj+edoBqnjnPBSgciwzfrSPga9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d3J7tc8p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d3J7tc8p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC94BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716737062;
	bh=QSqTt3BE+HRPY/gwbmlCNrc1ZuXsw5S7VkU0HYJObXI=;
	h=To:Subject:From:Date:From;
	b=d3J7tc8pjrehyV04DOZ1i6qDWo3dmTKqyJ7Tnr/UeYDOU93w1+fX3MHvnGgrpp1R/
	 Mn5+oq78PP5lM24Hb4VeaJwSydBTZQhQonZIbq8pIvpTibaHa+GI3Hj1mTQEH1LzOJ
	 8naMwtR703SwcjgC5O2z8lZz5iJ/e0jghxE5XVRQf8VH5U0wW/MG5SBm0K8rEBbDOb
	 FwbBT11kd5sOulYCQWpqk222o44GPZNgCGc+c+2+ITsSFSnDvdJwg1AqZPYRP5hU/k
	 LaOVDjy9IqSOD6Aaxz+Lih9jdrjuN0c+8DfGwkduGKrEpTNBpMKlX0e3EVCyd5Aysv
	 mrStCKB/H7Qwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B90C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171673706277.15479.11170898622718227750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef2ca2c226f1809d7408446e997f1e092972381a25d04eaa3daf55d5ee69cdce
Date: Sun, 26 May 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716737062
