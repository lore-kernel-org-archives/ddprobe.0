Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AAD71A3154
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749707394; cv=none; b=bg5C6EhUlqhvcfMWu2EQbmtowJTec7YJdBK9+bRRRWDRkCbIlwIeMMuEk04sQIWx78PnIrK0u1AYiZaV/VzuIDFgrpLY7G8zZKWKWRZ7qSRhyPWu2wi32rVauidhE2MGqT50tSvVCqS774Qu9DYs7lxwtJHhBAKsEmehuDhW72w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749707394; c=relaxed/simple;
	bh=QSVVrJigxSCWypsmz01cX2aGaoYvdy+a5unzbqSt2GM=;
	h=To:Subject:From:Message-Id:Date; b=TudRUvH1tPTIGn+xcXHQDrzK+rQ4V9bi89eQ0sNZxsmpw2r318hQZEn1sILJ5RP84jr9RFYeDAiTWV86hSSoT10PVr9rcbjLSWgdM+JCniAHd9Brd2K1PfeVADCdQjxvj9ZbCimVlHH6QBGefShlHxhe3D/R0C4vC65EQX6OEFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuminGVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuminGVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A87C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749707393;
	bh=QSVVrJigxSCWypsmz01cX2aGaoYvdy+a5unzbqSt2GM=;
	h=To:Subject:From:Date:From;
	b=RuminGVqWhIvkCQMYFdBz/vuNVCunnTO9suoKYo8+81774BnBVj1FAMK8WLUOeHKr
	 dLhm/Rx2zXrX8E6EURVkhwl7NB+L52WivLZwqjJfVD5mq51DgBfy8LRWjA2h/GhmMO
	 eNPF7NBo6roDBv7OuZx/iRrhDulCHRxKh+QxKsQgN50CBdMcYg1DybhybDSVLlXUag
	 dMvcSk5htb1pEd8slY2iIf4u0QIG0pXUcIRv6E1nO5cyQ0Ycp1fMUXXhgrh2ohNOV3
	 g9QaeSehzMbNFqKMRpYaeUpZjGnyvB75rSwg6md2XZXHJv/6vggcf0HUkwej7QYM1c
	 wazXheCQIqRgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90566C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970739358.11093.17711647394624830045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d367f7713b408a860a841ccd4c024c86d282cb03cd0a8eb393a4a4bb0ecd9ea
Date: Thu, 12 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749707393
