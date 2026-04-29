Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215C3376BE2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777475854; cv=none; b=AhEqJIr5JO0Ocegn6Mvq2aMMpYS1lfCogwnwd4vNhfaoHMejFCU36zT2yY9yaDWoww7hJHnStSjDepvIl9XhXEKrQ94xyzIR4oqj/LebH+0ty4voSF5WK0DQaE5hcTznerE1nTTd0WXx4YrXKtYkuIIds0RiRYp+oEpcRpq/D24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777475854; c=relaxed/simple;
	bh=K+ror2VhP1+dL+JIeTwUAwm/TWMX5LNdBYYoPWYrSEQ=;
	h=To:Subject:From:Message-Id:Date; b=QXPSi/Bn/LRcdoCm4D9CKVC1GyUPakhNWga9K5OAIQhpuj8Ivjd/Rn6mmjSIynhvMScn6ZJXSBHNCSoYAFneNTwll6sCPQ+SKXj/Z6sHOwt5y6UouzZo3CWc5PwCKTAcN1As/Z9fQ8cGg54Vz6tBtoFmA0ItQ8SdAYSl6uCyGJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft7v5lB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft7v5lB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B895FC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777475853;
	bh=K+ror2VhP1+dL+JIeTwUAwm/TWMX5LNdBYYoPWYrSEQ=;
	h=To:Subject:From:Date:From;
	b=ft7v5lB1bnSLI3Lioljt+MPvwUInf8azgdQJD1BWMsMKAMVsN+/R8R/01t1yLkisP
	 WHL8ZOMrEWPc7WpFbLiJWZd5Hpz0sNdlq2yg4TB3Vy7uyzf7QnU/QGxMKDN7BCt1/p
	 FUy+1RvN7CBKdKkO8wVXdISmp+/z5zRAhIwTEoPj8xmYf6npz4yN42JZd0yt/gqajl
	 6273+RuWIf6oRoMOiHM9HlFOObDXPHI798QpvWNYgDtS3F1SUidHtv6szphuDZLr6n
	 cL0fmw172RORgCYxWmkTYvQJUzDjwDT+hxM7RQqAWh3TsbGRSlgL/w1XdA2aAg/0x9
	 ivG1ZzBKPduZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA039FF887E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747585368.32209.1358191468432046405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f3aee7a91f5e760cc8d34151a568e9fe6e613aa263955d067aba3cd531a498
Date: Wed, 29 Apr 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777475853
