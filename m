Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A27B42AB7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774821294; cv=none; b=kjNfDg+CGFXc7oAS+ycgAj0hCkY7Jfr7XZxaIxH0eX5vPWDRGyUlomF2pkh/y7ghX0h8vJZ435duBpzEYP24QJrezC6XvBK8zjpifBpl1mzZq7qxPfVibUt0P/CcAQ9nK2Myukk9GpVOqIXZSZiX55ZwDO1BiDPT2CPBNdrfzo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774821294; c=relaxed/simple;
	bh=7ml9N1JLApppqB5N3rHl6nIfariqbgLHkD9bv1YaBfw=;
	h=To:Subject:From:Message-Id:Date; b=Jl239nUcsiJlEH4vgou5df+4fZuzNckBQfi10hxFpolM2RLUXnNpSZeNw0JwxmcELyVWAYAQrHOf0LzW8RIyI2Xq5VHKDLx7bExeM1kRzR9v61tjX3rsAiD5qhUfI6EldMJFkq5+JzKxTo3cRvk0uaqzkS4OMZoIXp06wT2a1Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4641z49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4641z49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E3EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774821293;
	bh=7ml9N1JLApppqB5N3rHl6nIfariqbgLHkD9bv1YaBfw=;
	h=To:Subject:From:Date:From;
	b=d4641z491UVmFjJIKJbHWV83ZArF/Eaa8N8wpo0vmIFglFpJZt4t31uZsDV7/5Abf
	 Y7ZjbMloGq6Q6lXNBxfTxYrarxH/XexiW4Qt2X6Mwbp59T9R3LtfBu37OKugyqLxdg
	 +gWYDezDJbzi+QLrBsykoR01VC7uWzaKnxHXy9a/a5zE56fEaUquYI4hyPKHn4WqZX
	 ShzThbioBcZZrY67I48XBSWB9bQpBXoCjC7YO7KmpjKHjnh7hxrbCNTzMki9bO9wJO
	 k4dL+2EM8nuqgqeaBdBbNoNdshu7+wIYqKiShlLABytf6l0XDOwPLW9SaC/ZROY1oA
	 zqeg2XpHCD13A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93641FC97F2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482129358.30342.16043910636838858657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05bd602f265b3bfbfb70afea5013a1f6fc254c822ef87fe94ad160f4036c50c0
Date: Sun, 29 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774821293
