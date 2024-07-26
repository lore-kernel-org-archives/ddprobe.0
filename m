Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AE28EF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721969754; cv=none; b=sV1FRBoLRVPYTYqPK8sMd1n3pZ9EjLgUOHvsdbBcrztWDZerf96OGB22jgDoxwM+IJvC3l8laYK2stRriVPqj+e1NN4xVBZ6S6VRiRt6k5PZ7/e9KLjN78vql3za5+ZflA+nlRrztN6bN8Vmxx589ym5aySP6KocPIkwlTHF3UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721969754; c=relaxed/simple;
	bh=8G+ltkcxNk+Vc3Au0GCAwxHQJvPEVi6xQedh6yC1ndg=;
	h=To:Subject:From:Message-Id:Date; b=UxQI5kPhX2aFSJVSLlzgl6XAcxvV6VzNjH73OqygTqmOhe0x0T/G/F2CW1uOGiFD/tvumLYeF1s+CVaca46RcN0I7McY4/b5TghMhp5b9yEo73XY+Si4GH6Zp7nkq2Po0PFJ+dW1chu7kW4/E1SQjxvP3RwfZaA00Tc5LNU+kQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND9vg2uR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND9vg2uR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2487C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721969753;
	bh=8G+ltkcxNk+Vc3Au0GCAwxHQJvPEVi6xQedh6yC1ndg=;
	h=To:Subject:From:Date:From;
	b=ND9vg2uRlyuRqWcr9oZ9+wxpOcpOvCF62VkUUc/bx7aj5Wmo2Lqzd9r23LB+GXn7z
	 bK4ILkUp+8jwKz7L23NpLr9hUVEGuzfgl+rclwJ6czm22XTJ3wuISflAl9ZcK/RB2B
	 VtjZa4IYV3662YiwBpA28XpoePYg8a6Gthuo28lsImBwZGYDvq+0r2w3eqObhEIeA3
	 ryrWtlkiBw4QDwrbvoUbCkbTaLJpMn1qi1/2bRFH+gOJZSisB0/BmMpc0zC27gxLO1
	 b/zwTiiYEKEQLISYrAS9okBCVdDTuQrdCRKDazPb39aLwTeUF4UDtbSm+NyRw8dwXV
	 k3mrTCYpn3WzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C038C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196975361.24255.17367200210083467483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edee6aaa9de440086f91e7a23e3bc82b05e5a2c9dfb8520b26a4201cd4edbbf
Date: Fri, 26 Jul 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721969753
