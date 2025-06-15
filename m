Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4614B1E4A9
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750029594; cv=none; b=hrl144pVvmiiQAqm9TSKeHmdu+ZlJosm3zOCmFupKZ9OptumZejrvAd2xB7+OkCHxQkIqDb+qVIFI8y9ByXmDlaSe8lYi9TbsGkKAUkqVBE0X6iBYO2waqQU3ezAZBJc9eP9VM+kTOIu/RAVmRF5bGz3X5XJ6psVoBmyxnrjrsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750029594; c=relaxed/simple;
	bh=NsGLgfTO6CnTqxJXkem5mrkvYcuPZcFUTJW9UpuM25k=;
	h=To:Subject:From:Message-Id:Date; b=LO65NOxkYFNf8j8jcX5AYLmuavQkmvN5hTg/E8y7x3Fxwg8PQhMLllJKzRyB+cEhqwjFrLV3P8xj+WuURa3vJemgDQTVpguDz+SWzdA1qgtOp5jgBJiBydUQCIIvqx3HU7y0GH4Z584Zjwyqm14hqRaTMhTClXoVJag6iEaANq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNbYhuDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNbYhuDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181AC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750029593;
	bh=NsGLgfTO6CnTqxJXkem5mrkvYcuPZcFUTJW9UpuM25k=;
	h=To:Subject:From:Date:From;
	b=UNbYhuDawXGrpQHW8A2tTGDmfVtQ5WFT16TXSaP/r0Bdt1M39p514gv/RuJGuH0us
	 rYzXJSF0inQ/erxV6a32DptNLjPMGhHbJVIFPV3p12qLpqrw+H8glQ9XJTCZvdPzpt
	 CR7BnaUw0I/H39ISgD0JKOajRtUixZxaftebeLbC5Jyi4o6yXYmBZYFfKPyGMH7D/E
	 3rC7wR7hg1RwR910j8GQQU3/TDysImD5ZWXJoQkxvLN/yiqKRVzx3NgXNlRAa0WeZn
	 WdNELWoZblIjrIYZ/wmWJ4/IMS4cZPlGi4xRwH7bUTHl/ns/8BnlABLmc/+sflvf4P
	 0is2eytL2bvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993D6C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002959360.8519.7973205555128240443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4bedb3484ed3306891004defd1de7a34b3563482c9c33981314538f4a4ab2b
Date: Sun, 15 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750029593
