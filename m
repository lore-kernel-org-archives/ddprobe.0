Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC974052A6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785505234; cv=none; b=fNsGewWMJjjXvPTrELTL0pGu2ztvtJLUIvj4Ym/4/M2G5AxE6kA0NxZ+VHw+Uisnmya0FLGHkgM5UpKkNIiS2tKLkbAL1kQDl6B4JHFuTTgBuMTAmkRQpyNVF4ecSWtwDIUrS0zPRCP7dFgkkrEMbuuT/QLbSz8xS4+dXg/LkC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785505234; c=relaxed/simple;
	bh=krJF7BrIZWdHxBSJE6LeQB9NxtcbEPVSvhBhbez1TV0=;
	h=To:Subject:From:Message-Id:Date; b=MwV8xI4ZjZU9KIk0heibGHimlV11EwBBjAkGpg5tpY2ErsjrV81lJBRmefvZh15EPzZ9pviTVmnmeZ07gCsQTz0je5K65q5lQpZ8Bvuy3WBpDU+qp9z4SoMXnQxYs6+M5f1CzIuUUplWDSFqTEpkkc7eYtlLx2izQVN37Ir0ZIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nCLscM+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nCLscM+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC64C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785505233;
	bh=krJF7BrIZWdHxBSJE6LeQB9NxtcbEPVSvhBhbez1TV0=;
	h=To:Subject:From:Date:From;
	b=nCLscM+bx3quoJelxSSuPnuVBfQz7PoA6uf38JTk+1yBxY6rlLi+5Su0k2DY34q0m
	 xWO/d3Pyskju9ufB+18K3gmde8HCf3kdkwFXjLs4OkbpIYzdVP5P10sEFz5+H/mGfS
	 RvFeW3d8eKEYhtW5EBbNh7pe5qswoE09eRNrd7v9tzZb8vmBJ+3yJIkELYonwi2eeS
	 zvNTvGmxnxuqAcqMW0ZJZSoOrMvUz+WwHLz0fqVlcjhJQAOX5P5j49OiAYKSEf847W
	 sdORRYIjlhrg8z73taR2WZntAJdH8oe9LtgW9KOgpm5XfXAdeV6LWiROuVIglzt7pn
	 Ab/0nqM7T+kZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6EBC5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550523369.28996.17748074888555669229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a06a7741b15e671a15b237c072826ba0f9b2f663ec71e4961c8865a55fce71
Date: Fri, 31 Jul 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785505233
