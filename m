Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4EE847F64
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711114697; cv=none; b=F5Xq6T3+ie/zMkVqKqNH4lek0D8IiRdBp9dIcOQWr8AxIuDrmeLEuTs4P5JMVcEzX4nz+T4AbS7855qIreRWHIe55kD+7ngcADg6ctxgbryGPaJaPpmeIz2OGlHjhCbhzKaUINVHzfVDCClNXh79JRtv4tVkeFcMpfDGnPsFi5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711114697; c=relaxed/simple;
	bh=3iHq38sH0BBlUUVNVwNh8ZpnQyhhQEAwH5YKdBSglt0=;
	h=To:Subject:From:Message-Id:Date; b=GQaFrdBavaLP9K64rrmNOYpkiUTGxJYc656sEAvE8ngmKUicrhd27p41wD/Xq33Hj3aFVccxbmUxaOa42Qy//txKPkNAjsSz6N6DN3q2fpYXdMLvTosL6+o02wzshNxbtZ2WotdGROzdBJa6UdOXcsSI69zFfNCd5w2z+u8A/ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMcXdNlh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMcXdNlh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70965C43399
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711114696;
	bh=3iHq38sH0BBlUUVNVwNh8ZpnQyhhQEAwH5YKdBSglt0=;
	h=To:Subject:From:Date:From;
	b=XMcXdNlhCCe6UB1AjdOIOPV1zCRrjvSSSLj2DUeOXKuqbJ1qMph/2VlAUp4JL3B5Y
	 4kfYrTxB+l21MegcxdRVIhfGDu4pQZiCJ2ne1KRDT7/yrslZhIkylO7OD52geH6RtD
	 kIx4lcDYoplo3617go/98EjBzdV9ZOzFNrzKGVhl48VMJJIvECU9wUVwtzMgncLTJE
	 wEw6CskcNCnXSd9saHBJMyqNSmX5HVIT0YWYpKjkmMC3eyehMJkGXxJsLlvKsE6koB
	 k4ofHsLr/Vk56hT8pvKjeNy9FGoWzgWjAKeJnaQNm54tKqG3LvgyxeOpKGTYqasbZ+
	 FvlZQKDAEWyjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C0FC54E71
	for <ddprobe@lists.linux.dev>; Fri, 22 Mar 2024 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171111469640.16321.2163982593215080687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c0ae1068456d0026352d1c2e0db6c0c581037f3799e690bd466030592215cc
Date: Fri, 22 Mar 2024 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711114696
