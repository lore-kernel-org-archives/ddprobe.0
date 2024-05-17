Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D4A41A2C1E
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715979143; cv=none; b=cNzcoLCSE8FOhYZ8aJwBK9iVEx3ATX2vbQmqyH/5m4DlopAEmTM9oIGthkTtZvuHhSOnqtNyprSAlepLVZ1+pbzy+KEEyGIcy0uo9k+ruRU1O1oa1AdZqQMCA37oISBgQYZrMCGu8vD/KKexkWG9tIuAtu95QemC0VL9HzzINT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715979143; c=relaxed/simple;
	bh=cT2JzYVRBW4JuZTpxCX3ow6JQDJ/TyLdzowO84ny2WU=;
	h=To:Subject:From:Message-Id:Date; b=AATlqamAqW8D0bi0S/ZI6Z2N+Rh7Ueidw4tAAncWkPP0Hw11gfLX9N/Y1lcioDF2iA2Pd2FJYq8K8KqOMzahFzgIYhAf2iLCrvRuATAfI5IY6Dttix/rW5JTVwmdJnqHTvZkyenwTmNcSqRaICPFaryzSS2MDiP5BcXAnG8MT+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBULXtxR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBULXtxR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E434EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715979142;
	bh=cT2JzYVRBW4JuZTpxCX3ow6JQDJ/TyLdzowO84ny2WU=;
	h=To:Subject:From:Date:From;
	b=GBULXtxR/DCqTlGovyrgM3MpyxRzbMCOclk5QatPwQD7pdAwNXxDgEmfKMgnfBQBB
	 UaEyUUTmDoiEsB5mQhXHKWPwRgk/+25EH1oUiRgAR2cAgWbEdThklt+a4RVXfqdlWZ
	 46tG/gxXy2AIG0BUoW9rKZjc5ncydNy8xlzRI1DmAXO75XSj6w5gRBO1zm6Qwu7213
	 YQD+h4ZGwz4yPfOlsyXOHZfxEj4NuWDNDLmYMOcfranG9hQb7/a+imLbcAunK/qHZx
	 ljB6b+dJOzgYjFthEgfa+6ArpmAtRnVe8UnWceLhr2fxjAi6jL85Fa7Tny4tyndFka
	 s6IR69ejImbwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AB4C04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 20:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171597914278.26674.17610331490892810432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ecafb694b651cccba7bb49ce52999d3b29ba0daca11303549171c755ad1322
Date: Fri, 17 May 2024 20:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715979142
