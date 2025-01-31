Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6173915575D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738365354; cv=none; b=ItfOyaOGRU3atYMriHa+1CylvmvRAkKxd2Bxp0oDoHB1+X35pUxS2wMnnUct7rVRIWNwM2dsrb01ZVQ9qoQgHMoM8QcVJDaBMJer8V/sTSuNIinQU/OSDKSPj/5XctIwdFKIsmtRPbcPN2E5+UodRK/JUqPuTcciWAANjToOJOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738365354; c=relaxed/simple;
	bh=j/ERg0S/NzaUFHFhwDBfZ9JJXZbV/524YvkrxmZHVPE=;
	h=To:Subject:From:Message-Id:Date; b=CGcaVm6btiAcZ/Qx5SsG0m9UmfRM62F0CVbw7z2mKcCT2RuXCCQRyV2O6v+U92/y6NGz06GmQeHPsNQLrTbVsWXhGhc3J5vfyqTUa6zcZETdQwbcKicXEnaCKl/QN9CQTWxPx3S156KtNtdmNwv33iMiw5jMrMhgmuOBKCZzSt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKZxQYjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKZxQYjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE32C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738365353;
	bh=j/ERg0S/NzaUFHFhwDBfZ9JJXZbV/524YvkrxmZHVPE=;
	h=To:Subject:From:Date:From;
	b=jKZxQYjJU3Nu+B/EoKxBVUoTy/s56kqOnBJ9gvzxaHpQtqnjJ7wsF6L/OBGZLRGaB
	 zoD0hgY7GvVHJ0xfPNDFDAXx5VNXnvvhaOXfoQQKycJj6ox59GC8fFDgJhXBRKUri4
	 8qNzfYzDBTv4kZHNrFhvjk0ItzSLlo/w1l/xvdcNdhHIGid5uKmQ1tCEOeRjPQb7Cr
	 TBFQII5/5JUVckG7xbAxamu6LSaGFJGnoqFvcyFHUxqoAM+Z/v2pwMXFZXQNXsHGxX
	 1mfDqTz/Wd+S3THK0FuClNjGNXGIMeuBdJxHozAcY9EbflgTwtTjsYLRqKWI1hI/ey
	 lp9l6cBiOeOaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A19C7C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173836535363.10871.2495518868252775776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f58b8f6a3150d3205d605ce6e36193617d4cc633066d8ece963e75fd7c7de065
Date: Fri, 31 Jan 2025 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738365353
