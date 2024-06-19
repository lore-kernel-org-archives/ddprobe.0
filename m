Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5C3770F3
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718783963; cv=none; b=KScWG4GF9dnOJ9xmmWOgFX1NkLf+e3GMW8a/c9n9X0l+dxHmKnNdaSxfSj8gg3oT9+xnM/VumRI82ngH8DlTAFnuPkuoVMka0rzQ9E20ULcimze1eRXl6OJHkq6RMVddBRasTcrxXpodXkJdJQFD64C1fPX/o4o5kGhHqbCJiuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718783963; c=relaxed/simple;
	bh=97sHIst2TB9Iib7hLSz4ofkg94Feo/nifFFfsw09xd8=;
	h=To:Subject:From:Message-Id:Date; b=kjw4aFgLOwwhg03O0WwgbCPpZihBeqqjrg2TucdAqvjNqzFUcerQyn1RmDsZ+mDEs4pWDXJjQelusgHwoI+lFG8zTyTKTiqbQifxp7iXjAlHkrQFW8O2POO3L7lxb+PYrNQfHOIqYtrQgyt+xtBlvVxSVbsgxpBFBJ3sjJgj7NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms+wqHxY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms+wqHxY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2735C32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718783962;
	bh=97sHIst2TB9Iib7hLSz4ofkg94Feo/nifFFfsw09xd8=;
	h=To:Subject:From:Date:From;
	b=ms+wqHxYjNqUiXi3QQCzWrRHbG/O/wXC+hgyxw7GgPz4LC4v3EU3BPAnP0spSKQPW
	 ekjeL/oAxmeVq0CtjzMD1ARXExUJWkzgiHV7XXJPaNE/2bWZcamiOaq6VLmny1av0z
	 3LQKeTj+XcvNQN5rsUGlr9FSNpRCEO2hYlZD+dwBDs8o20mI0xEL3MQMQ2aUaA5/q8
	 TGA6AJfCfaD9tjpwJ6jXUdsqfgjDYTtkf49/64dtKS+CKH9h7ByM3nR+vXMxxD4aJC
	 kxojGt3GHJ/OBe5NSldUjAKwxh7Rq3VuD9C3Oui5Eb79tcPtA3vV2BypbDDM/G5yWT
	 GYyu54r2ldM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE0C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 07:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878396276.29889.204396174226410381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010119db5df7a6383780f81ec0b4a3118ec236596a45b4c5bb9344b433d83a1a
Date: Wed, 19 Jun 2024 07:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718783962
