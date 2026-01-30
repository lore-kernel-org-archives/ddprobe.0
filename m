Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948136826D
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769815434; cv=none; b=TAw2XxANbJkkypYzbL2ntujWnNYmZzw9q8z6WPYNqw0qS1UvD3ah+yHMp/OBV/NRRqfxq65PErBWATHCt8iopW/fZ6OP262/VeASzvrmhz4Xr29/LGOncyLZro4tQQgSXukg8PxFHoxUdVlFStC0Oxmc2wcNktwcUmtCQlxTDZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769815434; c=relaxed/simple;
	bh=gNdqBRDMs6wWerwnjtwSwSOv8GXQvWSfY7h2pTx61IU=;
	h=To:Subject:From:Message-Id:Date; b=EnN+i61o3BZAGRFpP1Z0zNqrPn6FrlUL2lg14h5N5xJScZ0OL2EFB/OIlGDjLKbDcZlmCnS96hSQTLiEiL1OuJfrt7GqQYszQ/n5FBbDBMvcryKDt0xi5kJcNugh6oqAQQzzRvwtItY8SHv/UKErrAAQeyhrfyAvQb+nyQnB7ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEU7onCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEU7onCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6F8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769815433;
	bh=gNdqBRDMs6wWerwnjtwSwSOv8GXQvWSfY7h2pTx61IU=;
	h=To:Subject:From:Date:From;
	b=BEU7onCP8LvHU/A2HXSfTQpcjhs1RM5NDsoWJb4bUPFnVfhqLwCvm1lU0Tb0CPogi
	 LUpQnv86C1pkuFaNEb9Qb855noT7XU46VMLQr7804tPvT4KvMN3C3TRnjjKpUbwP+i
	 dhn5B3Llf4oPikoD7apdbFUFmcIthZqYpr7cQ2jHwHY2w5rEgaUFvhdT6nGY9/R0vm
	 KG3A8ZCjkKK/gWJf2eZ2hRNUb9Emsed0Hom4/rLfbcDpIZNY/s0PTA4J8ZBC0htN8x
	 L+BWgxoJtOSJeVFOlVMPnd28Vz2KrP7nghGn03S4u5J5eX/ZEWCT5+8Jb+RMbeHbaT
	 TlYu2woyL0ZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DC1E6BF3C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981543357.14878.17577368172524346934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7db03acfe3ccaa0a5452703b8d095bf8f1a547771e0c1c463267c6ed1c2f230
Date: Fri, 30 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769815433
