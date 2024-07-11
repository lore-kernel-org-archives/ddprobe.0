Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4575215B0F0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720693643; cv=none; b=BxFvmdwGURQzs047uGWnxza/M9KhSEskXQJTANu3BWPcmPzIaRpLH5+j2gpWK9TnzVy2bORta+rl1EDYayjtevtpZvZlaOrmIulBSQY3fsqYxgQMhWkafs2SY1r/L2wL9BvG6TkW4h3jJBq18c603X8htQIoVidlns4f2hG13Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720693643; c=relaxed/simple;
	bh=QVVQAs+lt6MOfdgHE7QlplAc0p0FyQVQTV+kvWzg4DM=;
	h=To:Subject:From:Message-Id:Date; b=mPYb8s1cr4S8wTOI0tVYN8SIwjOPJeqeFLFI5wp146dVTmGubvCjpJxYS0JzgSl/3jUZ5ftj9iYFgh07DVjbSE8o5mRPQFzCzqeyVegI8ROD2z5BXYllUZ8V2NnWcMG0jx7Xc06jpQNBrB7MtDhxOj8wzyF2pS8QatLjY+/lsTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYVJUeTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYVJUeTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9725C4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720693642;
	bh=QVVQAs+lt6MOfdgHE7QlplAc0p0FyQVQTV+kvWzg4DM=;
	h=To:Subject:From:Date:From;
	b=FYVJUeTq2jXfxyqC8yNWummzcysOwyhBssMzl4BuSQ1a3MrAgAGScY+74vCSA8LhT
	 fcMqg7XxtsAGhXocFUsL/P1OcqTV7PsBmxwtBvAPscMt6nzTilgmYdRnaRhtn6k/8a
	 McMXTlrtvQGvvGmlKfb1W0yTnxNB+4/xzaHatGlFdm6r8tum4oPvwIs2t4NhzWsPHF
	 34br/JdDBKZWWMNxUxcO/HuyMcWR95wrfWA9m2y+KthbhxdYJH7clIfXrkwc3iHDlZ
	 ao6DKv3Ei/1+Htkg8sm4Y+pesXr1x+L+Gl4GwAoBiMTqn7KpfELUDjrASFQ9X2ZLfX
	 XBxD+bFxmiGOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CB0C3DA41
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 10:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069364279.9559.17625365463779071674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3687b63b1aeb590c7b49693e28ae9db0d380905fd5ce99e870c021c5e10168dc
Date: Thu, 11 Jul 2024 10:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720693642
