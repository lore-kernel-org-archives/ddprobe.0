Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8A77261A
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759981194; cv=none; b=LcWzm6dYgZXdagZGCYAqMMJjs7oPTX9DsOVJrYn8SkFZY1th904ZrtzOA+9nbpAOg2SFf0b5RKm4960+g71QUoG12ReUx6Qy9ZrjQ4peyUoaTUaWngrB7xAgYaduXXMLOCnI2JydXdz/KqIM8xNFkQHq/0z9+IGJ3HqFvA6DxoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759981194; c=relaxed/simple;
	bh=ALUHuBOrZEvWngDFHmZB5RSHgBNHmLymnRR6TDdxiv8=;
	h=To:Subject:From:Message-Id:Date; b=SP8lnnIhkEkmxdqDAyO0Q+G3o3pMJ/kDPM30EFGf5B8i/8PrBhTanSwaOmyxgGv/dGBZYxVARj14NFF+fALf4wATtf1twVapGLzTUhVbcH0jGOVBfZFdvXXxaGy7jT/3OfEKYv427Dx9aO4aHuA4Ssm76dLoLxvhR9VRDmOEmrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIipCHGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIipCHGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759981193;
	bh=ALUHuBOrZEvWngDFHmZB5RSHgBNHmLymnRR6TDdxiv8=;
	h=To:Subject:From:Date:From;
	b=uIipCHGYSszvuI+YPZErjjOZ+tVZJDCzhRZiOOJ6NJfRVu3L/Dv3iCvwt+Ly95fr9
	 dGrGub9cPV/oJb+0eW8BCFxuK0ywtTuMCsuyoU9STfSnnZ/HoV7H9I+cGDOx6S6CeM
	 nli0IHkadgBcP++cXnswjw6SVobdWGbZ0paYs8f2WlVTEYm4nmoCAaSE1AH24V+2eN
	 h9O2pDCPOAdWq3mvEb691NweJMJrJegzjnI/DofeVtHmwFccwFB0IHh/sNX0Ndqx1V
	 GFl9efCwd/bN7YjLnQfKZy5feUHKuTCkCCNfxWx+u5ARavibzpvAz8vsWz/t6RIdXW
	 VYc2JCihu49PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93FCCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998119358.11764.483066113705812678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccf925cd45e00b1612d2f6a867ca5d743394cf3442696d8d18945af8415d19c
Date: Thu, 09 Oct 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759981193
