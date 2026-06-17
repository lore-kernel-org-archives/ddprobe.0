Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510302F6560
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781667394; cv=none; b=NpHgEr+9UjceC7l3Lv2SIJRrJo4Jnt34u7EDNYNfX/bh1RwAIosNR9znDkFfCpR1rca7hvmlQm04aySL638ksAD4mRxbd47Fn0N/WEBd2EFt75gPn8o3KoSpljnDgcLimRt1+QKcGAP9W7Mgit8cNQX1QICcgQ3t1I2FfUZqGZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781667394; c=relaxed/simple;
	bh=28JQxJctMmfO288eKdPCFoMQ4/oHwop5Uag1iBBFWZk=;
	h=To:Subject:From:Message-Id:Date; b=uhuXL9PjCJm98f7mh7Fr6UyhdjhxGkhl/hfig+0fNTARZydkV5FW1QwkkxsriTaxOn9KKMfPJ5VQkEew0l+xWIPNstebis04rSQxC8EJ4jJvRMf9AEagEBtNwulZluZ175FR53j6ZnaM6zwT/q8G/EROuG/4PHMHD+s71mcgZMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RbjWw7cC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RbjWw7cC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D94A8C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781667393;
	bh=28JQxJctMmfO288eKdPCFoMQ4/oHwop5Uag1iBBFWZk=;
	h=To:Subject:From:Date:From;
	b=RbjWw7cCTr9xNgW/OcfZZL1JuJgPW2oAJK/ZDf3uGq4zx4EfYtYUXMxfAU0KO2HyC
	 eTLBdc4Xpv2cqCRNvhz9f2DYIyjqy7rANCzqZv0aIImKara/zJzc4dOlDS3QUk/eoy
	 erI9roFWlhgCKDBajz1UWTJMyjXhJ4+SjVFf6+zxDvQ03fqnP+4zvsjfvWQdnG4Svd
	 r4Dfy1YenMw6sD17WTyjMiOvSauBQZumVgwQ3+DDRyE97yqbVeMdwP/zL0KV21DzYY
	 z+lIhFmK1+hgzFAxtjlVbZirmimBQ9yNJ2oLi5LFpkvdLJkzgLNV/ugprYw8Nx2unM
	 unqZ+KOjLpBPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B788CCD98E1
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178166739373.31244.237298438570494728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 096b437ae39649c22d1c9dbd9c04597fd36d4f3b28ca32d079801f60e9c844e8
Date: Wed, 17 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781667393
