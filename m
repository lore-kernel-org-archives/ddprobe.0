Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282EE346A11
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770896694; cv=none; b=o4rQEK6qNnvrk+m2wCogR9qNXBXKnB7x8m1BBV2zyMwVkoAVljB9FCDOeO4QZLl7tUP4Gyt0YjinidLZa+WwaxtSMR0x955KaUzSTEdz2PMeWbsciARUs61OnrQa37sepUbtzWKCtrXQFHCINIPSrRaBK+fO3e+HqYmg6KxAvBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770896694; c=relaxed/simple;
	bh=6HUxdao+5e9M1aEyFYcXDpaJGfNmY2jHcz4PhNxcQNQ=;
	h=To:Subject:From:Message-Id:Date; b=lN6wb06JsIKXJvVReouf1b96+oGYeFEcYO80FuRbK2rXJ/M9w4ASAJV4E53qlMnJZXSfNb7sgYAgPvsttl1z0Bn4L5sn9Osa3mmhS75/Dvk1B7phB4W/W/HM5pPg5ZA54p/mKWsdfehmmZsQ7T6g+rm/frHXY+SU9tuIJeUGcB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URdg9lBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URdg9lBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A77C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770896693;
	bh=6HUxdao+5e9M1aEyFYcXDpaJGfNmY2jHcz4PhNxcQNQ=;
	h=To:Subject:From:Date:From;
	b=URdg9lBfADmrBuJn4kjKnzj8isA8Nh8Hs9pVv4eWqHKRT7FrZbaeLzLwRmvsdqBCL
	 fGjrBSLOMiGtE1KY2EZlguKJVxkLii9+cK8Ra6DYVqAYS64uKBv7Pd5g+QTLfOAV8l
	 FC2SWgLFIo7k64KosyVvdK1u9V0uIjPYF+OFK/l+/9XEG6l2a5pzbS7v9GptAzPA7F
	 XNohfHhiZoDpMFubSgmIzRBHM8F8+sf0K53CbK6+VQCxSxaCnYnSH0icIhFgpw66gH
	 /SnBE1e4N5nV99Hd/WuMuQ2jVtIco9KfDN0O1Aga21QwnuZKW+xWdLXEcs1xZgWUFX
	 5fFghk2PkvFYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3D2DEB4911
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177089669363.10078.8205768989811249522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499f8f24d6058f5b49f59983f5ead4800f0a456114940c0428e57bb501b6e834
Date: Thu, 12 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770896693
