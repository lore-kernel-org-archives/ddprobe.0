Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853192BE7C6
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776391054; cv=none; b=iI31Y4eU+T34cdZWqk9gxbTCaB0Yc7P9Zl0zBWIQ2M8GTThh0gVFdVGA9hT9dd69n4y7G/CBGgF8h8fvJu1Z5A20TtklTYsZRUaSFQpDGnJdn9eBL4gjG4N+pP/ceYJzm7/gz0twBL/YeV5QT/SzXYv+OtYTxcfg8kjeAaIYGJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776391054; c=relaxed/simple;
	bh=1pWdvN/bqQThFgSDjPOnsJML+O3eEVoerxyBcdjdc8c=;
	h=To:Subject:From:Message-Id:Date; b=LyKUqxdRo453MGN4pk2CGEo8hAoUrpMYbNpOEmV0fsGiZdb/Y8qGmNVAB4ZqAN7vkgGBrlu0/gdSOhyz3DJu5J+b8UAqXw8f8khnmZXMk/XzMZq0hY/wuKlKFGAfFvHNnvek9xi9LhBjL/PQrmbadjOHguQGS+zLYyI7cBWN9D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/7y+4lp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/7y+4lp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5464C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776391053;
	bh=1pWdvN/bqQThFgSDjPOnsJML+O3eEVoerxyBcdjdc8c=;
	h=To:Subject:From:Date:From;
	b=H/7y+4lpCCsNN8J/HE+C3BIq96SX70BHxkpIsRwxazqG3J30LZ1PNY85UN75eDmt3
	 nPgwsE2zora6/fj1P0HIxzWBk6sD/HIZwRTMi5fQGFLpacSTQjSNH2gt7U7BX4uVjX
	 dOC55kZM+LaIbvrs5On+stNupHI8eHM69BTeFmWqif5FlOXFMvnuNbCrDIAWBvAgQn
	 nc7yjNLUpPblDD3RJVFtOYMjCL1rvUS/u/efxBbOFg4skTOgQqfJN4RZTlir+QoTno
	 PkwNBIq2jFXJ19nVb/ctlESjMAvbJzHmTCTHZGjAbFg+0r6GbopQfWfF7zrqBe6IoN
	 amJYIVSRTQ9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9436F8E499
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639105368.9103.16517349349528856668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5535f93d063cdb070720635f39243d563ac9d3da9ba602b227d450bea521248
Date: Fri, 17 Apr 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776391053
