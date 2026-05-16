Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36525336EDA
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778937634; cv=none; b=B9yZaFZ3cRRmeSyjEtQWHlMgVFpn7v8nKo91xio4j0+sbrUjIweMPxf7TRlg3aCzH6Y9VXMibB6h3f6KG91R+ZL91Ih+Ivnht+w8L0zg9zQjQNaKU9zcC8LtviTCp6Jmzc304BjRB8gQFYOGmKprELKOzY2RO6WT7dWjEvUKeg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778937634; c=relaxed/simple;
	bh=Ox5GcvOJFfsKMBpq48XHXmwSdn8pJ3I1AKiYrqMuULU=;
	h=To:Subject:From:Message-Id:Date; b=LFKb8vdNAqpWqatAGxXHcn6/LDVltu2yUIqJJ42VUS2Pr3+CK7Epiqx1YjXYOnJ/QSevRVpTbhdYLxS8FNJ+Me8pD9/ZhJ9JCkdYAGHjbPCr0Z41jj3nei0gsFTphwVf5yHRNy4iYw4SiJV12ppoAuWibOab5myFuxjwgrzr3JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OytA2qBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OytA2qBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A73C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778937633;
	bh=Ox5GcvOJFfsKMBpq48XHXmwSdn8pJ3I1AKiYrqMuULU=;
	h=To:Subject:From:Date:From;
	b=OytA2qBUi/Rsnm/dKGhNPbQIhmsONbswaofwqiFwVjw1jtm+vkYeuHdklehiyWqi0
	 2Mtu08NWsr7Aa4e8+pmYwCXDvcgjHzxELIzlEZ2MJnXRAFgQ7TZVMH5liGVO8ZGkQo
	 Kh8itghiRhJmlDdNjdG8hmQf9hRjdb6tcO8+Jn7XsZIKWWdVz47xNAdNMMmLLyDsez
	 zA2GhJhuaNwyCWwuCuU78L4VS2Y7crQNaVZQOCU929c0VqlefDSiYTdX6ig8JTM7Pv
	 01eYS2Q+fjw7Zbxmn9+/5oJh+RqGWBQxFSXpI/xdjjJqQc7Vsth7wdsrfxh3WAzTjz
	 PMGp6ido/w6+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A51CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893763371.28900.16399526773141714819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ea9c05e146ca4758a1f4fae3c20ff8d1e5453345c793b8d6edc92a477406f9e
Date: Sat, 16 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778937633
