Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245AA189F37
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724924754; cv=none; b=aDvZSNhE9VmwtHHJB7h/EP/UYV+o+QGi0CRhifi7DtIOSsyzRJndQGvglsY7IcA/Y4KP+/g3iG/BVdrwGRrpDwxluHEpRRoa4xTHt9Nd5JDFsr7R4/S1dqS7ZwhaEp59I455OF6e3ibryCpQRYx/Z9FDGMemI+hXSIM7vEjPc6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724924754; c=relaxed/simple;
	bh=+lntCAeavv1/T59wvFJu/GkTJbGpRktnlEOy6UaGu0s=;
	h=To:Subject:From:Message-Id:Date; b=Cjeb3JxaxWEOnaoO2j1IXwEyV5elOkoTMyUaNsZvOiLQeGpwXC/W8phHCSHhHDj/PoJEqJmkpWbyr/OUmNXTJ0DzhQd/E6yspnIBPTJbiYurON4Sbp083PM0dXCLPDitR2hnJxTqIbLlaaTxZ5voEi5T2B9VY9r2DXV9U+CM9tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LarDkhLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LarDkhLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6907C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724924753;
	bh=+lntCAeavv1/T59wvFJu/GkTJbGpRktnlEOy6UaGu0s=;
	h=To:Subject:From:Date:From;
	b=LarDkhLZOTycKpR6C7VdxENwv/BHkEPGC1JJj4+s+9au2lgs6JFScfgj9/e/rbSlv
	 DHppQlurdXRmX/aO3Ou2gQsCdXoxolgX+E1UFChrPc9GYMdNxyYKNeZMuvspHIjruI
	 IBm+yqypgtZ3b+uiY/pQhXeuNOGXil7WYpTqiiT0EEPedyWwoW0OIFy492Bke0XZgS
	 rwyqfGXnbwlnihvfwUBBTiXRCIOoCxtnW1hxGaUckWUcsTPqCbI0nqh3ZanM0A2vKE
	 PfswVm4zAnx6vzswWY6v3v97/dxswZVJfv5A7siIqHA8ou7jcCARd4kWvy5Z65nEHO
	 cCfLT0ekgCz8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DBC83013
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492475360.18384.4874508474828102556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c27e0fb32fdca71c11506db7d6efcf94c7eaa2f2e06db7e2a3d1def00f0c3d
Date: Thu, 29 Aug 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724924753
