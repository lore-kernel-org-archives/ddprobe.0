Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0392E7365
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786816234; cv=none; b=MVr++Uta57j+2hpSDrGM3qk1PfJcIG6QjZruFiXsUosG3P2twhGkgAYR8RtsxQ3gqSsUYFwWHFZoOowA0MeSEDnijubFmYHUmYiNrcQl8CeK77p3i6/aTfabTjK9RFQIaVGdUzLVlXIfcw/XLxmsQxEatzS6MjDfPbQKcxZGcXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786816234; c=relaxed/simple;
	bh=pYBoNy1kVr2YDJHznT9HmexFsIrx8OMzxWpjD9+37JY=;
	h=To:Subject:From:Message-Id:Date; b=GXl0nsKBgtjaRXOlqTOxlpRwQW3VjzA0atS4ocEcuvsUmx8rIGJzxyZkZ8cwuGxyTcnaKZT0/2eDfT+e3TsoTvv+posRYo7xpit9Qq+fCoj3se9lZ9rIz6pduKxudoXA7YRZrSK3xcE9UxyenGmrdH18747qgzyZX85IlqgqnWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUKRktEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUKRktEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D52E6C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786816233;
	bh=pYBoNy1kVr2YDJHznT9HmexFsIrx8OMzxWpjD9+37JY=;
	h=To:Subject:From:Date:From;
	b=LUKRktEYHvf5gR7RwA0nQPyQBpyXTc9xmacYCxdgPoa5ywU7rNqwSOBsokbXYZYAa
	 lLNbx6xCSnTSpX3FOxS06sJ2gubMhm4G8sCS/Oids7HpImrgB8oHcseriC7iXNjl/X
	 Ty5X9f7yWZ1ibS90VshGIpNccUhYXEBD1ViT0mVuR7XDQo7KG8/f8EgnnKQQmnKoR+
	 +OW+rSRuC+HY6oPlVIwU46CSZejxfWUwVsX4BYysqs+4isegZgh+8Mh0XweUEnsiPT
	 8okunsx2sJmBsDqRZxJloK8u2CHN9rjIQ0tD0h+ak9QkU30CbhjSaQGGGsNPIK4Nge
	 IM4VmNZRPh7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16C1C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681623368.19109.59787688933460386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf072f11efd1a486ef997c6739ed77af262afd637ecaf437009b6b211366d38e
Date: Sat, 15 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786816233
