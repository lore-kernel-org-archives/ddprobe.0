Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC49482FF
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753330194; cv=none; b=FJuit6ZaLcVhHJMsGXkdhutfwZWa0QpjmKkRwqlJKFY9n5RS9eaemqGDAmlbpPnbibeDaRo4ZSMljCRxEmWQYiw2uqFTenb2nDdys8n0UK47mM1KFWRVAbIjiStNH0I+wVmxj7hx9jA33QuvsSK6F1R+In4h9dwvxxm12J/KU2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753330194; c=relaxed/simple;
	bh=p4RJtB0ft1YIgEoZethdMxwhxCg1vrLjO6+wMtefZcE=;
	h=To:Subject:From:Message-Id:Date; b=TQdBRUuMAGpFeuVHGEfpzPnVyPNWJpb87oHbh1M8Ym0kjuuK/txu+2gnzTYf0pz6X+gFUcyNPPqBS5xYPVLMh93Vsrdu/Bn8XkQKpRAHmPsWtKGL17LxU/Aim89b3gCa12vkJxd+I6R/rYwo5Gj8kj9bZTtKOBBlFLRmn3hjcYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8yk6WFa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8yk6WFa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753330193;
	bh=p4RJtB0ft1YIgEoZethdMxwhxCg1vrLjO6+wMtefZcE=;
	h=To:Subject:From:Date:From;
	b=s8yk6WFa8nh0qkt+BhabCyvLuZxS0QylK8yOAlNOHIMK7KPDnaBEj9dUBegYVPAlK
	 sPVMFuOiVMjuVe0mrel6G/R6WU2VZUoMDpnpc4hfqG31OY0EQsc+VrufJ7XtxiotiI
	 TYcEBtA0C2IuCORYQG0LGNbbdCND0KhpjR/ezGXS5aOpwDYkCQytxXS2LNWU6vq4Rm
	 zfnjZHezEQ4tOlvgiaM0NQm6td4cMnDWI+wt5Zsy9YVLPn0gSsB513hi4/mcwqs9Q6
	 oU5ZHxfbJhM1U/hCLo+vV5ckGnTZp4ZgAQgUN6fN1LZDIfXPrN1GE1xJcAdhu1NLdv
	 ZVOFLWfqFpeqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CB1C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333019357.18334.7725235066398453391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4ca84bb701a52079067a1864656849cf708ee35c13af47320839cfc8c1b7480
Date: Thu, 24 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753330193
