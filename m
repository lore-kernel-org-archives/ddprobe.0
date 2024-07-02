Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D312770E
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719909923; cv=none; b=G76PCv8lCw6pjLO4lzK2iHQmsRKmqwqqL8lB0cZD8rB11vQgAGIng08ysC62jVUGTDbLRhXEjyv6+k23ddusScTEKP0bEgKb5jKKmSfAb1GJpNdkhwnftMHtSwn3Y6gJnnYJ5VE383eM1Dk2io5rnk75E5s951HDwXUqgeDsZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719909923; c=relaxed/simple;
	bh=aPoSWIluZbY6pgcoGQB7uyESwjEF2G6heks2NX6hhgo=;
	h=To:Subject:From:Message-Id:Date; b=ImIZX5WGPtp6w08Z4bnjKsqCSneNi+tbRsvwnQ8gXO3dGXMgVHO5dDeYJuT3yRg+9c3PNBAWKdVBZHaUyISIkAnDxMQE7JdIepH5XwDZG4A4h3m/YfUo4o43lzJ5Prm6CVZwefwfCDN0nKf+DQgav0lGUY23MDhcubrxAscXlA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S5VIKmUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S5VIKmUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC3AC4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719909922;
	bh=aPoSWIluZbY6pgcoGQB7uyESwjEF2G6heks2NX6hhgo=;
	h=To:Subject:From:Date:From;
	b=S5VIKmUbbyx2Hma9L74ZM43OdZNsTEVbVJBFQzIP9D6dXvMZgtiWwnS+fjXH5RVBc
	 5jdZMDp1D2v2kHLo5O9ofvce1Q9O7+bpg8HfQ8OaZVFlEBq5CioDLrJ7veQy0hX64W
	 jfTOlo1HQ3jJlXlq50rUHaAMw2T63bFg32C9qOjFOy4BsBK9BKJb4TYCw47xSfMcL1
	 ucNsFvjtmQoEgYArsHGCDF/ROfd2B7y1tSjgOdpuNwTsoMs8NQcJt24jpfNJF9XrHa
	 n8yofYicURpii5xMPVg+exlUmbXPRFPdSZmObz57w5V5gg+ejI5zYJuS73GaZVojQ7
	 PHYkhX1TU+jUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C807EC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 08:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171990992281.3524.17836002787092561264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da2e84ebf4021243073a5e00f6d93d74738451263d6b5aa2ba216cb1719a511
Date: Tue, 02 Jul 2024 08:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719909922
