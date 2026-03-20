Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F287B368968
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774001094; cv=none; b=qo88HSveubAJoOdSv0Fx8XNT4jOKLg61ZCfv/jo3q+Z9lRUorNqsGOsn41N7Z6IByDDNnKOyEA/Szo1YlSETZPgpKrj06Q/fHOs3L6WylPtnEBC9lrxrQTgM3jGUuaGCIzGN2S0sWYxpAqE2xl1RQPMpNp932HSqFN8IInnVQgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774001094; c=relaxed/simple;
	bh=jCqQZbvSLP0iXgGulN8X9ixGR9V2TUlb7wGyx3yzv1k=;
	h=To:Subject:From:Message-Id:Date; b=IZnL+9K+rRupEoAjyW7RgNYDnrME6G+smVkKP+OLH6V8U/ApWr1BeECCMRtmnubcB29/DfFCuwoOtrZ+Ha6p0zUX9f9clNMqR/y4nIP9GkNd93U73Po871OokWXyJv+qe4cFlAkri8WGB7z0Tn4ObrqWhYpO8hJZ7QgD7t8rf1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhfR86S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhfR86S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4327C2BCB2
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774001093;
	bh=jCqQZbvSLP0iXgGulN8X9ixGR9V2TUlb7wGyx3yzv1k=;
	h=To:Subject:From:Date:From;
	b=WhfR86S7D4uZJ+VFzBJa7WAyFleFkzeRQYprXzlUMHUu22qN8/gnJ4R2+5vpSVGGg
	 O7hi3MqQuTqA3OUZNFutMsXWvZAZsmy+CejDZKLO4iAoh2iQGyR/IrDayORD844yV+
	 ppcPbAopQqalXwVpgohwwPcnbsuM9hA2OWmnNrolIfb0tsfCJCB8zN5u7cn8Q6Ghzl
	 ZzylfEfbHA3VWvIMPqAAmbvXXDWYZuFpGAVAJklH37T2Q1rT/UkeQ3DslM8v9r92uK
	 6UAFF5TX50QtlJtl6OasGFcYqFyaLKrZrxVfkAO65eMOihHqPU2bbj1olZyw5/e46j
	 gkmETncHHV+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2D108B8E4
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 10:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177400109358.4028.17517409867885130918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3296443ec5a2fc7974e61ae43822f9f2c4f76390e5afa4a1b10bb0a481b4937
Date: Fri, 20 Mar 2026 10:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774001093
