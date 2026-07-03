Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457E62DEA8C
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783108114; cv=none; b=nDul2mJuJTMap2omfL0zrZ0Ub8T3EsXyCg9WdTHjX8zSHlW9LAGLI8PM/JU2+OPy3DqhLg4768QHdQoCbMy9s122yutsDtBbeVSKNzyWA2fk+29pkHua/lNCPqhQFkN5GKy03VRX4NwPUDk0ru0mpY5dpNrwjLcqQAYsj8jIjV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783108114; c=relaxed/simple;
	bh=BvkEHUPpIm/HcaTSkhGSYcj9VpkC96S0OF1ofW69oSQ=;
	h=To:Subject:From:Message-Id:Date; b=q65FGDWo1PDShBihMcQ3DzYP++he8dGperrS7BjShj/0FTknodBEj146xutFde8BRa0gg5kcj9r5yfDfULaq9iwq3QPnciO81pYOujxuJ/+H7GwrWS7cAW1GXuhtBZMVp8OQ7KzVgX+vLl/jrpKT1itmon3QDQ+hFUESIA9tgmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VS/KrNWB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VS/KrNWB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F7C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783108113;
	bh=BvkEHUPpIm/HcaTSkhGSYcj9VpkC96S0OF1ofW69oSQ=;
	h=To:Subject:From:Date:From;
	b=VS/KrNWBQnIzhhX5OL2Xs4vJpelpPoTl8EoSHwEXzLcAJaPrcRm8G09RWICpm5v+W
	 rJr+JX7+lb6Jv2cGKS9hE1PZTQQ3uWBaZM58yRxdYQ3c+BFnCIU8ZO0VzFafTIcRU+
	 k8oFPRqAkB0B/TlZmjHTMAPU5m82s81w9w+cJwTXg3YGTbyt3NriSm2ySB4q9JhKyA
	 v4mphdbD4+l/rVdhWcO9ETOUE+eIyoafXojLUgF8Lh4VNYAZodCf8vjw/6CDgBMdUB
	 W1dotYUXLKkffEzq4x09ZthPWGXVO3JUMQwhpRNLeUPoJ1ssDVLmVsXA8WzE73XvLs
	 +1pIS7VVC9leA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8B8C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310811368.23712.16527263851074779017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e658ce2b3a2daeb7e6982801fac188e3c10e9350431caa982d4730375a1eb7
Date: Fri, 03 Jul 2026 19:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783108113
