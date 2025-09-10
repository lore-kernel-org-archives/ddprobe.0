Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCD22DBF5B
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757545794; cv=none; b=fZuargYU2eA6ffA7KAVr54OY9vXs8bbYXmnPxTVKXf1CTScjCih1YTAJw09f9p/QEBnhCPVoSbbfEpRu76zStbvycgah88Fo0kQAMUQb+l8IirH27DWQlWw5iJ6Dc0qDlr3C2Rr/upCyGj9ulE9/zP3DprRqxyZKYNcXZfVkB6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757545794; c=relaxed/simple;
	bh=Qj6wjTTbuneyg7hy/1MWC4cEVPI7fHFdY4ztszadVRE=;
	h=To:Subject:From:Message-Id:Date; b=dczOhil3HACVEJ+okyKGj3eOygj9qyjm3pD0Wc25uiIJM3Szfukx+AI8PfX4N1qXOz9yEbh08h71Di97DgakW6T2+KI7RUl5WzoqWaEAoB+FZOq99PDQ7gYwv9hGLrVXoxffo3qWpTIftCIMiE+x2AtNMbDFSETcaMNuu93REKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfptykyE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfptykyE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214AC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757545793;
	bh=Qj6wjTTbuneyg7hy/1MWC4cEVPI7fHFdY4ztszadVRE=;
	h=To:Subject:From:Date:From;
	b=DfptykyEO2mprBeLP4tUcOMZDK8rY3v8QKYDtm3MRCVTU1Y/kTKnx2R18JmnNOrzQ
	 bss3vlWzU8y1RY3ZzSNYGlO9cdwIOx41KVn9Z1tcxH0B4ckag6zzL/J+a/3l5f5+KV
	 0uNZwXUsmyQhPWwPxnIHkFPhFOGa5OOFQddHob7WA/GydBwhW+Mm/Tg4uAOgZrXQme
	 SPi2DGSzwaLrf4I79akPXapQd6c+5ZWLgSnCZIn14F+xra9Hm7wbfym6/OEhMd+2qT
	 hX2vcklrnI5xXdEDlDCk01VM4vLlsApJXD3wmMUbhVNjIZVrQ/Dny0C0jt8BXcFeH7
	 xPfuAopIL6anQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F525CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175754579357.21838.15774550933659643016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca899623326365b5fdb75587740061c27ca093ed9d4a189e495aac17ac3b29d5
Date: Wed, 10 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757545793
