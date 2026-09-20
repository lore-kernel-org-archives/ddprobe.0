Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C8535CB6F
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789923634; cv=none; b=OrQp3rRfjJBT7G2C6f3Yu339JEtn9nahf8V8oU3pv4Aq9wjpdgMJLEdG2KzNWIEzH649l/7oAZhc4crqSUkBQO1/9REzveOadwOXEgx3DmAIoVslr/SADwd3qq1mP/yzRlmfNqjjURw8Jc0ktQYHYEBIvnAC6foBV9Mzo2itkY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789923634; c=relaxed/simple;
	bh=Z4RqAUML8PxpG6w5e9m+jei/JjrvqUVT0RM8iIsQcdQ=;
	h=To:Subject:From:Message-Id:Date; b=kSgNblTyXOoJi0F8eMTx6A/SUA5w0mU5xrbDJY/aHtTIU7w7smZyDeFBF/zxN//vodC2GQXIzEvYAcKVT26RGa+IwFungy7sBpd/O9qFbtlMWZnsChz46RINrOdtCaRYOJTUPdkBsOAOAycfpRrDArhDhZOOX+Sgxu8xEb61UFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVHXqwBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVHXqwBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91C2C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789923633;
	bh=Z4RqAUML8PxpG6w5e9m+jei/JjrvqUVT0RM8iIsQcdQ=;
	h=To:Subject:From:Date:From;
	b=EVHXqwBVS5b55YUkoca7PR8ZYOMTGjkOMzCCzJsWhX17emgd9GQntGLheL0qtyOpP
	 EKc6P9l1NYJHPoslbtUEfSMtH+v2ibupOcLOZL2LI8FN2hgG7WGPalMUJTH1xb+ch3
	 qCBN8SPbTci+T8KqnePxkquLCqQ5UozZdwJRlOIvtXmNcdj9wjA7Tb4MA1IBpiOkYf
	 KvGSB72g1inUUZNYJymuPYcxPvFRvd8Wg/wv41/g//ImE8Z3gWsjV+zZjNvea+j9dR
	 Rwb+RVVEBwHyIHskdfOfaoSBOdZW4zWNT4n+vzZFigtYMkwuIpY2KcisZrnwqJmRau
	 146y7qvfXzhYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDA7C982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992363368.20486.14777074771752443448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c689249d89da847eb7725a53cce864c1c8d7f0ae574032cd60953f53f01e4f5
Date: Sun, 20 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789923633
