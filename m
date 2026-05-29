Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6943C1F51
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780051354; cv=none; b=BNv/AbQJ/8KLOlCFW8HSpX3Sas8KCVfTAq48rwNW8XtNM5arNlCictyTVqjHa7cm58fk0VzoxeRwsp9wMJs283bujFAb24VPlrskj+F1eL3fwus9ubfvzXtNRIXxNcNmm6a5jlaq14Zrd0Q0XAUiNfODUj3nQ7ucJ3eOBli6mLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780051354; c=relaxed/simple;
	bh=FeP8p7c2P+SEiHCgD/GVxQdKXcagBcOTUrLh9xfv4hc=;
	h=To:Subject:From:Message-Id:Date; b=uLmTQOIZYprGhnfB9wVxFboRzxjmRt/XFiOBKr6+WVRE66ArxvoZoZQS0c3wdXgGGHNYnlutjnqQAAnu4GAvvRu5+KQ2wOCothP668H72U4rE6jlImBiqi73PSIYddu+iiCRhJIrNDUAXVqD8Q6L2yI6BCKWEM95VPbOF90iE04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7OIkKSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7OIkKSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F38E3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780051354;
	bh=FeP8p7c2P+SEiHCgD/GVxQdKXcagBcOTUrLh9xfv4hc=;
	h=To:Subject:From:Date:From;
	b=d7OIkKSivtMb3sdsa1kUWyb72ZB7HleOxHaKvzsdSRlh6OJrWMYImgDBIyurAeIjh
	 hHNdyeV2BiwMn3ot87jRuWZ2XJWLHNsFJ+ly0P3wqeRiwoWHas8AEMBj0yEqS/YM3G
	 K8ePS97OLlY2QX8bHMF3jTgZDBJ+dtr0PO2Z3N7UowkHGkYVMti4bMwRmvvzfaAp4y
	 grdfBI5bPaandrJDnVJsuBlVH0wREoROp5oHYXshKPUz3dH2iIV/4Ack6ZIQk0c7Zr
	 4hJmvsCEvSoECPs19SRbeRL+csHp1q0dIQL0yZGjWbLAQQC7rWxv2llIrOF54jcUfG
	 lO8wkZOzpVQgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA0CCD6E43
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178005135370.20164.17017398979734292284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3b544ff6b766f14187f017898fe5128c196b39ba53d7e045e42e7976394ee7d
Date: Fri, 29 May 2026 10:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780051353
