Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F415358D27
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772655294; cv=none; b=jpY2qKC9InG9gNP5Usvr1P4FhsDU2qWw8L9eFS66vgvI5M+cT5uif4JEhB37wVAeswwvDPRPTYPeqx8D40jdS79CunapJ71bQa1c5ay7omNos/rDpX+lJkteCQO+pTB8p0paAyHUdfIgPZoCD6Q371btPA9ZGHdWQzNaOWlwAEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772655294; c=relaxed/simple;
	bh=lBbPAUSUlbIvNKOS7DXG0VFY9DzB427p0mvZY4o9jZE=;
	h=To:Subject:From:Message-Id:Date; b=RMqJX6aLfsPXm5p2dtKZmdZgun0lN5+e72qd1vDbOpt4Rw+6CsipDyDEX5strW1KInAlYekYO8lIw5/do6GjMRiDdjX+Xumf2N/9oUOEUClLgN3sTdVFoV2lF+jN4hRnKV9Fzbvsy5YTLjIKPBdx5x7qaw4kNaKiF9eo6KQ+iB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjeVcLO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjeVcLO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772655293;
	bh=lBbPAUSUlbIvNKOS7DXG0VFY9DzB427p0mvZY4o9jZE=;
	h=To:Subject:From:Date:From;
	b=DjeVcLO49mmYBaIR7jNyMg6ED+MEy9KcqWAL61Cg7CrP+GPecZ+v7tUGN/nxHqFBa
	 ppAo/WrfVEbbA3t3iA5TJ7vfutAZnraKHoDVz/CUSvPUk2/xwgPA3DuFPO0OjiYpyu
	 KwyoNfjwVGK7Su/tHllklcDBGYxp6qKuRMv2zIzRe2g62nXNhn9UZHDl9Ib45yIUVY
	 nRyVdBcnLUF9nAJ74dd1CSBtU60Tf2Q4gH6AacLXnqVxxGteUNxG+omxz4+Zc/0bEo
	 jC7d04Ckq3nBFbpCxtSALvUBnOMKpAcL9lzm8z0n9kz6PG/x+TEznQISIUttIdpxd4
	 V/vcSEv2/ox4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E58EFCE37
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265529358.25237.3928377582524355997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 148d44b40cbfadb80cf9fc7ea8e29ca0d9df3aa2a43a5629956c3aed4ec4e3b7
Date: Wed, 04 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772655293
