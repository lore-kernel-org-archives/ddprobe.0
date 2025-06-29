Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B3A43147
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751185795; cv=none; b=SMROCFLdKn3WKQGgeqgpRY5qSxVuTRhLJnp3ApgNr9j3/LYh0XTtOMSN5L/+U3QBnbcaht/inaA6rvszv6/EfHRyZgbvlZhyvNnRdAgrN0fI0hnBTyQdz3aOfqWgunH4lzyrkkioibvFBricmPhnFLlIxEO1fBDUR1AzSbxMPJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751185795; c=relaxed/simple;
	bh=kwE9ZELyTMLeLgpwDovx4/k6UzT2XYuuU/u1o8jn+MY=;
	h=To:Subject:From:Message-Id:Date; b=cVZ8uTJvCo71RlKmIb3xoTA0OM1XALIiWGT7qrhV6e9hnD0c2SKnvI2GzgaDi2Ge3Jtu7UlOqrEZC4dlHJ5SMCI6A1uEUCOZnFP0LdyeYRvHOnpG4QmhI0wKyM4qS8zMuzbWVseY1SsgixNf5rxddQjlXT6XdNAgtBkww4MPwos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+A7v52r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+A7v52r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F9BC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751185793;
	bh=kwE9ZELyTMLeLgpwDovx4/k6UzT2XYuuU/u1o8jn+MY=;
	h=To:Subject:From:Date:From;
	b=e+A7v52rUbg2uvjGNYCdr6huLGMXZ6ypkZhvGdSurpX2BCNdre9NHT7fqEIgBQ2xg
	 JH0QwfafsbGjKJhhdditrT1N36l/GE8xmx5QEJnrsyVSk05qglnZo92kR6GboZaHSS
	 uwt+vr4FwZsFONA3+iTsJPiNgxAJ4KC/Ql66Di9JF/Q0Be72+vlZBztvGVxKKfE6r3
	 1NMdvlRwKWSYQ5uzZcIIBOvFBr+vlNUgrwtSUZB1bxW4vbmuIRxxVd4NezwuHQzNyt
	 bmz+e6OLHHw3PfQw8qmf9mDQD0qDr5XtUr+b6Dghdqhju+7pn+f7iaXXrSqrHEwNdz
	 2AS77Cqw69RTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A3DC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118579357.9403.10169700626724703805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1573ee774de8ec5a052c51d747b29c847145e25f175a4b971fc61d34689209c0
Date: Sun, 29 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751185793
