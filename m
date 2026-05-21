Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A20385D86
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779382954; cv=none; b=MYYgiZRRYGqRk32bifmVgHWhHIcCamxVu0oLMZgHldN4qjVewamJ6Zq0jwyXZENHOa+bsDaZZ/99IgBgof1EkB6x5MzgX9gemXDbjshbjcQIgmit+30LCSyK3SNL+Lnn56PsU48QY/bA3Xw+rO9RJeXfG61OxcwcUgsdaIJaE5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779382954; c=relaxed/simple;
	bh=ojQYCSg1l8vFmJgjDW41n3k6IfSYJ+ntutimB7GsNJ8=;
	h=To:Subject:From:Message-Id:Date; b=Nve4hEaJIBjYqvYZm7GPKvUGlTufHxPMfalTiId4vzCSoIH391eLxXZcaBOpKLyqBSOWcorrlAsB5wRncyY1yhSa29Gbt7Ih42BMSkgUrIi69xR7AiMoglXfmXdZYOrQQbjNFFARqkSrAUNmKQ64j5d0XjEv0o/T64HXjPv+5Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co5a3jJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co5a3jJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D9AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779382953;
	bh=ojQYCSg1l8vFmJgjDW41n3k6IfSYJ+ntutimB7GsNJ8=;
	h=To:Subject:From:Date:From;
	b=Co5a3jJi8yElxQHSqBpyk1cuevaSC5R/tW5LFq4JCNZqK52JlhyHX9ndApD22UOhu
	 UHff/Rf7FTfw+cZyPBYp21CtuGw1pfSrqRa1J9MdnqqK4c/ImZgQ6bvnjVj0oC8JJJ
	 R9PclbDcGC951wBiRjBUuU4BMsZPFqQqE3iE6Sm0W3Y01TDVoujTxabwD1y//0iOt9
	 Onh56/oNdeCQzmfduHB0sbkxkITTvYug8BwkkGEsM6F4LIRm9/TyLMuzdzQWT+ggR3
	 cM3wL8xMJ6ME59qWNm0OzPhrJZppIs3byhdZc7s9Xul93WibWLybScrDTW1ETC0Xdh
	 RZZsG1i/tdanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD001CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938295368.24051.639630846154766921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6209991395cd21879af3f3edc5e9b9eef6633c9998a261f8ebd5ebddd68f4fb
Date: Thu, 21 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779382953
