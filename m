Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E332EAB71
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750255795; cv=none; b=FbV6Uz81BaYxHc6e36SmIUCo/x9bHQV3uJDThm/cfxXTurx8GSKA3Qsj2uofoZUdgwdARBRY3hF5OfYSRUHU2xg+kXGDFygWUvdNSsN/SLv7JFxQQhC1CrlFW3z+E6fbueaKxVavg31s+WIqNmcMrDZFGrDs6arSKTWA0nmhWAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750255795; c=relaxed/simple;
	bh=hZgQNcLaySapmMbbFRgllj8cz67sPi4B166v+f5wNh8=;
	h=To:Subject:From:Message-Id:Date; b=ThbHptRpDGjuO9h8K9VN74q4GrRvdR+K3heRfwJ8ZVzcMx3E4o3tTJoRR+j9UCwkD+SNIHEVBPcyCnMhuthq8X4z6ma4mIT0TZt7OK2I9tHnZB5Kyv1tPP1D0PfRgBvXvUSNnBZSw+m8IF183AclZdLJ9Gt4cOrJXGa8X8Eoqv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IK199ms3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IK199ms3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4548C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750255793;
	bh=hZgQNcLaySapmMbbFRgllj8cz67sPi4B166v+f5wNh8=;
	h=To:Subject:From:Date:From;
	b=IK199ms3adpcfAvj6eGOyQdZaQMosfbwnks6H1zbD4sb+hn8X1dYfundAsyrifmfZ
	 KjqPRr9q5+wQjDQc7yTxL6JJY3YFZntqudKeEvuTes3NRHgTT+zvGySLrVABGwBS21
	 MW2guMU8N4NgRooUrQoEKtfBsngMwgUCymeRi7s8Cb/Je48WqVbom/C0nipheAMmhA
	 pOf4pOT1CPQMW97G6gqyuF1SmTD99tJQxV8vbRbZrPRIIohuUvNVoF7PteeF+ijd1U
	 dlX9KwuTbgWkp5h1wzGlJa0fZXri89sZm+UiCnYSqx1kUWLq7dxthnppoQ55CFVYeF
	 CBcSNuhSLztoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C10C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025579358.20035.15942389950027354611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 286d92a7384b36b4c2bb5c1a50bb3981eec21b5d15ad31734f6e06a436a4f785
Date: Wed, 18 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750255793
