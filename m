Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194821DF736
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767108834; cv=none; b=KFKD1yQxDE9SLMuUaU34WyOLgqtXKQh3tpQGkryEfdIxjYAFQ3SKW4z0jCfcp/8/ox+rm6t+Lt/zhniOYtL/eFrctjJQXEo+s6NjBczedCv8M7lvyWFYLgEjv0k633N7uLKplOgso2ZxbrGkwxK8Th2D0xhidLFw/9DFWVmzcKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767108834; c=relaxed/simple;
	bh=f5aWJ3ctafPF+HMuJNm9bdGCZlH7NnRjLdczNY9BlFw=;
	h=To:Subject:From:Message-Id:Date; b=CVBp5elh04h0W9KpduUygcd4mUxd4fwHQvjfC/x9JnSf5od2SLTB5se5VOMGaI3y2elCbvS+Dr2aW804okWyzeufvLryYclmu3vsUZ17BsuBfWf6HlnzWhOdXok1dR+woECIlXLFao6GJX/uLEj70J0Rj71ECfSB1g21gibABV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGLeVgms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGLeVgms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE6DC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767108833;
	bh=f5aWJ3ctafPF+HMuJNm9bdGCZlH7NnRjLdczNY9BlFw=;
	h=To:Subject:From:Date:From;
	b=LGLeVgmsPJYVDM/ollW4A83pSMxG53px9CK21k/dby6C0zz+ijdRmFYT7Q7qfaKWU
	 nSmmwI6bK0HJueLAaUeHx+PG0AOS+/4O2r2KTywjNIYCaxMamkbkv5MYVYV27LOEvt
	 siTFOy3bvTPYP/sNX1W4dM6seFI0SuAAATCttHhukFcyE8/5A+EV+A/4mTw/GvxcgG
	 LXPXcHNt+v/h6L3WGY6yEtw9Hb2m8Awtzd0HYEArDe9+K1fMy4J7krVL5pDzGFvYr1
	 PNfHdS0gy1qRRu8eGDmuF0e6XfiqWhvwuN0EBvyrjGZF2e0E0CyY7BZp4sBwapu+9B
	 DgWq6S7kznmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98444EE020B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710883358.21374.5465876439843819195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffd842ae98c991532d4d0db01c1ad70b8e84fa83d0e6150ff3c2cbd51ae0556
Date: Tue, 30 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767108833
