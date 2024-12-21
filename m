Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31249370
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734760554; cv=none; b=IJ7G2IAK3RWyESMrUwisAuScpAwf9MaNoTuqroUHldhcpGxDl8WL9shREOLqpTW6O+z0BWpQqOr8Upfwz4NfCKSESp7AIrbsk9FEXNrq8v+a+P96x/dDzJ3pehjrGg4qw47RbXVSgBg0Sj0O4jq7lX6tw0HHtU4zNbkwgSw4TXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734760554; c=relaxed/simple;
	bh=KYbmzILzEHEjzJFsFJV8NatHZIOpfAAJh4xKvvaMStg=;
	h=To:Subject:From:Message-Id:Date; b=sLiaAmVSfJ7rBvx/9j1qLs9XDpb32t2Cqn7aPLwH5LOUe1zCRZIOgYSu/82hnF6gac8tvpd/3HL2Ehgmy5F1YAc0TAnEUJvQvFGh3RvLlqisep/unIHETC4K7oIBZg4g8z1dmgZvbtfapxISjDwrmVH9Y1jJ4C5naogvAEFTn8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=soQswJ0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="soQswJ0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AB1C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734760553;
	bh=KYbmzILzEHEjzJFsFJV8NatHZIOpfAAJh4xKvvaMStg=;
	h=To:Subject:From:Date:From;
	b=soQswJ0Knl/MVWsrbYb84TZEdBJdIWlgkBjCVodXVKhviq/vxIri3qYG/7V6QE/2y
	 qU7kV7VOjI1afTrVfa/gctIV31Qw1/wjcMRprRieRavDi19UZxsoX5NcdrQsvkj8L2
	 h8k4LFI2ewbA1KwukuVZqZQuMenPawQjkfr5ouPPHgiED0JYgtNqgFZGf1j7txlLeW
	 m1DLot8lR0BiQXdaXp6f8O2g2TlhWJU5VqlToV73CuN4aWj9bj6JS0Ced3F8O0eKQs
	 ejTP2YnEMLX/vWPPL9LNhQwuq0XNm/9Wm3PY8jLS8q870Ru7vVfDk1/aKsaObFnn+I
	 5c3mkZPP8JVQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9A7E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173476055361.19372.6859493286274644467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3446b92a7d531fee23831bef2a5f0d131923bcf24273fd8197157d67ad77ad
Date: Sat, 21 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734760553
