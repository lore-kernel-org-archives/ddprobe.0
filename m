Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548AF364BE
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720975823; cv=none; b=JIqOzbz1wWzHhYPOM2yl7MegfDAqH7vD3EJfhJq3u3KjAR73KsIjYMOrAkltmRfT6JUV3ib5hYPid9DCgtC6Iq867K9la9VPzb1hZ3PcVtmrFMhb7fSk6DMbTJ0R/x1+M6TPcG3XpCj4n8qeL15zMVXuEe9o/j3JvAMoUNFSQrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720975823; c=relaxed/simple;
	bh=fxZEP32Gk6vFh+GmZewxOFcwI0u+eD68tLeeOgN79qE=;
	h=To:Subject:From:Message-Id:Date; b=R0/JWrLVinSAg3R2teYBjaFNvCmrm47gnJAY0ZWVMbzU80nzWaE4WndnzryaWv1AZOAeZovyKfufOqpB80rF2VMRRUXm0f7Zu2FibOW7r8r60RlfJy7rE9UVeKMvymeTL5ycvai9azypHHNSRUrMpYRMyhcG6ekv+jtPDJS6X/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJqFRgL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJqFRgL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7145C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720975822;
	bh=fxZEP32Gk6vFh+GmZewxOFcwI0u+eD68tLeeOgN79qE=;
	h=To:Subject:From:Date:From;
	b=pJqFRgL5rCeeACyBcXu5LTs3qCu7ARq3VK0rgUyAYyjnArSV8tNKfNFHIdoYE37GO
	 EVtKvfQfSZfVdoazGQ9Y6z2BLPfbLnRClWSYxNgtBG7xNXZA6Hle6CoKDjwbXoFGWs
	 POT7Y8yGLt9DGjOYZXcNsDDxjOvL303DGpVe8nyNYdZZcIbDUetxszusA6KNGrNJx+
	 6x+p0RqPYZTAiWwSMmrYAFDY0OqSMfBhcdZCNw1SWm6WL6XYg/o7RfdltYHIjpJ33W
	 pt/EUUp7jf0YgjODZpMpMscIcIEfzLaDytqzhieDmOpopiyU3ZL4W/N5/icmHfDqEl
	 XnIAERZlKN+kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B5EC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 16:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172097582275.27857.11865062417728765688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000bcadae8ba795efb77f64f26fda2ef429a64b6a9374c7857840f246065f640
Date: Sun, 14 Jul 2024 16:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720975822
