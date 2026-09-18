Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388C547DD42
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789762834; cv=none; b=VjnaZAvNdIBVYMzDtPLcj3sfhbtNStYtBRZjNQ5rOaaCS/jRoZIcf7NLP9t+151d545PHrBWQu0x4XZS1cYId0DU7eka9p3IoINGXdcjtGzqJbAg6ScH80FPqmfDe1pRbM/8EOuPuxYziSSw8BITbBzs9QoNoGRsNdBFmh3kNdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789762834; c=relaxed/simple;
	bh=/f63ZOB264W48pxrb+ZIay4IuIZJH/PIDgURsks73f4=;
	h=To:Subject:From:Message-Id:Date; b=BOO/taZaJAaGZM3T7GC4jeiUdbCB39ojEKa5l8KnD18wx4FoegqkE8S+c9Awf+dE1zmbUW4iDWMYoEAWmQxGxBMgXqqpLMn51gmSzE4mGt4GA0PAMn3KVqlG2BM9T/ODmaZypPKGMwQ3wW5pN/JE9y8yrVu88pb4XwCbx9aEZ9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKIu/P8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKIu/P8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9544C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789762833;
	bh=/f63ZOB264W48pxrb+ZIay4IuIZJH/PIDgURsks73f4=;
	h=To:Subject:From:Date:From;
	b=XKIu/P8hNXq3w+I4REhWmzngGypvEextyWATG+V7OOTLdPJu/CAVrHZPLuH3sIOKK
	 hOS7P0n/FKF5mvpTcwAvEqGcN9ds57Ojfdg8ILrAM6yBfnczuHHHMLdRPT3XwWbKBa
	 cN9acyODfNVbFLnR4E2gaeRzSlLnyW7QwAusvq14iS7zD9Dp9N8ZDn6F1LNnEjtaFy
	 qsFyrUpBIsUtvw4KdlnP1/k4R5T8hNqehn9UdEdGnti7IaZUO+d47onbu6xsAIitHB
	 dE+oisXm4oCl4Cuj1VFNLs/lQJdc2rOHvuXU+NPse8IXEkD+ZFBC3s+8EMHkbKmVi9
	 LpfiQGP3+cVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC12BC982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976283369.18535.5562644937328698942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc454ce62007ff9ac44e201f0d350f6d91a4144bd5947ec4e9d7df29daed261
Date: Fri, 18 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789762833
