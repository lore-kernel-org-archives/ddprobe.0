Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C918B27FD5D
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751399393; cv=none; b=EGr6JDK6hqUxrtiKwRkwJaJcSpJzIVyGyAy/QDpGsO7JMwgiSOG44XtzOtthHOjQpsZER9oNqtXs2FgPFDhpbNY+6Ow++ztzVBjrQS2UiDqE1AxPvEZZ2g4ULQaS3s7k/GK9R+8tETS1ZtHjQaph7Amn7QTgy8ifFldHjZUr7UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751399393; c=relaxed/simple;
	bh=WmVx3xXWHTJiPPh/fZtT+F5w2seJOZoP28aFOfxOERI=;
	h=To:Subject:From:Message-Id:Date; b=sqsSdre3ZR1+5AkkI0ooPJV8OJAYT2hvLfEqoSh8tXqbiKHJudzWfycVNeRYUaEkT53EiahzMY0foJkLXNuPGYfo1NaRchZPtIPBgac0jnwdE4UVRGibkLLKgCsD/5uRoen0aFzDE1RV9yFP3FMQjDcPRHsfORIg0HpsU8IxHkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxMKOe95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxMKOe95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4EDC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751399393;
	bh=WmVx3xXWHTJiPPh/fZtT+F5w2seJOZoP28aFOfxOERI=;
	h=To:Subject:From:Date:From;
	b=uxMKOe95iuwp64az/eLh9jZgx7u/SvqRuYOa6yJkR7mCXy+ShWTlNbJy7FSkV2EkS
	 GLxIdNFm9Vp3blzYE6hZCnTll0/sM/PXtub+Oppv1/t4NZgm8IOC068W5C/Ak4/KnA
	 fGmp09Xqkw5vQLL5HGz4j8fajvBwPbDqRHYGUxoiabK3SHcv3f34tcD+BUYOJ37e9c
	 fuFZWIUNbzrdqlAQaf/7G8sqAybbVGws/6QtkjLk2eyefHnzerbIJ/+ieeSg5cJUDX
	 VG0XhImeFAEjXswuTHMJF8X6BXrPxLw295BeGjJUoMAQci5tQNPc1U1Jy+XSVXEttB
	 xD6xoWgCpV5Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE3C83038
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139939357.2129.2922936117061162676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06eb61d10576d855bd6f7f97067d4af5379fb38177500ce5cb1af81c14062e02
Date: Tue, 01 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751399393
