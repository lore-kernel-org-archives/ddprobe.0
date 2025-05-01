Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230AA20EB
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746058794; cv=none; b=GyjJT4qYXvjHvx7wuEBV33kAuP/xPhJL74WtXoj5VgE8Nhgp2oTdkR5af36PJ07/HhFvIlXwRx8XVoGJZmn5o/bEOs1XIx/qTiF4PqdYEZq4eHBgK0m3yqWo4BgRMukLnDglT8+ZbE3frGmtJo5jJ0n4BStuqQighzATz4v+pYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746058794; c=relaxed/simple;
	bh=4VTehDaa90yRiXhNukaeMrfjyIgiYwhWQh3gOCPTTlk=;
	h=To:Subject:From:Message-Id:Date; b=p4YF9LDbBU4HCZs+t8/R++PCbYOnJeQEcEYA0cossjomF/dtxXMDeq3qrYWQs5Petlpyx0DhsJBnjjLbfGGgCMCSDsW0Bz/IVK4aE7IG9/QqOvQQNK8JXQKH8aOgrX0/x5J5ZtoeWxtUuBk2HJWQZxs71+HbmLRPsCfQPMS3ASU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7ZwNFuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7ZwNFuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F58CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746058793;
	bh=4VTehDaa90yRiXhNukaeMrfjyIgiYwhWQh3gOCPTTlk=;
	h=To:Subject:From:Date:From;
	b=r7ZwNFuzmwv20+jZFdDZyAdUJ6gwUjIj5i3waajx4EAXex0tqy2f8algJNaySRLLD
	 f96BCBzC9jnroIuLpaukB6Sbdrc1vK8tpt1KjbDxHPYdwo2OuJqhfxde/+WW6FWIzB
	 Rpue+u/pTsNt1HxK/cXvwKtuyU7YYzgyIhbP9jLZQC0Hxsmgc4OzmbZljN3heeTBo5
	 2B5y/AxUNJHTazhWthb9k+wflAkpACmT03xQ6vZmkS1hhj0o+df7mJ7pGqh+dfJRNS
	 AVqKg6/2+E++nlgPkxKmZylKP+3XL6dot4DGnEDqkOirwHfSoYLJskxzshNQqsaaOG
	 lcYNA00B1v2qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B2C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605879357.11425.15715087223490014075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec587192cff78038802dcc9e54b43e205b875af8300e3caa212103b34016d6b
Date: Thu, 01 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746058793
