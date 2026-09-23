Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906EC3F9F3D
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790195434; cv=none; b=lj8AQGGGTi1nx6Vgd04sGa3iHVcCvMLwkt80IHNhM0SkyJKz8YDEAtgb0DjnglB/u+pqbfn9Og58QKgkXoRVHa2Cnfd56oP4Vcr8T7cN8EhzjefYf/NPi6iSrrIwXzHBvocxAQoaaiGObpaqb3mewpmLPR2Mt8JzkgZsspRjHTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790195434; c=relaxed/simple;
	bh=ZJbT2hncBBNjbRsx3Nra6k2ecgBO2VwKyWuZhs6DQVg=;
	h=To:Subject:From:Message-Id:Date; b=o857MdFfWZi7UU642+fIXmVbu6CNnTyAv9qu3/y21VyK7oc29sumjITFiVH3Ij4hZuYCJwMOitSyGdZFhph28sogxUcuKzw0xlNi2SgOiAqpTujvA0Y1NUcH661R7xJl8hkFzaIJyR6+gs7hFFOBnmY1itdz2QlK+ayOhgfjilI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGdoILmt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGdoILmt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A15C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790195433;
	bh=ZJbT2hncBBNjbRsx3Nra6k2ecgBO2VwKyWuZhs6DQVg=;
	h=To:Subject:From:Date:From;
	b=aGdoILmtktSNA0u28PUsNiJycqCz3RgTRjgE/jkxS2hvUKExTSpQlhTvUrym7Zo8Y
	 t6BKRiGkbXVJ/yr1vUmMKBP9NhYFIktdkzqxB+BbOdg9mZZBbPJF5gD0slsvv2pm+p
	 c+NDLSV0F1wBGG3meF+VWZlhpwD18ADJX71juVL+nBRrqF7XgZM1FoUNA/KBbyTjEO
	 HAaKfMc1moq3OPdauM+/5OJNblur0qbPeDNJR9IvOSX6JK7CSpYzgAqK4PswV30KYi
	 xk5876UlqhHNeNZH0BRwXfAHqx44f/ubSMXvwMBcLJUDfaNm4GqMZXv/um1K7DD/0S
	 BrK+MA7u5iekg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA941C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019543374.16349.15348596087761837157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c914335864b31ffe864706875c10b0201081a58a69e381df28fd392acb5653a9
Date: Wed, 23 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790195433
