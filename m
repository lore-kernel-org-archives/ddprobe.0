Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218018F54
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751226595; cv=none; b=j8KmQQdovuN/CSYfeIp+5zs23ViyWw4YGxo6kQZBmSDVEj2H87wIybLxQ/9+tIN+EvJCFnj2xZu9ky66GUFTA98AC3I6M1lt+TVGRh38fClZuhbpY0FmszcS73ioQjvgqW+xXEv/ZIlEtwLQNlORq7p3O2IXxtAlicCNABZE/oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751226595; c=relaxed/simple;
	bh=es3CB52CBpNKzeF/L/XTT/2wiNHlGl15y+FyYLJxbuc=;
	h=To:Subject:From:Message-Id:Date; b=uBOlQghBWe61En2UiWi+/2CLrmfumZhhTgXxMKTDnCbGWCY6nASAvcQ8x+BEnmqxN3VlDys7h5w8niSz/itcDX6ookThz4Eo2ucKwJzlvburlrWn2UrJx8Of11tk0+knLQBz74r9xFZAO5EwaQmLPuxosOAaZDPXMdECLHL8dII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuc1vDof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuc1vDof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40CFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751226593;
	bh=es3CB52CBpNKzeF/L/XTT/2wiNHlGl15y+FyYLJxbuc=;
	h=To:Subject:From:Date:From;
	b=tuc1vDofSNw2zWBGjr8mE7uk9P/vOcicJOewuiuA2G/n7X0HUh60JmqbHlV5FCXd8
	 AdAuhd2T/2vmioXNqja3U1AkA8Z18qcbljZzOc3/oL/tAzmfCtZo48JjQy2yxNJD+I
	 FILbuieLu3f4kXT1+gcqxy4GKZYLKw9hEbjYEkupQC45bZCr3fKUD2SJeiJaQTidYT
	 zX8cWKHja1tCfapYYwxw18ZIRCykO3rA/nIi/Mtjo80rmy7zfqbKNV1WtJOlz6KkrX
	 uIYLt8JXUNbVVH7r8LWXwZL2jWZ9aN3HwBxWKaf6HmKsWT6WK1qD9nfIyI0+fnVgQC
	 Au+rINuBli/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FE9C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122659357.20725.13461845111368259701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1d571b1d40c6f595486e9725efb792bea96b353fffad9f4b0ec49e27fd7986f
Date: Sun, 29 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751226593
