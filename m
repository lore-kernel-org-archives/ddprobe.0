Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F934C7D
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715349744; cv=none; b=ZDbDAGL6iWBeQ53PkxOxqlayzq0W9bh25vTpp+vKhvBHqlRm545C2wIAkHA3pXYrpnoCbnhY7OWBHIDCWxRiESKMx6GSUjN5pK8qDAA3kgYJSX3ge54nThq4p3LFBdcG6HnEcbSqianGDuUA8X1NcSXohmicoV1ZE/MCpBd6sxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715349744; c=relaxed/simple;
	bh=RYdtLB3fTg3L5m8I5HBD4du9J4oxXXJ+RYtOspbrLL4=;
	h=To:Subject:From:Message-Id:Date; b=Q3AsuMFgsx6YuXYBVvVdM9NJFGkMD3IV4uonb1ITv76pyEw1VFcfEMF+cMhR9WmGMZuxqgtatsn6vEC1W7AT526jGXBU4HUKi3+/b2x8egqrzzZv5lzhJg0SUHVhUhOMwb7iZKNl2QFuWIXUQvr3AmQ7e3QZlWP2aAXDswVyfhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ok6FJfgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ok6FJfgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A9BC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715349743;
	bh=RYdtLB3fTg3L5m8I5HBD4du9J4oxXXJ+RYtOspbrLL4=;
	h=To:Subject:From:Date:From;
	b=ok6FJfgyJ5ow4bahn3zUOx6tIgd5Fj7aHuHvDWyr0U5TE1hToWmmFVOCPm2CLxLO7
	 0OJ9T6CVx/QVvdsGInwijnxDRJsuEswAUJTQyEApfG858/76ufjtdOaVuQl51EIbiX
	 eOvcvnq7v3GFra3i+Bl+Zhwzsl+5CNOqkqRZp3MU4kJ978BRnwO+4iBIheoaSNX/wy
	 DiKXIqetWM8H8kdD4wMO7b5UukNi5ceKmshTL+gSABPn1LcZFCVnUc9VxkVczuwHxD
	 6P6mMpkCWg4h1Xl1cxb+aSSuC+WWvhmWfkVa2m6VySOpIt2N5+HqjWWsYVTEm3u8vj
	 NMaJdYsiqXgiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2AE7C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171534974278.25608.5000463075053085784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 608d5065017c6602b682c91e75f8f2355b4fb6877c0273f000b35d09059c1919
Date: Fri, 10 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715349742
