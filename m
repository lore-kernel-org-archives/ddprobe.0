Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4456824292D
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741369134; cv=none; b=IdSakh+fxQPMhQyFwC+jY1kFnjmSg//X3uICic10XBfKGfaTH2hpkXyBiQ9mOOhg7NInNWjxMPBmImpUjkTkTSQGs4kekc6MvDDdeOv2QNb1rrY2WYNSIxPxFNaWUW2QpI4uIFFiuE2BWSR9DwEm6M9KeaAP/G23nuU/WYKpT2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741369134; c=relaxed/simple;
	bh=HxNF+wSwmfsGsCYBrtQm1aoNZi/3J3P8+bqHLt/6Pso=;
	h=To:Subject:From:Message-Id:Date; b=GdGTdx3GRZi8guU6Q35QHNxCS2nnbkifCKjYYb6uJCRTnS/f3syXEThxGN7A3rvY14+AC+XnfxbDrt6yZF+7IMBiLYzNGm/KW7ON9FB7Hp6fy2ZO7CiKg/iVDLKr3nFo83Y1qqqfJSLcUcg5th+79BSGglizYIiLKDYpquGq1WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1Vl6fj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1Vl6fj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB1B2C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741369133;
	bh=HxNF+wSwmfsGsCYBrtQm1aoNZi/3J3P8+bqHLt/6Pso=;
	h=To:Subject:From:Date:From;
	b=c1Vl6fj1JWsBaGHHtAUBBLLpx9tL0eoRuwwM5BjdKnKtmCJW8LKbWs7jygF92q4bc
	 7GJr1f6SNOTpW6sSaAKjwQ70kpLxu85x0fgE+JbQLe/OrrTqF8FEsKeCctyx+kg7+w
	 PtP58+re+/4fWeQy9IFDdUEHvgRMY7JS33R7xw90fmzKZVj631Hzi/Ue/vo2E3ws2O
	 QtNGT9UQlIFyV0/8n+uTZMBCpbBNXZlMk6Se5Ya3pN4X0edo3/cf+7U4MB8xn9S5xk
	 uM8SdcnYtWlCpyOlvH6h38uIG1H4YvJuEFabn7pP5442WNzm1Mp9GewWokq9Fp1JGv
	 ZnRfNzH6s5cAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE5C28B23
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136913361.17588.15549473571190862506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7a544696adf2cb2a919b8e91ad45409d58bb7191d406f0fea50ad1a34252aa6
Date: Fri, 07 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741369133
