Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548FD12B94
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789517434; cv=none; b=Bm6rYwAtjnraVxHCGO0ke0yuPSJ2jjcMPk/UDng1/XCscMjb7oIaXoVWnxbwDeWByuLwdYTo2kkGMwL6E88phQrwsA5Dw4OuRzHUV5ycPnpDvEr2LINgNULu+G2VtB/g4YfWFDxNkC/kaUg9bE0VVYtn7JQ2w7jymDO8YO7tAkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789517434; c=relaxed/simple;
	bh=EUk+ebaEblCs0bNkKuBKa+5yLYDE8WvDS6Z3MVhTfP4=;
	h=To:Subject:From:Message-Id:Date; b=Xngn3FoGJRPpRZNHOz8nrDtzBf0EJdNaKWLpaP30XCyWUXEs95YdRarawnD31U0vNMR11wZqEk5wX27NWnIa0OyRR+fHJvlKzftipGAYfaL4bte0S+wO/SM9JB6V+W9lnk5nT4qcIaROx7zV3OqRkEk1mx8xSVZg8rbQF+7Lq14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7Sh8e3e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7Sh8e3e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28FEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789517433;
	bh=EUk+ebaEblCs0bNkKuBKa+5yLYDE8WvDS6Z3MVhTfP4=;
	h=To:Subject:From:Date:From;
	b=h7Sh8e3ez8k0krYveh8LLgzq5Ddl4Iq1MgCoEk1AxtWySvPXD2kPlcfcIHN6P74w8
	 V20JWdLAgkUfbzXnTHkFcuWKt5jqshQtT5g1wlwMEWcnYBpf9wfacynrDQMYBJwKCh
	 18IqpGwtHMZ1911k1E6Q0wvIj2OkXgb6LO9cNsas12x8E6a8f1iKjRPRR+eKPEDyds
	 lmcjyhS/rDXFMmGjKGlZCOPUL4mE7VuOI8YrX1e2B0aO26B3ien9n6iM+tNv4xf2Jv
	 +CNT82Da+UMU8Jmr968Q5EYX3TJunA59vmyGPC2c8yI7R9Ou5Puhd50GitdCqb2GON
	 ssy3d4rZPNkbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A3C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951743368.6902.5363774785767498301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f9085c29a8c7e2d9c2d3cb2d216357dad0df313e384617f5bdec59f62b3e311
Date: Wed, 16 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789517433
