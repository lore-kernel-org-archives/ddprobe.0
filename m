Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3EA1A6814
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773969294; cv=none; b=sdoJSa8iz5el0TYu2JbGHWymYk0GcDR+JBCYjkHTXbUJNzxiuUTh4bNJCkU0NKXNsNGcZR74dpSMasV4UwCHLx+Xn2qsyeDI+ZRUuaGbESZKoM1UscmV2jbTTWKrG+EI9qmJ9e5vF2+DtBSjeJ2X+cZauqJ7F3PIT7CUyY7PlTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773969294; c=relaxed/simple;
	bh=J0mLhiQczhht0HTFWv1UNIJkt/kXa1bYnS+l1wgSDc4=;
	h=To:Subject:From:Message-Id:Date; b=P6dC+yk6DYpCJMLLJqXQ22seRPos9KKsT2B2QSheG5aR0+vQCPQtGCzze/Q838Ppg4qePxoPO+nKrx1Qgp2ih2bG3WMN1PD9HX2XyyGGuUSw0cJic/0BRnHmBZ8so9fXuIQIwTPkcN5JYfthPHt0otif0bBSPbnV7aq7vXNLM28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAlzkaGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAlzkaGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E84C19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773969293;
	bh=J0mLhiQczhht0HTFWv1UNIJkt/kXa1bYnS+l1wgSDc4=;
	h=To:Subject:From:Date:From;
	b=vAlzkaGsk1TzLL9EcedpVJ7P8ZFZY/LEsOeH4DLcImRnB+Eetm52XmGSX78jkXKTj
	 SOicYYvwliT1GrEUX7HfXRwvU6wXfDgWbbiY22vm6b/p8RzFEEELfSKqWgM58MXhow
	 2uuCSNC/ZAUbB9gMgCi2EioJWgEbphJImK2mRF7VyfIH4jWHeX5A2OrP1IYTZcd8am
	 eciJJ72goGGHs8D1+XoK1TM2b0KrIdYrpd/LcwrBc87T0h8yCdbYzK2Gb7h14hgBF6
	 GJZbV19iGhynmYT9KIPaqQLeUaQfTKwM1At7zBQO00abNEeA4a/qL4YwDXcLTKcfhX
	 PNhj7tN/JbRLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F831093163
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396929357.8785.3688613717552418720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef0349d2bc0c5c0fe6886bb8b1791217c947214d195f3f8e47040b3f7fd4c97
Date: Fri, 20 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773969293
