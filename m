Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCB2C21FE
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769604834; cv=none; b=JAyF0rLYopwJ3RzkRUMBx4Z7SbDBzdU9+LInN6V8K34+cphWQ8qnBzBndRg16e6/d8N/Tgeg8XvvRPNRh3aL3Bk5I8fz8D5UyxKEQ5HNmVx3kVXbA9kJP2gKjOc1MjmA4ch25lISRlqNwmMRa2ylQ6MNwwX4rsEh+NTg9K+iy1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769604834; c=relaxed/simple;
	bh=a6uupmMziPBCxEpVwkdnutrOEbXH2chHsEKp04GV0C8=;
	h=To:Subject:From:Message-Id:Date; b=HAehgGEAFtYTsZxUF5I3bazJwQqJxoQGpPO6/CtyVDxu3ju+0ydSYv+nIiI2m+85QEOhdfedMzAJokql2iSZVICS0CsD5Dbx8THRVdc9Tba8IVAB3I1lGpjTE/DBotJEfxOlKLWlSTj5Nv5eQ0f1RBjEsDmXmE/LZEDHQ3QnKp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANri3uwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANri3uwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CE9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769604833;
	bh=a6uupmMziPBCxEpVwkdnutrOEbXH2chHsEKp04GV0C8=;
	h=To:Subject:From:Date:From;
	b=ANri3uwt3/T4ZejZswgWUZsDayu5GAjMWk1m0ghSS/u/rNWXyyfTpv06Y2Z7Cw+yH
	 bvbP3KxFlv6Efauz+EAfDSHSvq9aPWntHuQxIYb7tMErJxy8FGwglo7AgLh4xeny7o
	 /JH/PLfISnc0GXuFjs6YQZ+sH7pLIjlyUlzOygUvdyhgx5RRaF203vnV5WshtS988u
	 mN+DsxIZw+G0x7fkiXM7GzYPADGIxOQazuzRHJp0tlPj7jjXhb9EgL5gkC6hBSP6EL
	 Zz6+MT9OWqGtqXL75HcNU6ogpYL5ja3q+mpBdXwV1BbIYrYpeUa8iUWgcSm5ifqF19
	 eRIub6w17C8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9101DD25B4E
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176960483358.3460.10303015911008095084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9456f484621ab932a2b65f6199e19c98715a19ef36443f290d1d5476b0bef623
Date: Wed, 28 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769604833
