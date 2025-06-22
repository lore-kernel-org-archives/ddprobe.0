Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789426ACC
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750605594; cv=none; b=YyupI4UJP8MlFurwHGuiWmCOPBG/nsWCZC03aH2c+ttXBvJjrbLMM8sKOFXTH+tr9rI1O9I/4h8Rznl2Th4Os+fnyZUXx7u8Zp3gHCExdtM9pYLX3GVvSjtoXTk0eQovsH2OQpCrUWS01U0szhQIhGBDx2UEDdrhW8CtkdSkHBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750605594; c=relaxed/simple;
	bh=fPyTTt328ZjaMs2O1ARaP4RtKDtFF+hHmu7GzO3Sn2w=;
	h=To:Subject:From:Message-Id:Date; b=UBqBK76nOb2OhQVEZvnJUy8ZMYCm9+sqQ4lT9/SPklT51s/20jiQGUE69wypPqFJQ5qsQD3iCqE5W5YV4+VdHGC/WxyleOeD/sWFcQF22CKFxHLl5EywcjuP9kKmDg+awvFkB1edcK7WgPKpFXII4JyZd3P/nAK14vHdbktzNOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5U5tQQL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5U5tQQL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A686FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750605593;
	bh=fPyTTt328ZjaMs2O1ARaP4RtKDtFF+hHmu7GzO3Sn2w=;
	h=To:Subject:From:Date:From;
	b=W5U5tQQLgtuFlzmwXsHFA68QqbBkLjkQF91pzYPPglafMhUdWIk29sDuyHWvBOiEM
	 BD382wypouKJWzykGwya39jHBx4FHhmD8SPXdfeatpXLrJUKY3T9FH9cEtfofXUxm+
	 eXV6bdgUJA3Ic2XrQ00MQxdKzWSZ/xfDwlk7T4g0hnivLXYl3lyXcHbxxhpXUqZm8r
	 Ij81UvL1v/5Q/p4XxGRYgROx9zhjSzy5eRFEjazqw7xEwPT2/FQUhMIYel6HuHQ7mX
	 FurOygnVGBxQhUw8LcIoAw5yFUohUIATjdhpkIq99QxOssaPk+jQDppmcSIVowuy7H
	 mshP7gjuXMa0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B48C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060559358.4434.13248747118805881202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636840aaefa3f7f750a2c16c72fd37b95e2472c29c8d430310550aca676a30f0
Date: Sun, 22 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750605593
