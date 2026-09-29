Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCFD3B05A2
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790680834; cv=none; b=UOgqSxHSh88/43SjerqMqMWvVK1+7Prz72KzYxIRuQ0kSjUreaTK0lKtwxpv32/K3C2SzfMLoKAvLtAs0W/HZ1z9aOe9h2zov0qzOvceRWpvdO37NMz9KI4E8zS4qP2uGu0nV0AJC//4lWOM1YjHuoVpUjDBeklInmYkVeoetAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790680834; c=relaxed/simple;
	bh=rGBF/F3KGuBVng0giEh5oD78tiwpHuqStv5rC5RljKo=;
	h=To:Subject:From:Message-Id:Date; b=Pn+ey8wUEENw8nzi3xcsS/SXiRYwev/2JCEtJ9qao9t7KZSqofQbBnQ3LEd6BPd9ZLNBzvXghoYxToEAoI0UPC9v2puSJms6bG2vPytgs/yOoHA2f230Wy0tkamPU8vqrXx+/TwKEvA7jBXuyh5FPd0zGqdEGc1rgkDPeBzJx3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ra2QTgQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ra2QTgQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB58DC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790680833;
	bh=rGBF/F3KGuBVng0giEh5oD78tiwpHuqStv5rC5RljKo=;
	h=To:Subject:From:Date:From;
	b=Ra2QTgQGS6WP90WELw5LCZTwyiDnpC6zspD6RhOMBu+dkfSMob/Srj3DLKm4tgwVO
	 XXrQO35OPwD791kzWK0F3CTe/8yFTegCZCPuLyzbNYuXbEbKCWO5HdG+rsccTeVYwa
	 MxFavf1FMve/lMmXqCJYsDQDRlqrg5JGLPRssElSQHc02k3tHpX8nuw9so+b/LZmFB
	 A+6gkluCaRnpK38VYB4gfTDWlTcBLGnwGSOvsC1TnoS9mX86KkKCTTNyo3IZfmkeHe
	 sMF9P2RPB6ZoRrLMBoDz3KcXKdDJUn6CMS8SrHepiBiFwcqfYXJGsMpQRIVd5YJu89
	 oemA0YwAqxxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9340CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179068083368.23596.10011027995515039625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fa74efddfa98f8b46fc649a215a7df07f6d4e56473c4dd33e7cdf6519c6d00
Date: Tue, 29 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790680833
