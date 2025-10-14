Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA0D22ACF3
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760452194; cv=none; b=dOcq0sXAfj5IFTqsbXR7qlCyr9pI0734xQoqAWjojoWg0uEEgfcT4sorcnKGLkHsJozvUWMelFBmX80ouwFgpBtQwbMgrAPf1q0ijEpa9fMF3dgAoQTc13oNWt4W71SPNvdeZqrCJgWbsB65SUuYYghu6I+VOCgdbEhWAQQUHtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760452194; c=relaxed/simple;
	bh=fiXnYsbj46Qlz4tQ0MgYeGvDDP5BQVzhKr7OcwvpnNI=;
	h=To:Subject:From:Message-Id:Date; b=jf35xkbGxMSHUrWt5F7dpj2ELzfRlgZ8UMk6PZGQdX6IQTGFXuZILfj3qru5b+irs5wbn5mM2997Tsq1eDyuz/IsyAUoDspx9Obk0sLsWuj3JNuRO4OolrHAYum6TXO7J8nIxu3+jyaJ/6bFg2I21cM9t/okeKuMUMRgH69xVYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUtCMnd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUtCMnd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F0EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760452193;
	bh=fiXnYsbj46Qlz4tQ0MgYeGvDDP5BQVzhKr7OcwvpnNI=;
	h=To:Subject:From:Date:From;
	b=FUtCMnd4a/IV+hgM3CD3uD6HxlrTdF1sa9ykLq99Z+s/FqJLDZul41fN0XykXtz3O
	 TzElN2xV9L5o0F8bpQVvlNQ2E/rJ1MY4C6a9VkqWX11tW3NiHKWEw6cq9v6Ds+M3mE
	 aRHN8MhxnPxXYjVX3YGY3aUfsymDWuJvHQmz429yUBzDlYRpTpvGdE5D7dHSMBGLH1
	 wJcRxMtmVUNLL1ARJhorXqovKKu1ufqSfPT0++aSxlyQTXFKb7qRqwphqiZ4OptB77
	 Gu/fxAAB02hzf2bV6oHv0J8xhcSGlcjuhWJ1PkqrgRzhBvjcTX6eaLGgU0kn7j6Nz9
	 lGnRzh5ZbvzHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A4CCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045219358.11397.3073945070115682705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d67ff261555fcb25a01de8d5d3da3bd055ff330e546257426d541203933193
Date: Tue, 14 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760452193
