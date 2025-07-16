Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF0914F98
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752625194; cv=none; b=Fx1qtbbxuVvwecA10wuqeYelUZDHjj0+ti3j3rYv6U6BQi3mAjL2fqQ4THC2mNV5yVcNNTm1yVyYJVfuBvz7ObHjrRbqAwXaE4W9CtBtwYhFNqXGBXmRetGKHhcOxkz4NVg1gSeQDU/pqJry5E97jELX/rvFPCZKWbq8u3qJ3DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752625194; c=relaxed/simple;
	bh=fjvjviap5KYhERvDzd7rLlNbRWuzQUT8E+pGS9ohnk0=;
	h=To:Subject:From:Message-Id:Date; b=dSYvA8BCt6UU9s7cUoK32oYwmoHnxZi/C5w/D0PUBo8otaHAMdcAr1y+pZypFceH4mBA9iwDLv8p+a9EwGkAmqaJKItjuAvw4jyl3mnYRQ870mWt75Ur/D1uzrPzgi4V0gHrOFxqkpiW9FHpgHgBRdZpNgBvCNIrmye8rH3j7co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiXLG+K8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiXLG+K8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AC7C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752625193;
	bh=fjvjviap5KYhERvDzd7rLlNbRWuzQUT8E+pGS9ohnk0=;
	h=To:Subject:From:Date:From;
	b=qiXLG+K8F2qPYCMI6Y5mVMxuUnnfAX8o06bZtxlOgxhvb1JcCJO7zNDTUJKx2mzYq
	 cJtZkfk+vavPFfzy3dMfSfvi7aCJoORIzPpJJjUo2MwT/K4JPdKTbAha3Ru1KBoOMc
	 x5V14ex75qbAIq+z5hA1rDXObkxm7Ul/BL7n3aOVInyJKU5Ay6sSW6vr3vSdUChkxH
	 pJCXA23eyLvv/zAyRfU8Rn677b+6eCxkfSsWaYhHmjkQabRi9CYFXb16FUfwBMex4D
	 ISfoQtufZubdDO9tuu7gE4cpiM4EM1VO5mAKk8dJOLHXqmFHhTNO8vvNPYdGhnAfQA
	 D8ztsHLwCKYcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BAFC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262519358.26900.14681036252373362160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581315a61a99875675cb55e8f58231a31de809a98162cb7c03757d64b8a78482
Date: Wed, 16 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752625193
