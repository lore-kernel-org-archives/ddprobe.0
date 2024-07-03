Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331DD178CE4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720024523; cv=none; b=EjZKaO28UVwh5NvgciDtSDgHPH61+X762ikbjsOeIVDkHZxz4lOPpj7GKBct5NFuzizrmYNBsDM95BlO6y/W9gfGvt5Cnev3zJLesT8BacPyvcW+3oM0C52OGbQgAE9R4s1r1354rE176doha35+XPyc+GZJd6cvNipWdehCCvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720024523; c=relaxed/simple;
	bh=6f0SjjpLLgj7gr+NO4zWUVZRoMV5NcG35cI91oNU0PE=;
	h=To:Subject:From:Message-Id:Date; b=ggxaldsZNL5JMIzAt4kFxZZyEwnGSQuZTC40OfCsbw5B/DTFEPLvDlOslnFD/xGxcsupW862O9UnzZ+/jqRXkfzCu/8P1XsIiCCvyizjWbxpBqPe5vCftxmn2jL91bAthIOY3CM2fm7+P2bnc4AjsCThlV5b1IlXJRE+jtAdAfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ry6Obewc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ry6Obewc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D78F8C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720024522;
	bh=6f0SjjpLLgj7gr+NO4zWUVZRoMV5NcG35cI91oNU0PE=;
	h=To:Subject:From:Date:From;
	b=ry6Obewcf/4jlERelz1GZ4kXjBiRRO5p/vS9xx2fF2CGPNX+TpIMRXHI2opm4s84A
	 xlGn6KPUZDoQy1fnX18eLxAbnvP7mANUIVhJ3BSq5pcTeEqg0c8tfYBdEBImxaKZb8
	 5GP6Uc9AhUDCtGgTAUdxqajC/I/F3487C8N06FfqdL4FPlociDItHSpEje1CYAT4KU
	 FVHZmJxbmx9nQ3b6KTlZaQxasGIetIuFrPbXbGiN+OcFpwU7NVpJ8/RDhP0P1ucZOJ
	 /XTRIoO0tqe2Ii9KqQVEBkYDJjcF4J8KkVCogkPxdTwI6bYqG788pBfrkid0oj1YWy
	 p+8LlSgNEAYNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CE7C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 16:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172002452278.14959.11321818462923341418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 287c7ca8ac14cf0b1c4da00360790c9775f6ae287078a0959deaa6cdf3ad2a10
Date: Wed, 03 Jul 2024 16:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720024522
