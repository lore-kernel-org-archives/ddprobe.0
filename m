Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10AAC186E4F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722437754; cv=none; b=abOwDtiLVyIWCHZPC7w8REozzYqIIRaZpu1TD/8YxvskOnugz55ldHfl00fOc0STcskvef46Uj7aSI5WLIR0/wFju088UGjarCfpU4K5aKHjTQWKUOSH8r1Xr1D0mnCpTzxCogueLy2mLZYyMkWjozjZVJBj6Kwy2klG3X49h0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722437754; c=relaxed/simple;
	bh=Tq3uhCMb9erA6S8+qO6eVhAuGOk9MtOXccJhy73EPHY=;
	h=To:Subject:From:Message-Id:Date; b=e70THyotmDl+FIzzG4vrTbSl8HNEsnIKIstaQOFPsRFlqmXrLCX564IcPaAWJ+PkzaGJb4ehPBvhRt47rKbv8iFzRyWqUaBmHUTHRbB4CF7EGqLawiMf+kMIRDLHR11vFXWU/fnBoCI0k5CT/YqYlJ7SEyF5Vekp+FQex+2LaVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzo0eHJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzo0eHJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722437753;
	bh=Tq3uhCMb9erA6S8+qO6eVhAuGOk9MtOXccJhy73EPHY=;
	h=To:Subject:From:Date:From;
	b=hzo0eHJOUvqCjzOT+JD+eRJ/B2g+vWGklXAcEkJj52lN8XbA3l0xVzU0dpz+eroYc
	 m4wA0LG8nKWcYfXeUGJCeQisE0Q1GjUbxb+HS0dbMivsi1wN3RGnTx5P2/mvFHZUM2
	 ba42tHH7ww7+Acfwvic48YGneVfH0LMZs8CleLv8jU6duhbcFzB87rq7ilO6R8XB6r
	 qqjz8QegNH2bgNqhBD/Q9uY2fNxCfMe2oEIe033LSZc0fUUKJVmd3KgNpzefRpzLW/
	 6Qu1VZUA5LpsVPG1Vx50jQm5T55rugqhBNyNZqEYG+ztgElGfyYgDQ6duhmY4bZnLy
	 H9eCdL5xC6kaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9637FC3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243775360.25042.16453447322841357202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e1ce7c0b6f7fb3afbddbc9a8f1b43c05c3fc3774aed01cefafcde63ed9e9633
Date: Wed, 31 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722437753
