Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419F9256D
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747485595; cv=none; b=ks7w1c+IgRDimhUNHeq6LaafwThzmHmW4avvFyPm5I6ke3tqw3raodYjNUFC6SnyT8pzVpYVj/DRHcVaJNsG7g4pMzeD9h4HoJqIEJGT+yVWyaJVGxa2JKAunboR2nr4ajv6dqKFlnl+am1CXokaO7bw++DAvZcTUWlO3VgiX0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747485595; c=relaxed/simple;
	bh=RFKhTvTofIH4AV55mqoGAbMxklzZ7UTQ2ssJtMliH8g=;
	h=To:Subject:From:Message-Id:Date; b=r/Vb0zwfXD76avJkW3qdJfyFoDZiO6FoinkR36R7jiMqmrXeMU7zaFEMdxl3L2937D8jwlse31Z8Mr60ss84bvJiwyjxHUELP1jVTS5fohFtYiPgVhFECSS+tGQgoM9/EvwtjQs3Pqs8zMh/fjIlRCHaK1/YnuWk7set+8odTT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5dOAYGc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5dOAYGc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D5C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747485593;
	bh=RFKhTvTofIH4AV55mqoGAbMxklzZ7UTQ2ssJtMliH8g=;
	h=To:Subject:From:Date:From;
	b=T5dOAYGcqD8ZJNUum+F8sA1wOOCJ6vkAULT20Bqvn+7mLa9x3ZtruZRCbpN5OSEhz
	 P+v/NjqTtgIjSVyxceNhs7ElvXoLTsYv6DwWL3l1fFFDv8OEapG8ICMeUu7izYq+Lo
	 1CRe7P3KoxnxWEpgxj50v2B8NEqwPUA+QEsZ01cup1ZEoNALl5su52d9UXPcBFVaOz
	 2BfU3jZskTfPY2F0amcXp2dsmCPXcS989OCawTAM8R7Y1ySuu9Z/giR79uUS9aRTJp
	 rKJfgCiREknJwCWb1dBYlRtdUVgR0BMoQYQHqommeYjkZYdK3sVjTooirbDSpXWabs
	 FKB7/IukLx5kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9146EC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748559357.18337.12508149945410730358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7318662fa6b739aa48fa67e6975252bec51d2acf927832d0bf5961a5546108c
Date: Sat, 17 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747485593
