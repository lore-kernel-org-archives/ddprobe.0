Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F319AD70
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748491194; cv=none; b=p8w+xasOkek9hMj1MHgtwrmlO4Is8PBSwH96gNGC+LY7+BB7c4VnuR5cczG/HiHmyGZUtD7JDCm4UrevNphyy3q0hDUTB4S3lTMYGVCew+iCibk1qfCuiIvtPFco9Ng9bZQCe/Zo0iTIWQ18fD3Hbc5kyW6f8mbxycuiC/fHoDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748491194; c=relaxed/simple;
	bh=POZ1tf3vLRaDp8xlxWORqvVw5gWAzUjZr9a94QLu2Gg=;
	h=To:Subject:From:Message-Id:Date; b=hB1WGvYTpPuj39fVZlSOKiMPhqybekIGUa4S6ClRUyW4niZCuS1O47EdrvUnMo7gJlIql4JX6+OOUtTOTRMcxHh1ZQ9qaEpxbivb2r5pHBW2IENn7EX658ioWVLUZMda9ClylbkARYJU1YSDmacR5pTGLQwdhzs+fnHjo1iojp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4b4I3Di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4b4I3Di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E49C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748491193;
	bh=POZ1tf3vLRaDp8xlxWORqvVw5gWAzUjZr9a94QLu2Gg=;
	h=To:Subject:From:Date:From;
	b=S4b4I3Di/y9VHbLY84o+CbN9hotRW+P3awsG3oNRLnbeoLX2Vhq1rkl4aVf52twEA
	 5PoVdtOEkcPJzrRWRvbgQh8PBB390cil7XVW3NzckdUfOsmXgDYkps07eZjl/sL+4X
	 liwB4xIqM16qFkTpoTebPExtQ1fUJqdI+1V3U7Sce2q6jRDNOUPLQXaA+x06XoWLsL
	 SGcF6a3tmOioFstvFgfbcVr8Vn+K0wDZJ8rJ5emhWrM4pYBj4q5FqgZhNSLUU5YAcV
	 HkKRCPF6gRjydo+wTGhKAIitr9di79zLPJqaxJQKGgpxupkFpvz+I5PBQD5p6WM5/n
	 xUUa4crsxTfww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E73BC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174849119357.6726.9437546455787810596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057cc189e396c840fad9e8e880ff9e5431ea05078c3f6c6c72261d337eb8032c
Date: Thu, 29 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748491193
