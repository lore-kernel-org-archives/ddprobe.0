Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491A0155A25
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720527983; cv=none; b=fjzJ+ys+irrLhPKgP59xNjdeAPPuf41Gr4o3yxbcAuTIEY5Ju81nIRchq0z+OjqO2SZrQVimXvWf5ebrp7CYZ9j3s1Etp7M5VevWK36f/H2KH9p9jtN7fYlKPaxnrZkXZDA3dDMglFV24Df4Sebe2JSdT2IfKBv9ugCqFxICJJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720527983; c=relaxed/simple;
	bh=C5taClvyXrowmJn2BM6JlWVoEs+X54s/Wopbfdjqts0=;
	h=To:Subject:From:Message-Id:Date; b=rWA7LHgnKgUbwPT+O99oov+KWsNAlP0XTLVpjVHU/WcebztY6bKZWdqalIatkBUC1sRgt3xNxRfKnrPVkPSxCVIXTNMLXd40DOwroAs1fUx+fGhNOVvSSEBE/YBKOe2QxqLEwj5cyDykl+BRY8Lndu24uy3GlECnSDdTlpLKAEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2hbiv6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2hbiv6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E42C4AF0B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720527982;
	bh=C5taClvyXrowmJn2BM6JlWVoEs+X54s/Wopbfdjqts0=;
	h=To:Subject:From:Date:From;
	b=u2hbiv6Kv9BPT22vXT/2fttS7072DFnGZiH780bMbf/v35eW10lOPDrRBFIqDWwjU
	 gJ/kdXaprYixwIbUmJJt97SZV/b3qiLZE6vVHOA1rqmK+O5nsC3uFgKNIPtRM1lH/o
	 ipVVrIr4cJvdVJmj4atdPR0LoxVikB4WgcgkfUpzN1MRcLxJbnaHlLkzYldFyiyPbE
	 SD8vwUSjvZVE3fSMfZM8dZIGhCUO/K09Zi+/V8MQr5AJm4UJHSbOTYNetphynLwQx+
	 YiFWH9AOr2gsgmRumn6wqdjrt1oD+8suvcKWae9Zs1TjmVYUB4LbsBdHGKcli1Byzn
	 fmsK3cGuDnbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01F1C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 12:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052798277.5531.16093888518160311115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bdcfde7e07449cb4401c327d06063d27b42a6d4b2e592dc5a7b33385cdb719
Date: Tue, 09 Jul 2024 12:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720527982
