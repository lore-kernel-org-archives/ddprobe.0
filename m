Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F57813C3E6
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715071943; cv=none; b=m8RaDnIXg9LRizF34O+Mp8a/UcZ/mhQw9mQGOITFoWIeUmbjwqke5p52F140qgVDcyTaYkpCIudMr4CF4dxSyRaitIOalWIUN/pw8yQ9Bky75Ky4O3wEDihyfg3tUifQ7eHUbEMPLkbmunowVH1Dz20+4rPl9LGCwY+EuseRT4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715071943; c=relaxed/simple;
	bh=fL9Nw/3OapEraYS/hKPzLYcdxzYr9HJRw0+fxrsuZc8=;
	h=To:Subject:From:Message-Id:Date; b=GZkVan2Hi2Idr18ka35DZjD7X8Gc/ITBfB9XoYuDfMPvKWY9dH7DMurYOClfo6E31GSDkeHPI/LZjS9rdhxzzJtOkLIhdfAMhbRs4yNJfmKCiUisxMxh5F1ll+74r1c1fbvBZ4vd2673Ab7IzuJlAKGjJAKzlXbhcMrL9d9gLVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cey6+J0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cey6+J0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60A7C4AF63
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715071942;
	bh=fL9Nw/3OapEraYS/hKPzLYcdxzYr9HJRw0+fxrsuZc8=;
	h=To:Subject:From:Date:From;
	b=cey6+J0WLXZNHtagIVVIryeOIZNiS/MRXVyzcvATPE7oE+2MdzaPGS61hCEAMOgS9
	 1Giv5CNBScBvL4G3KEcy6r0QwPVXPoH63/FDdVxxHOabCAAk7zLbZ42w+FO5wWzkAu
	 Uuy8zyLrM/KkjOElwGa8/aQD7TY0W1lGFdjx/vlRaILD4l+MFsWaHow+eP7c1BmZoa
	 4BXItMxEdLFIRQy57GHhwEUZ19WJ0dmaSlZVQ+cTZ9lHzyv/LezWYU6RjgMJ5nUuyc
	 q4TTLBsXzFVPBAgcqPmox6YPEz36NlOEk+MSMZIvXwczKhJOKeliOdH6KY6dK20/Om
	 NeHTw4YlhS36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3D9C25B4F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507194277.29941.13394503193220560834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50dcb8f59d2d1f6c3f8afc31c2bc5a9cad11ab833dfc9f87b37ab03554a8d2be
Date: Tue, 07 May 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715071942
