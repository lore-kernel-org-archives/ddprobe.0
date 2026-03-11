Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A8223ABB9
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773266094; cv=none; b=cSSCRkREgo0a4Iw4d5yApiWZnCQxA1s04tRh8+8WkvAjhwjC4UfYYrfDsh6MTfWpZEGsz/aFBJCfPFOacauGJ2UT7KVD7+4wROmPJpPHwI++RFOVfw4dJARBExP+fit2HNivGlxy/EDOY2lyVGffalqbzcV5OMO2pimoGSWfuCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773266094; c=relaxed/simple;
	bh=IdGSKp8CKsf3Y9IDObVS0ItJf/WdFHnT0JRmuRulryc=;
	h=To:Subject:From:Message-Id:Date; b=IRzSjC6Dvm0Gbb7YjcFfLQbfCKvx6oOO6YAB+aPuqfONWEeAbAuSbbh6TpUH4E7gVmFt/+tpphhPiyZY0PA7y7srD3uk/e9nXtVR9xueTrKr1d3arHmvPufnrVcbV/3QgQ8mneYHoNr+d6b4DzS4aHMIhu/0TTZKAqztpUw0fPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2h40fkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2h40fkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2447C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773266093;
	bh=IdGSKp8CKsf3Y9IDObVS0ItJf/WdFHnT0JRmuRulryc=;
	h=To:Subject:From:Date:From;
	b=P2h40fkzed4CTlGVA+nD+CJ5SO/ODVjGARHoLoaGX4k5nseDmxpRw/xD41mWuAy70
	 XNRLtL4k8RjbrpAR1n9/fMqeQvNd32Uo+38TPsfpEn2zktTjetjWs8yElihdISo3BD
	 4dstdPUVcAkTiyD1juMf0oVw6qHgp5EucjxNgVfFwBeLuyCTf77o6qFk9IG534ePEO
	 MwTligEqsiB8eRGz/Yv3tJvVFoaP0vQYOWodAW2ijpijsNsJVb7xmT6VIZej/+rydA
	 kqh4tqFXPnpCmV+1IufXTtx4vIEg2UHHiz4AV0HZnZzFWcI5UdsmHiH1RK+bB7dNNz
	 dAtCIRwysbEmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB3A103E2E6
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177326609362.13595.6381801477722721042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0544e256010ce1680aa9be044c7d1f94d70ff86e78238e07d4f9e45031f972fc
Date: Wed, 11 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773266093
