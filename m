Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D27827CCF2
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752065394; cv=none; b=r0TDqKnx0gD9/eTioqJep+73/IhepqN/e03USK9ujomdILsHjx4g8SSJGeI3zCx6vGk7x8WJlpumry5tTopiC9qGzDn8ptMwn01NbH0LcNdjzEkmMwep7ClmVDcgw2Mvx/OIcBYCCL0HjSEtEUlU9mjQluf69zccEhJ24LYb6aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752065394; c=relaxed/simple;
	bh=FDZEgwHOLPh9Vb0X6nocegEcfdpxYU4t98dBRRwJnks=;
	h=To:Subject:From:Message-Id:Date; b=ZcDk/SxBQCg/UFqZPgU7CDA1cMZb+Xye5ndZsOIWU4cdOpellOjed7GGJmZAQ4gdNyi1qer1JZMrpxyy9MQQ5bQynOFFJkMlsRc7wAqarQQxPAv258ZDbeKse6yAhEBDHWz7Ameh1M2v9zKoM8dFB28De1+g6wk8XEVZhUX0dAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=brj2pay0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="brj2pay0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E161C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752065393;
	bh=FDZEgwHOLPh9Vb0X6nocegEcfdpxYU4t98dBRRwJnks=;
	h=To:Subject:From:Date:From;
	b=brj2pay0CdLeGznuVmYEBO9ifeGjeHLSS0ZWoSYt55k2efrzheX0hlxxMrpQCcKTG
	 SD28Zcc7GpcNntA6JxjcPTTpXRNXJRp+I07AuDPPjtN7pXwuNvuTelY9N+dCIW9auy
	 I0dBW4tVF4tJX8Jb3MTVEkMDHkAEcb5RFHuIriowC03O/c3S5RgtAQSISIuWLZb/AG
	 JyDOF6klASkRgg8s9DfUYLAF0/gR/GNQES0W1hTULu8yXTHl91E3FvrK08wii0Fv8z
	 YTo1nHemG3CUI4Bw9vqrsA3eP9D/bnkbMrRDASZ5FGeX/Ed8l35j/LP1s2GGLC4IgM
	 /WWj4IJzKx9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2F9C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206539357.7298.7615949895524351524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad24cd0dffbe509abb4771f3e295ed5c9b3a6fbe0e927dd100262c3917459e5b
Date: Wed, 09 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752065393
