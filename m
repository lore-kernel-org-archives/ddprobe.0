Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1765634DCE6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775160334; cv=none; b=J6kfIdO1ctZM/7ZbBYxuFf+mhx3ZvRv1x/D8f/jh3ujW0dCE/v1qcKDq+q5+YgjXipQPB8sv8xnNpIg9MUENnIX55zqDImf6YU64AvpyrWWabQisfNi6rNdnm2q+IERML2Mk6ZreCl5dYC+gJ5hn9WfJmfzzSkYhEB7njV/nKcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775160334; c=relaxed/simple;
	bh=/qSQrkt/00WThKtO3cdo6cB4DI4Pf79ee4CUiCt8+7I=;
	h=To:Subject:From:Message-Id:Date; b=d0x9NuFO3E6f7zzk1w4q7JXCrtJqqhMsnbIlqow2CQwLMKGcwGJ1/H5E7qQ9g5rPhXeh5Jr68W4vP+wGeCyRc6U1g5Qwfiq7OkM/BBP5dw7+05jlqgbiCH4vb1Y9RJHPrKiVCmkszP9685Rbux13cjGpc5xLp7X5rPsyfaE5Hus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lR4bXsxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lR4bXsxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE734C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775160333;
	bh=/qSQrkt/00WThKtO3cdo6cB4DI4Pf79ee4CUiCt8+7I=;
	h=To:Subject:From:Date:From;
	b=lR4bXsxiF7TalhDpyA/sdGgplw5Mrg98hjGqmKhtxVgbS/nX/dNSCUdzj/u5b/OlM
	 pMGZOsMs1Dd3CVX8QAP4u/7vkjXDdWuIlXcbxl8bJ1Ushc0b1I8XOXBto77bo6+Xp8
	 Oq7nVsjBkYKG5omVKJd2i97XPJ+YTTmX5dk5cGeQGY7FXLnqqKGKHeiMttU/dXcL3E
	 cGf9zpmx1Y2b0CB3m3lo0lGGlc+qkwC/gAOhaOMk1THuzaCNUnPJG5i/SHKCQPmjp5
	 0biXYswY3eww2hCvjiUwE9Y2T0Brm0HfdzCwFOkZ/J8zTI6JrlJ5lrE5qtakKcRQWY
	 zKC/p2j26G84g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BED6AB05
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 20:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177516033369.29195.17458172967465130384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3d8c9f4191af4496011bc3b28c2d9e0860b691baaa1a2b48698ac02d30dac4
Date: Thu, 02 Apr 2026 20:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775160333
