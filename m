Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652F038F94C
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788288034; cv=none; b=ui26U/pZoO+WVOolZaJtgyGui4Qw//gcDKid9pTM7+Oyy6Icy8hm/bQL5mlIGCpz3JzZ0calhIv8g/kCaebQj0uthu3wS/A7KG0NO3wrGCM+z++Rqjl3XUroL7ALuj4VDoGvfndDKCqta9yBZbp/m4Kdi541/x8CGGH21hNC68U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788288034; c=relaxed/simple;
	bh=nUfHDdghtIBkNHWnXCe9ngfFpBbQferBK1Rl8Mf2ZzA=;
	h=To:Subject:From:Message-Id:Date; b=lkYmHr1YT2z6b239PSnW4uSRa8Ba1BVlzpT43x6xj/vM+v5l+tf1RRb3EkdATwOet/g4Qr7gg/Rq+GU1TDUOaJdwfsJp+87e0m8CpHTHFHbgEhGKQE6dAThxmdtyYvPGjcf7DkC6VNJZD/h6KqkU8cPfJJ3yGclx3EHzgcBLRnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRgxkjo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRgxkjo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E10A7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788288033;
	bh=nUfHDdghtIBkNHWnXCe9ngfFpBbQferBK1Rl8Mf2ZzA=;
	h=To:Subject:From:Date:From;
	b=jRgxkjo78Ao+tEW/qNnnUmbylg+cU5p+/xCxt6sjUBTmXf/P7jXJWT96ZLcthXFyr
	 JnbJ1pnDIKrTv6ZsAFES+avQMMJyjr9anUMyrzEehknmBp6vUlDHEjrzrryPEOSWTo
	 PQZkT+Gnj2cJAPVWhAqogEN7nkOz/rzRJkCn4vyIUiLfGtSyBd95fj9+2qZ+5gRThM
	 hig4OX2lnLZYFEZJ8W8oCLwiP5EarsW9+482xPumlZXKHC/8RPFhSSr0vyFnkhPX0A
	 2ZwHACY/2eYsWlT8QYbCvfXgpKhLaAmkOrIeMtY8H4IiFAUxQh421BOMh0zWx8MV/Z
	 T+B1LuZQQ/tQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B49E3C624D0
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178828803372.30694.15956504944632255343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61537e3e5f1aa466374f66669a8148ce23b02899f0f9fd3bdfa058c9102b1350
Date: Tue, 01 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788288033
