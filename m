Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1ED2F5B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760423394; cv=none; b=jBvwYZZYSpUF3glEABqBMOYLKgppalAWqintyZbs/pc9vBxBRoQOE2dqdquQjdGBvyxOmX+wLCcovSzJmuhrURv1bkr0Xqcbx1PKA23v4To9PAiSk2lIcX4H171HdFbswivvGe2QHiq34+AkH/uA/Irdk21VXlePYXtfO+SEBVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760423394; c=relaxed/simple;
	bh=yXtHagHOlvfFpEGTEZOQDYcrwg2KC/IPzk0XscvpXLU=;
	h=To:Subject:From:Message-Id:Date; b=uYo8xLpvpVNg40QPLNtzWvJeEUag8ZpRBDKezu9HZLewf2Z9dRL/zHHBvF2z0y9Ckpn4SCQcNYdg5NQ+bAsNqlDKlBQ9t4li1wiyB28XoZpbi8hN1hGj8zRsRpv6gUopa2tLYGBAQ4EL5k5OnaScWIas2MhECpXEUfU7hy77wdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCMySoCC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCMySoCC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E4EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760423393;
	bh=yXtHagHOlvfFpEGTEZOQDYcrwg2KC/IPzk0XscvpXLU=;
	h=To:Subject:From:Date:From;
	b=QCMySoCCAiGwwx+XYoaL/nMBlFtYA9KB38TanFe2q1Iy7PHGsxJ/LdC3K+/CUgZEN
	 LZlFAJ2/eY01H4yWGXznLXk8/OvMn1yaIG5l7cQZT4ev/oMz+N5ZcbJb2u1SYdK0tR
	 8sk5bEvLTUZcrJlZZdYHWH7V1tj88wPvdQTcarj9ZUmcaxdG0vkeu32UNdbUJPXEc6
	 Fk5cmXWnTUvtY1zPfWsgY400azmn+e11y8L+u2K576+azOMgnr6harjOBOtBvkgfCJ
	 UuBUnvdR9VEWNOpGkm6G7WyDfZdkJLQZDTPAoHRdJXrDsQJ3hqR8ekFVjW7WW1OVRX
	 iw4de8djG+ZKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F9CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042339357.10589.13159036614812641697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca03935f4a3c1b598c8a66ab7fc29cd24946c1a696d84a9b93ab5402bf4d084
Date: Tue, 14 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760423393
