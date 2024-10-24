Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC6422B64E
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729803354; cv=none; b=fw/SvdYDAaEg78qJO9ed3DC9S3VpxIUMYf74SIyqZwWKQvwTbOUinP02U1bqhu7EyXzTIiU4kcDyu/8pbRNqVHIc9Pclkmzgr9KHgVLZQnZkWw8/Dn0oLoZkQ8PqTTRLBU6/jzvVp+Bpslqz8f/Hvtp4nUw0j+IJs4smXCGAsyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729803354; c=relaxed/simple;
	bh=BoL3QrWoBn4udACrMRynZy81Y5zFX01Aov6FxaRK3vo=;
	h=To:Subject:From:Message-Id:Date; b=Fat5pP/6IVOyqI26dA79NDhsKDu9r/afBQw6At5ClB5b22vbU4fSPmI5IwNx4th+jbcxRfB/ZBnxcc1mW8swniH9rldVnOdQ2UYg2SIC1yHS19xiZNb1JOdL6P4eyusPZVGCrBP3ejwMFd0/YBhp3dzglTeeLU8G2RoS6otOClY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXrNVUVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXrNVUVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEDC4CEC7
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729803353;
	bh=BoL3QrWoBn4udACrMRynZy81Y5zFX01Aov6FxaRK3vo=;
	h=To:Subject:From:Date:From;
	b=JXrNVUVsIzpIGSo0gPyWnQ17CGyNDTqavkMr9qqEbQLeCg2g21OlNwxv3GuPUW977
	 9JclDyPNgkrX+4TyULr+EFl7kBeP/vTBdsj8hF/D5lsOFD66LZfKTI3GK353xZXWjh
	 /zKFJDzfSnykFeFVAom8fLSoc/p6MG7GPLDI8a50eXUw7wCGaNhbDrrsvFwuzilWBa
	 l+EB2xUK5uImDyo4Hzdc/wULq50EbyuIj/pbhrSNirDXphTVcD35up4jq1dpzOwcS2
	 y4J9A/Io5QX1qwqWrUV6wK8ej7rVE+D7ElK7gnhwzjS7XXSzyblfmL2CXnpatwuIIG
	 Fr6FXJzwfFmXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93717D10374
	for <ddprobe@lists.linux.dev>; Thu, 24 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172980335359.13202.7354112295657498217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64f999c22d15197bc11056ef8af0e31195b37d10346f7c556c8fcf9ae1d6417c
Date: Thu, 24 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729803353
