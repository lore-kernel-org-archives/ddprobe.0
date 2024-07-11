Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412E55A0F4
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720675643; cv=none; b=Jbgn+q2oosUIYW1ZHAEvSh/+BqVZtykEi//TrLVh4Vpi3o4Su78qY2PVaE7LtyQisFnFcJSuRtOzVcce6DHRgU0N4MZ0NIAgOoGmjP4L5Xa0YAeI7oo2ODiePjpBxMGvdDnbeBH1WZ95f3N4FeawShByvgYJucnYkXPQFh7OLL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720675643; c=relaxed/simple;
	bh=Oa+Aa2GG5zZ7BtqQ5f3qSVwqlPV93SDx5SvH5VGJozM=;
	h=To:Subject:From:Message-Id:Date; b=AtAdSvlKCIWBh9DBvGaRblJAM7a7FgO2mb7cL9d7qdAMmQw7ziNnFMg75Sfl1f50qUg2V5brMHLnSOmBnXbOn0itQM7eubYM0DX3jMcNBgtUs/3DG+lHKaFUxu63Fyn2FJA7yMBvH9n8qnLBRjRfVzYQ8ZxkvTcFyGN8EUhErAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eb8GJLcR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eb8GJLcR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AECC32782
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720675642;
	bh=Oa+Aa2GG5zZ7BtqQ5f3qSVwqlPV93SDx5SvH5VGJozM=;
	h=To:Subject:From:Date:From;
	b=Eb8GJLcRdAhZxTJ1o/5gwEfqeQJPRXO5HkjHFpJymTClvCYj4L7Y4EGYpc2YufYQp
	 L8HE3kD10H/hVSPKXiUekCQEJvWASOQMrX69K/OSoxvFVILsx0th06EYVJnSs1JeyF
	 oq5qVdYfrvUlYvk8m1wkO9OFCu1rppSeRH+GFVPmb4Gsa0+sacmYxHfY41SbDT0qTC
	 QkHezqGAaS45UIEGrdppJapcWItJ3MtAnu3/aQzVV0WHRSBP21g7+/YDvjNI1n6xcx
	 /m88yM7JYa/dc16uf/MxbYHI9XFPDbAmFCgGTTXZgXBK3K+8dQJmZKd+dl65WCZkdd
	 w18w+5gu3rUEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC117C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 05:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067564276.11137.4221003306756125957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f823082a31072789ccdb2f856d43517ed992c770a2bd750d566347fdd384e843
Date: Thu, 11 Jul 2024 05:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720675642
