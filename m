Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5C740870
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720823963; cv=none; b=Q01pUo+dVy5An1Uzbi5x2nU9QFNiBhgahfYR8hFLI+MFOzfWfPoxscXZCV4UY0UloI2dQ45j0h/VCC2FiRCwmF5VkOaKCbHx01GU+uTjHgat9tCXdlM33JnJTdE4dY8UiN41KXQia5E9gQV60SUMXqU3vzzoh5BRqHhxZY1DgJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720823963; c=relaxed/simple;
	bh=REiVycsIOzLLrt43/u6PXFWCtSO/pXQ4EYNIjQz290w=;
	h=To:Subject:From:Message-Id:Date; b=mdk630TRHZRoBCyuZbtbmUcn0i/mxMkh2DbN4wYcCDDsn9ShaKNHDkAGH3xaGZaZkqkZcpSRcGSvHoIoGpDWCEPLsX7j1t3VrzFH8SZXUBCsnQe7mhj3I64gqYvJMgH6cRWa+jOtT0Hrscbmjd+jd6GuYF45H8UqfQRBQSd/TUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wf3/nQOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wf3/nQOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB8AC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720823962;
	bh=REiVycsIOzLLrt43/u6PXFWCtSO/pXQ4EYNIjQz290w=;
	h=To:Subject:From:Date:From;
	b=Wf3/nQOgjs16xNc/ZKl2+1fXY61FvnJNbHsOO82RFCMobW7ufpM7tRbx64i8f35Ui
	 vlfjO/QZ871+fCP/GzVg2GRqordI0cYqlI82wg6YjFj8vezdXOKR8zbGPQtx2snGHK
	 RIPngF6zMye3k/5blokjfsXg+51SdgvVLwBH/OrVnLdeIojZVac6S3LuPrEry+M+H7
	 GQ0ZF1YFdWF61/hJBDUSJ6tuVHu9vMVcS9jJGKCGokvBA2I5PiddFFqprTA+6vgUd4
	 96iIATIcA7k8KMKs5Skw3iywL5KCg+tGI47puxfc2HhChX6uRDxzUu7exgVcUvdwm3
	 Qj1LtvQ9szEpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AC2C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 22:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172082396280.18888.14314320903115372307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a0ba2b3646c1bd68d294cc14084708b06d2e587fe763dacc7c6d2c7a815d12
Date: Fri, 12 Jul 2024 22:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720823962
