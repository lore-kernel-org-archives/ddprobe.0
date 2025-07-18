Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D4E26AF3
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752797393; cv=none; b=F0GBHipHR8HBAjgbH6pIAuK12cDSS/s5wqF6sKSHgdet2CrP3aucOs3lNfrzYC0djKkx0zoyNVpdH8XSmwI/GhvJl93Ld9lPjGRu23iTfD90ls5mQa+5lIIYijGBQXy3InX5rziZg48BMR66uYBNAnc4tgrYj/KMECl/6yFrsTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752797393; c=relaxed/simple;
	bh=1qgKeGelDbIaD0HiSSdFzT56cBJVgMFPxaF5d3ZMt+4=;
	h=To:Subject:From:Message-Id:Date; b=dPJpIWj/BZPcvrx80ec4GUbCbYpmjcs8BCSKrMwLmx5507JU41aq43BJcy8hMqM3SQIq9VTdrA+Emq30rPAjfQ9Oo58MmqzHojZlgEEhB4dQ0/2c8KMAicvNpFF8TKFDcd2/byfLl9nAc1pbK/2k7R06UrWmyVx5Zxz9mKqSapQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geU5knvu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geU5knvu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752797393;
	bh=1qgKeGelDbIaD0HiSSdFzT56cBJVgMFPxaF5d3ZMt+4=;
	h=To:Subject:From:Date:From;
	b=geU5knvuZUSx1xerUDbeqFvJgvIGWjbSUvDsYhi9Cjw6BIhIhS7ZkYoI/ZJPA8tkf
	 vw78KhxKskhMy2h5A3fekWiKbyFb2g+1QUjka9FQY1TU4hhlm/AZusDG0JxZMOGT/2
	 jfIJ64J4BaJBByetP16nm8KR8US31P6DoAupG79mXesApQIF1VfnSIkLBdMolcDHy4
	 qfsxe/47hqAf3gxuxKRHf1QwAHOGBrl++DUD5O8LnnjEyJ5glm6LvqR4oZnBTr0NV8
	 lRz2rMCW+2dGqx2eVhl/3mjXS59vRg5eHbpXvj5PzGVJMlIKqezhxw4TJBdlmCPkxh
	 Wd5/q/6b5H1JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9135DC83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175279739358.4882.8530037217493572579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d1f54a7c4d037ef974684e06d3b6978db409bc67a6b7b1f6a5020a09d44898
Date: Fri, 18 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752797393
