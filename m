Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BEB286417
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771278293; cv=none; b=eAc+nO0qDjUUBt/7xelLxOl/+pDtwWCtE2FALyvLCZZej1+KrdgF2g47veDwxxxAQNrWwNM9DlFTl/5JXb+hli09HtD39V4V4St9nU+MZShBtf2KjoiOPYYZrBFHY+iPLLJPPKE8jQGESCzWqgKYA7e5HqqgqDh7fGkEcoQCTqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771278293; c=relaxed/simple;
	bh=Eigg/TXDJzZjG13NL8r591q6ZHjuOneoig2U/u6cjrU=;
	h=To:Subject:From:Message-Id:Date; b=Yt+FaGRkWLVvd+KvFglYusIfEAD2L2j1L52D7Nv4ZG2h7baihwecUdN+YAXqH692E14vqjDQyMss+0T+SLJt5GGDBjYt9hfFeAOFM6HJmxD6Qkgs1ChoBVMP3t0P4LtC49gPsS0GZCYvwTYgTNPElyH6bZK/11x1XBhbCBoGCsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaXPmS+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaXPmS+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A5DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771278293;
	bh=Eigg/TXDJzZjG13NL8r591q6ZHjuOneoig2U/u6cjrU=;
	h=To:Subject:From:Date:From;
	b=eaXPmS+QuHlPwWHFolUsolRb2L5lDN19VM642z9m2LyFbmOcFBwJ61UjZOxtj8dSj
	 DMF/aqIEvpkrpWaJnghP799odhZ9HHV+1jkV8MyKy/T/g/YABjL7SQRPDv1269GGyr
	 soOJDcCz++F0ooCQ9KpZCwHVzSbEFR2y0zvkpAnf5nklFRJofLnRQdh1MIi8TzGRGN
	 nRoRdfGC7rT/mupEL7+8lTRDyCbq70Cf5rbpyGHMUaxCD9Fe6IBECo2lyZWuC+ofjR
	 fGlQsUTdVYHzJ9JV7jiEfj6+aImIFnDnXivYqPGcPZ9YP+AP6LEYoD1XzFx1En5W0U
	 JDnK3fZQzehxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D08E8383C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177127829358.11748.14749998789589194372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509cd8054f2c2d314c1233ae7bdecde13f6c264ec1410b68a94f869f3fc0031e
Date: Mon, 16 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771278293
