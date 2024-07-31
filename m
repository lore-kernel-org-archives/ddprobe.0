Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B4C2744E
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722465954; cv=none; b=Vuf4CMaNQ0sccrL2hKSN4ka+Q0a8Exb9gL37pN0jt0cQ/qmygXqSz97LuJ7MYxWWuBN8Xnhj0kS6Qy+E7OcKp7pmnB3vocgkIYRpJ/fYHXSloojwbe07PZAZKcfPiDRRHAJEUKfYeC+Eq57B/9LiEgnkcWDh9UtIpzsytYjvf5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722465954; c=relaxed/simple;
	bh=aWiHLKN1P3wMhseqpL8lmZltP7Uc6vWGmHMAHjt7GYE=;
	h=To:Subject:From:Message-Id:Date; b=ilvhDWzleYjo6jvMr1Wrz3ksPESXxjoXjdiiEK7I1AtxiJLxJBU/iR8l3gbuI4ITOkuU8fkOlU7yvT/iOXoOcgDKje9nVaOqs/ELWHK+8b6qisYhkdx77hGRBw5ATvaRLlh8SCJ82wMtZ71+28atqnokj30vF/mxPGQf0WHMZ0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VK2aykn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VK2aykn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D3FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722465953;
	bh=aWiHLKN1P3wMhseqpL8lmZltP7Uc6vWGmHMAHjt7GYE=;
	h=To:Subject:From:Date:From;
	b=VK2aykn+7bvnKsiYd99mnpJEJb0qMcBrcMVtDiFknwUp+OUfJsSlEShUMA7ZJLwUg
	 /kgPNDKtg8OulTar/waJyNEkOUfyhjvfAkr+yRoPu3BVmmAXmBazqnogVdZAl3mwml
	 q0FHaR8ZIBWIUVAilFlMRlKm2ssJ+62aTYkws2VQyAg5X0h+fIsSgDfszFHUYkGawX
	 04BPmP/Ju7kehlOjiplvvpP0EfnQLgibK+6QP5uC202MH3ju+jT35aGU/VfIm72ot5
	 Sw4DxidISzAYLAn+Hp12oYqqz4F0fUk6ECdmgMb4hdeuK+Ay+K7ELM+VZggC94yUnk
	 FsdDcNewWCnNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EB9C3DA7F
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172246595358.6301.10984670132382655201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e355e6ced8c9bca3360b3a9dcb5975c4765c27586565f09de74364aa3ea3920
Date: Wed, 31 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722465953
