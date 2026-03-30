Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09BE4288D0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774871694; cv=none; b=DdfPnjI7MNlBiR4RW+syX3kM1lwz+Irh60VVVDYn1lli58Q2LG3IrBmjupjFmcIu0hvB7G0NdRAEfk59kZTqweqd7y0EwS8oq6pewD2c/UX3qK4khjhzRlTa0usSn2eeeraab94A/ykLvqxcq1XpFrWVXPBYot4bt+KmOtLWEVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774871694; c=relaxed/simple;
	bh=/r9AEU6NMXifXPEFwgtm8HaIGeIbIXcx5s/06BH9gDc=;
	h=To:Subject:From:Message-Id:Date; b=a7YNQlErV/IiKZo/QzukVkOTKpQ6MFNdbU6Ff4VnX1Sof8mtAAj7JNeBWWj0InJspJ2ZKCvsagWZnFIT5pNfNBfzHXYANut6Syli3+wbTsGSTKUj9wD0Do1pCB1uXh7LLeoFVVgT3dfvF8t5dOH5+4hZB8fi5sVecRcNzYDi1uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7izW3sn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7izW3sn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ECEC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774871693;
	bh=/r9AEU6NMXifXPEFwgtm8HaIGeIbIXcx5s/06BH9gDc=;
	h=To:Subject:From:Date:From;
	b=d7izW3snNdiLSWkg/C19I2anFObxpSruKjEhalNOHgKO2pN/UwJMEprLMCuug9wGu
	 eVr8C3p9eCCSpn5D412SQnCEjR5nVQHM/bn8GNN6QI15wzEYAnAT/qWAH2CZ7U5Ohz
	 Ce7gE10amrIpi9oA58Kve0Y3UY8Sri/qvw+DLQZkFTBFjSk8FnhRdvEKeKnLlm2fGa
	 Q8lL7DvcaJ2z1uxy3bsvXh+laZkOc/rSF99swUj93AKFiZrFrEo1D+hyibQPWZWzLO
	 766ynwOR3H30dMBJliQktVjGCzTZLpiZ8M7PpT8gKR9/c+M/ncKuVbZEbmxBvem8wn
	 ME952Jh+1QHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D310D14A4
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487169358.23176.9609854342029688930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eddc6af5a80509b909ad14206799b412751cd94dcd65eb816b114f28a5df88f
Date: Mon, 30 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774871693
