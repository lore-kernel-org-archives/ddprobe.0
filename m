Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A628060D
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716369803; cv=none; b=m+GkA+bfTtt8V42vEopzLfAnutk5wLooOXwGKMdAU4UJrQ9KKzJrnTj5IVUYR7AnYdwOpVAnDH6pRmIZifYQlVeJnUK4F8qcR3izWsYI7OwOPCU3ES3i9cB2/j54vw0vINq7qN/N2T+8sYBCqK6Xn7dF++EEWYOVoWlkve6TUC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716369803; c=relaxed/simple;
	bh=UBaUALmzoTqa9QbKyiJcfnnXQZZsXg4IKWW4Y83mHCE=;
	h=To:Subject:From:Message-Id:Date; b=hrZIFfwDx3iBtpFp7HS7SKmzRchc/mYhB1hRXwbD2a1Wei3DfYZzTlbayzOHAKaDBE2DYDPxrjeWkVvH68Pj9lHq/nHLk7bAafU4jnYySgE2oEYLX3OxbUuBJN78jFNq4mwTSkVz/1VEn3Dz1T+SJgbFcBq/dNEMgA4BfcZ2IPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtKbXiNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtKbXiNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9674C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716369802;
	bh=UBaUALmzoTqa9QbKyiJcfnnXQZZsXg4IKWW4Y83mHCE=;
	h=To:Subject:From:Date:From;
	b=VtKbXiNjoICx8k7Z5ZnicRYo/U9OCt1OHwJgWmQXBNEhR6GI5bjdZsRzC369rEJw4
	 AABtSzuRT3LzICr5AzM9zxL/t2V3WTfVZ098djAEyoxhEleDUdcJShL2Q/YRlZlnzf
	 5y0Xy4HWN3yJnytlpPlg9RVZ3xqdasnvuvN8RmmXnM2vS/OAwwGn0xY6xSbYNBI0eb
	 Lz+TCNAB218iswvEPPWPEtjPFw26OtUmHcFf00tVqR/Or0Og32cMpBzRhDPwK3/z8k
	 ZhgIUVfAcQzPlrIE163FJuExmGuJgcztH6utFQlLDhdLspbwrK0lJ6hlMnjnFywrgf
	 233Gy27ns6XcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2370C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 09:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171636980278.21179.7242447734410522347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b485147a8ba442807899fac81ccee869287463f034c63c23b69e1d5aad976e
Date: Wed, 22 May 2024 09:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716369802
