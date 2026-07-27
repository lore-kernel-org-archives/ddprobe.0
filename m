Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D59E275AEB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785192034; cv=none; b=EPlvFRfiPjpOc1FhApMAaN1bPYKuHyXnmWI7WFuqFxawykeGSKjzYnkdsGTA0v3pfQF+wdG/IXx4PlanVtCmS6AqST4KgUkxw5g/Ar06Kh3yMvW9mbOPfUaF7XN70MIZZ/L7+u/cfSknAAWAGg3uQuguwoaaa9bRr7NJBBsGh4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785192034; c=relaxed/simple;
	bh=gd5aGLbPYS7FS9LlbEFGKlXRR5u6EO+obsmwOq+R7LQ=;
	h=To:Subject:From:Message-Id:Date; b=MPW53NeBGy6BRi3QKyVNsomB7W9je9j0e+1HMvjYfdDutczUkztHM/qjO6D5/cKdj4tu1a6KwppthU8F81O0tw/6dwZeAzbj2rECKHzvhcnwvwSk58ZYZ/IH43uTVeRXioCGCt4b3R3bPPAXVTaAJb/byLqUaYbiqe8IoNmW9lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pfedbwsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pfedbwsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4FDC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785192033;
	bh=gd5aGLbPYS7FS9LlbEFGKlXRR5u6EO+obsmwOq+R7LQ=;
	h=To:Subject:From:Date:From;
	b=PfedbwsvXvEjlJujvmlzfmliBJcelr6sCKV9UWZvdiP4qV2xWU3k4l0LOOdqDWEsV
	 tVarNDwdYlnBY+3I8Z/86jMsZHZXAt48GPOGa+D67F/6XrKhzfMipy/E+0uRhXf9h7
	 xFeEYMzsWLBd5EmCFrA3/XbU0UP74vt+Yv7JfWCj42cE5bbhx5BuHRF4gdJ/u+prg+
	 FujcQenw6ReeyrKGQMU9cTZisdQLePgJjFt32huR844XnBQDcDF6pD3tduTrzqaq17
	 lDI9nRoqu4f/QH8m2TU5aJwRQ20YnjxYtCo3x7ehO23zhBuZ9JQTQNlhnbQjAJp5Qk
	 QuUovCScYFnYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA304C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519203368.28586.917439397733162162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97f51a5cf1785ccf8b75accf41a7cfba875b0c348d9a5a588033cedfb7dcaf1f
Date: Mon, 27 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785192033
