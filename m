Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37250523A
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733282154; cv=none; b=u2gXsA1Hyjzk5DgpLGQf7iY9LUuULqeZZI+uRepaN4cgokVHB6sPEzmfD5IojvEKIyif9PuMFmtR9D8twUanJkCka7SiKuTmB90B4MqbNStuxnu8y0PLl0h2C9o1A4IEMJ3T/wtJ6qBOiOb71OkFBC6PmJqw9zGfQYrr+hBfv6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733282154; c=relaxed/simple;
	bh=xjqMFLRc4dVzfNmya5PIYtSaRB/lLBXWAf0WrUbqNk0=;
	h=To:Subject:From:Message-Id:Date; b=jenpNMp8IUps3ofhY/z9TM8XJx+G6a6l6weIiaoFfoAPT3FdznqKaZsHt5QY+lMy1bc91KaXuRcMI0clQAHbQDOnZ+shh8/cDmyI+EEi1h/f/bz309tP2/i90oFuk1mZWSkDftuWTiHrghWWtr7mkfGG3ZFstq+gWlguPmIC09E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o5vmeut1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o5vmeut1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAC4C4CEDE
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733282153;
	bh=xjqMFLRc4dVzfNmya5PIYtSaRB/lLBXWAf0WrUbqNk0=;
	h=To:Subject:From:Date:From;
	b=o5vmeut1LsR36Y4AF69z85e8D0IvjWm3rN3WZZSybkeBD3GaAb/3J5rC/whIXdO/w
	 wRxei90DreYpNaf5YQ0KMHJHCVYNyor/zcjxvg5JF20pS+1B2iaq7/mbUWxBVLnxqg
	 yalH0TP4R8ZmignnjJQhXXXzpe6k+QeMx7NQn8M6Djvf8VMxzsTw+ocEARENJD+UUz
	 Jceq4QPg1Mbl/jgqQ2VPPTsLjUxuq7pIb0f9YT3ftLTtTgJbuVUxilPfxw1PiTgBhN
	 qh1odvGmOnfZ/VBlFBmMLwDI8nQmdLC4qZD782Pau1bPbPv554V7TjJBWzIaUwsFZ9
	 yu0QZxNpwRvYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C743E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328215360.11873.8738004779318131811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0bb7ed34df68207e1db5f7cb2e1e0a6b3860e4465ff5f32be42dad6c28443f
Date: Wed, 04 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733282153
