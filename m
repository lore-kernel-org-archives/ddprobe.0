Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37B41DE896
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743616193; cv=none; b=MchqDP3pv5Xfd5ywV3PziX+vS8bZYudmMXAbodZecV2qVtCgWRV/lGYLHFOeBv+d56XYI1Ozb4QkOn/L2yIzxQJs9aRScgjBjwz7LEGn2TKfPCZhlHbWczW6F/C4Vpwm0IuFmGcvqC54BeBnh4Exl6Jgk7WAVg4D7CLa05AtR8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743616193; c=relaxed/simple;
	bh=XNyBj4x/EDkko5TtjzptdufbLz5Wrbz7ZFIeo4eFv34=;
	h=To:Subject:From:Message-Id:Date; b=U0yqbTm5TsM6LPobKYaUgKEkJ2mDbJJIvTFznGt6d1jEWyKMC3tz6VQMONT0zFFLY99w2tYMltguC90OaJffTO1NUIMPI7sxYs5EJu+j1BV7zq4ERjDhlsUHQONUR0RE9U8dFuLJScvFIqun0N/jdqIfP8PBiFyBQQjsLdeb67w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtkZtXTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtkZtXTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9067C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743616193;
	bh=XNyBj4x/EDkko5TtjzptdufbLz5Wrbz7ZFIeo4eFv34=;
	h=To:Subject:From:Date:From;
	b=EtkZtXTjagve+zxbfmohvxUjvYk2bxnzWLnUpPMSZRvjNKNWx5L+EshjMamMAFrdK
	 b0dRSiuPKVrcw9txoc9rieT/1Vp0J+A9rR1BInSUiuPRgvwzRfafS+XOTGjyHfIMcx
	 blkGQbs8q0pD1qN5qSQ/RDgtpKX2OJdfE/eLqK2WYLHARkiP4jJhE+XhAnx7JOdNO+
	 8vsob9j5UDhN30DRjUhJgsCrKorC+zwSvQt/41ImLm/uCEHDD+CyI+7e7+XV7up2+x
	 5g5xiqciMMeTdybddvuWFIt/9ZV8+TwaHYxP2oxVNJZDefnxe8xKPnI2PlFi1Q863K
	 R8qSQJW54issQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960D0C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174361619360.29316.11241947726234181326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d8755e4d480c5c2b8ea5bda3339f01590ffdb0782c683fb0f99a67fdf32910
Date: Wed, 02 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743616193
