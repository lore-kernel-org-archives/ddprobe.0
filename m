Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D418C32AABC
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768630433; cv=none; b=GK2xGb6ymBXOi+d90BRoSv9c8TfVKzAPlKpPRzjOKcR0bd2nsXEW1DNWq2b538iHuEFTf6J5bynwQQhUc0N/YqQ6P9e4Na2s4+JvHnNRJKk847bAFHCwWQ+tvF6dKZHDKiMWKsPw8EjZ1FVYc610r8X3f8q3UFTGR3huI1TpPjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768630433; c=relaxed/simple;
	bh=oFGhw4R07pgPbUUuNNKx8nh8/Ts3Sg5ekTTs3B9lnDA=;
	h=To:Subject:From:Message-Id:Date; b=LwMXKjjWKcgcDQguB7bJifNx5INeltXYZ3TMyX6NwyriX7nNYOCNliK1ZjU36xOYbwWVVqkzuVoOJWxKxdmZ592wV2VGXkL6M4NsRHmro/ARY/b+V7TwYFoqtiIviADqVwPXVeptqCDfBNEd+XmHfnwsV9urRAWnqR/O0FYcq8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwqdIVqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwqdIVqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6914C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768630433;
	bh=oFGhw4R07pgPbUUuNNKx8nh8/Ts3Sg5ekTTs3B9lnDA=;
	h=To:Subject:From:Date:From;
	b=YwqdIVqwZ7jAv/r5i5mxnA5x8snTgD2xSxP1zd0pPrXSOXvAviw3ErUPI28LqL1qJ
	 x/jg3+eCoQ6BHC8BCZ4s41SJKGQRHEnM5fuovaiGsuDb5hx3IZY+uipa/H7F6UaStx
	 aVP+Kz6oTg53Plzi4lVyxmlpG/UsYguDcXvcDzy9oZ3fVXTSGlhYUvAWtC1IImuGV0
	 /yByyn2vIjlLTwdB5jh4tzTeXA0Xy2jUkbASKUdBG4lvkN8wO4tuZ2Hr7OegFcCSb3
	 lJ3qYUCaw1lARVF4P1OnaZSomtj3r75Z0pWO7PNJD67CupjsupqG+ORk0xnARizciI
	 lKgFYLmL0yu6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95417C982E2
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176863043357.11421.12861916485130559008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1d58b55030bee0882e98c6b55943c0a2bb6e6bad3568b1183091e35a022efd7
Date: Sat, 17 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768630433
