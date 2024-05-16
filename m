Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BC1EBB
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 01:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715824343; cv=none; b=lfwTr520wZQfh9NgpcwHnUICR57PZZYltJeLRuvp0GU5tEKKO6LiYdXuleBamRGzHogATezo0vHbbZ2mbrPo5Lmg92U8/BvptpsX2CDJ5nrctTW3gglH8alHI9YMDpqu7BbAwAFPI6hlBr2ME737H1gy1g5W0IB9QnMAqMTwFFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715824343; c=relaxed/simple;
	bh=Gf0+y/CVdUATwQ47X40eP2nY1M+YkPZFrOZG1KI4Ofc=;
	h=To:Subject:From:Message-Id:Date; b=U9ExORTr6Aazc9AMidNMnACG9IIb9d/11NQanOR6ha6rzr9pJSTQ1+OswOCd/ulTiD6bq17mvcpa6dzv+mkD2UF53eRDMgFIRfEepgZCM5GT+NyHRKFpZPz8MIs7FDRX9ykGGFyJMbtQZefeO5nNuXx3l8XTNKtxW+XPPxEyZZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCdNURvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCdNURvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 112C6C116B1
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 01:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715824343;
	bh=Gf0+y/CVdUATwQ47X40eP2nY1M+YkPZFrOZG1KI4Ofc=;
	h=To:Subject:From:Date:From;
	b=LCdNURvXRLkkdNQzHMB1Vd6lsPb6qfWCG0ET1ru244agVcnckZjId9/BGqVv7lUDl
	 zLf8CnFzFMBANbKMOmU5IlKFE00qSUUBqugB0q1Ci2kIjLeAefusLCmLBnNcq/FysP
	 +UoewiUU4Lb8uweDI5rA9jnAhN82ZQRK8vmwkgvaxZdYjgCYpIZvZehKU3eCNWMFbi
	 4boHcppQLeYiK/kOrfYRlkrCMoFZ9q8xiOieR4PCL3sO+H2GXQZEzzDXMjLFX2/YhB
	 Kdyzi9t06tvqm0ylSTgkgG6mJ5u+0DjTguObwV0jpUv4+7KUgJzK8+m3psvSPSUiya
	 C4QavPCA4WJxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBA48C25B75
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 01:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171582434281.13964.5579306612076074683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 559e28a85dd26a39a468075dbbf91db8287e9850f3b16dbc254748061cdb0f5d
Date: Thu, 16 May 2024 01:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715824342
