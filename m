Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D3F374D3
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720777103; cv=none; b=P3w2IS+bxvrC+1FfpsCLxSw9Ygn98D28r/0tKcp2X9bl+vb+dXEJooew/ip1KG2IpgFpnutDfdFCM+H+Rnkj1cA8izc8YPqfc86WsRlj7aOZe9+EnfPEmORz8okQYWjXAe567h12f8x2kvEig0qZ03sjwUCZBywl+eLKZOMXcSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720777103; c=relaxed/simple;
	bh=rPDxFA0inGLUURECzMBPdhHjbK4NEiHHbcnD6FimqTg=;
	h=To:Subject:From:Message-Id:Date; b=peGFe/sF1mnFD1PVJWA3XeY6/ZaYhSUHG91bacukZe/GyTcfoMqAlYH6R0QOsfkrqKML2MVbsvialDqjx2VgjvMwf1S7aNWBJk9tWoEUVLKYg5kCt/mS+bDekXTTz1sZXyoEXPbVEgYaqU4bdotrP3dWHRdF2X1E7zwWA/yo7Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFYEd4qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFYEd4qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C6BC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720777102;
	bh=rPDxFA0inGLUURECzMBPdhHjbK4NEiHHbcnD6FimqTg=;
	h=To:Subject:From:Date:From;
	b=IFYEd4qQZmbKPIDyW9tscopAP2TWJTfzKhUQsUY4qwa0uwt/nIBfWbYzRPsKTykCt
	 KQBtbTK//tgmEpD3D+C6e97y58WLnoyhWSXQ4RD1c11DyvJz7fqla0py/1+u61cObX
	 vOzVVa/2DZ/CnJkoXOL2UjiutKALPu3GZioV8Rv3sAseO/LzFTHj0nRdWDRPP5KkcG
	 MDjB1468WEbpPJUXRwQrB5nd6T9qAHrlApZaqntRn5PyR182aWlI3uRA8l57vDzqII
	 Nj5U8nFNIAjWukDcLHK6ROn/q3kQzYRUo9bQwifYMBLrMCToyta/pfd/ngH9HUYe5y
	 owFiWtDq8W5nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AD0C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077710281.29841.6589195064918911993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed88fb9f2d41ab5ce2b3f9dacc0d4d9227d4b3cfd1fa3eb565bc31196602b3a
Date: Fri, 12 Jul 2024 09:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720777102
