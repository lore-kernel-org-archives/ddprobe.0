Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F112580F3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787025034; cv=none; b=n+/BuQQ1KpM0RbaV6p8u+bAxaGchDAejH5Bkg44XfO/E0EQnkOL7d9WBNPCJsDC7vsksjJlTbO6STLBBDlFLTrqGnEQbr7WXgR1NuXn9nky6S5gw/+5nmndCWPA04rsGlTM3y7hb0UxU73CayVqfVmdy7CYUCff9ceJWm3ylcnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787025034; c=relaxed/simple;
	bh=1g95QJvNeUnYuCQ1bfcMFamfD2XNBrslLNr4E8uj/Zk=;
	h=To:Subject:From:Message-Id:Date; b=c95AMadHsoohfZaTdv+7/q7rsgoBpMNc1aBMbyAn2fe6AYWSEMO/1cnLpcmj6+pNfuJeVA+Hob9+vOucw/0MhJ40N6T4GEl2V4XTjlUIFA5BBFJK/o3379vz1l0LwghDfj/fbOBb6sAepUdi1fsiP4pts3gyJ0F5MlZHn6RAwuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndpJiDT3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndpJiDT3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD43C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787025033;
	bh=1g95QJvNeUnYuCQ1bfcMFamfD2XNBrslLNr4E8uj/Zk=;
	h=To:Subject:From:Date:From;
	b=ndpJiDT3PaCWQBRnFvWLTrzeH+SCz1ZpuKhaD3o6lp7rkI1kc5pWlKxsrXgmWp40M
	 2/6AHJgWHmczGSZzntN2N7ryla1fM5s081MNIsq18vk1PwhB3Z0MaSjad2+mx3aVMx
	 c8B6xQ0WxkTtyjj7fj/H6TbrP2P1Nu4z8Lb22k6o3njVEt6M7azKL293xZCSAu6LLR
	 80bfjDIBsNWfJNTcciBrkFtgSKFYWr94dolFVB3vfi4kQq6KytibXL+xXIkJRypMNC
	 CGuBhzlosc6uWkHAQqQ1Q39xz0w6OQLWpscCZRJWU5hb40I+zP0TIKajiUli9zz9kw
	 7a6U43ju3eSGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ECAC5DF74
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178702503368.22282.12336091984917143268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3800ea8f00964543b52c9dd0c30a3fb30f21a0509c116d46c38c7cea636b732
Date: Tue, 18 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787025033
