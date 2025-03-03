Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474F622D4ED
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741028334; cv=none; b=suvLKRj1clBtqZfHN51fTBncJ8w4EJ0K8JDpI9icxkLzih7B5OjVjvj/zwXNoVOQVmm74pDjvFfFFhQkjeAy9lAjr1UaCrT1+2HdT7SpwhPzdXG8gIWSHkVt3s98+B9D82WF5Uman0gcdao54WaZf8wZP5lWERzAqQO7q/ZjX04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741028334; c=relaxed/simple;
	bh=DVxHC5xzUQnSHGm8V7cNhlTOjqihSPURnzViAti4wY4=;
	h=To:Subject:From:Message-Id:Date; b=Bx+60RispNwKsU0IwKNA+nxiivoBwnQYBYNZJtSe48c7slUJ69uylbOa7C4sOmoqClF07CD+u0XXhnYdXxwZ292zEiI7UlOhEM6W7vGz/gsxUeIfeh4QcR3YNSDu8FXTxcuxbvwYElbnjZwD1ANcc1HetBL93jMXg9WbGNiEKAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRarh3+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRarh3+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD815C4CEE5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741028333;
	bh=DVxHC5xzUQnSHGm8V7cNhlTOjqihSPURnzViAti4wY4=;
	h=To:Subject:From:Date:From;
	b=cRarh3+MmLfhkdXAnm4X9aED9vzRWm/kvdNhnjFcIMv+KYJZTj6Q/GEiWFL9+XAjF
	 GoLCtNVc89Nzf6MOD1/qqif5g1aAGN9svjm53wuibPQgH6F/Rs6xWNkH2QmCOvjb/R
	 U1Bcvo1ZFLxQOeSphflFghPQc+d/6dMh5cCK9DkTdZamFtsRJ34JPEhWsLfRdl+Fht
	 DIJQ2hKI4pexqEHvB1hdkfjHwOUA09N7rV2v/VFuLCzbFUiXOoHL3DZw24v6IbH2Th
	 k66L0cdsl7ZBn/fP+uljWQSMUzwLnRtkDyoPzIIVSB/bbdeDaBhlqbX0WW4cR3Ikdo
	 EnAWms7IHHU7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99085C282D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 18:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174102833361.3759.15641665060428134824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be22b451c37273cd72f57d3205657cec14d1dd759495e54c7e385560d70bbe3a
Date: Mon, 03 Mar 2025 18:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741028333
