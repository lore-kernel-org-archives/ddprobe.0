Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C643E2FE05A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765759373; cv=none; b=ly0SJdWrZrmuQEgYGX9miC72WRBQETXu63RQ80Ux5JN82G4rlZOEyZHCAEKDPlSZZlZ5KNUoPO8DDrdZ9GDw4VaPMIu4ddssz8yd6XuDhZklrpuY4rl7kbFaLhuBVYH2RCc9vpUDbOCk6Gv3k0XdpPQ4gN1LMnJEaA81fK3mSX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765759373; c=relaxed/simple;
	bh=Qie1uPItwMCBnNDUfpLnw3KG4xSfhxT580ud482Flws=;
	h=To:Subject:From:Message-Id:Date; b=sp3QdQ3G0xrcPNZLr5yLHsOrzUaxB86Y74KVeOcpsXwcf/LAuOSK+JVRm3PajWytrWqAoIgwxpYcClJo0E+VCDSU3dsgp+NGrA5chGciUsoyOVph8y0eK6YDh8eAnR1bf9tdR0q0arFJPYlt9fAWG+J5/QHdz+7NiZU5DMtldcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVELhYms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVELhYms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9963C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765759373;
	bh=Qie1uPItwMCBnNDUfpLnw3KG4xSfhxT580ud482Flws=;
	h=To:Subject:From:Date:From;
	b=eVELhYmsOB5hScJrlVtUUBDf4giKTf7E9B9pE5IbDIkA1yH/U9inIWjY36rHCRUAo
	 jjBD7qbJ34YQwwIabrdAudENyrWum/htC3cYwVE0jJChkbSBxjqUdnnCH7Gi6Na1vb
	 N20/9JdYKPHbLxlz4/DBXbhmTCXrczu0IzkvZwinG1hTjnHUCb4ftDViOQQXP6C6hb
	 O/m1oNcgFaKmqPUCg7jeIoqLLftd7oJuFhGiLBCEZ0WGUSgoCTxw4AKA5bXQheipoH
	 XZv9wNq+DHPNOqvY/AnQjTN72JcxFjR0ObuARJ4t4fHATDwNgRJSKGUkZx04SUCyxt
	 jN0giU7ydRAGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A761D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575937362.29427.13307103686223192310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5e10543e9fd1d25c7ece57e7c66a11fcf5f337503fbc2e9b5a44068813d6bc
Date: Mon, 15 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765759373
