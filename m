Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 435DB2DA777
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751032794; cv=none; b=dowFWNB/FgJ3NnC4S2sfEyudhSBIhM7r4tnMaC9+09qsyg1dDlCEYxgzg55O3Ve//Z3EvuL7cJZrG5qsILjjdVHfg0GQipK8vhHF7PDSNCsPR0gMa0R3NQRvypDCCqCAXls/7ZLg+M0KqYPRA4Q35UQCfLe7kwPlh2kwT6U2uwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751032794; c=relaxed/simple;
	bh=NkkzK3j3Disq3ZBJgG+xU5oD1vrEBKxlwOK56DooUZ0=;
	h=To:Subject:From:Message-Id:Date; b=jf7AzZZagibLIYTAf6Gw07MV/hO9nnx54T8zrGa3z6/e7pczUbbx5qJObrtG/GdEfo1NIoktmFXsAQOVq4BwEQpVWHs+pQaZRlTgHAXMeJk327KkqCIyyFXcneqsL7Aes4MiSPFHzaEbnZQNDHXnpf9SUaVaL0cVNbGb+P3lSEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AFKfpcuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AFKfpcuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75D3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751032793;
	bh=NkkzK3j3Disq3ZBJgG+xU5oD1vrEBKxlwOK56DooUZ0=;
	h=To:Subject:From:Date:From;
	b=AFKfpcuMq/dcO9ggsd7Qu5BEeb4q7zQZl7zfihPAcZtGVTKCoLvsCFWx9R0aP5gvo
	 P+Bv9aJFjEgxeOAWx5LSCli6QkalB/fWnbZBUilW0vYTZm7NEbdc/CVmwfgSRPNFaZ
	 CKj5ZXr6WScVmgzDFrpkKqNP0o0hich229heYnbK0GXQnRbryPLpycYr/PcKZiIGZN
	 I8DfYXs4mp+QfqG9TMPq2MWjii5NF8uBI3KnLXIz9XJGES6LjP6OU2UXDCCHL+g6Qa
	 eyE35uP9QUyyT+RvEWp9Tmp4Euh3KWLYfCgnhqtV4RFq63UM+mkmhrO2rnFz5TIsuq
	 3vW7hcE6ixhsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A24DDC7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175103279365.12368.13635708101940016739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736e9f3dc423345b52d025ac48ff4c1c8d23e62930537e5aa99e677e44b2fd9f
Date: Fri, 27 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751032793
