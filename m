Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B68136B
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728780954; cv=none; b=r0KIucLTZXlgIJ3bPlxfVFT7lQ3HhyZxt+5LSrwXW3cZOIn79JkSWueztqiN0JvFX430LvRYmVFoj4J3xZAvzM4UYc7GE8zUO3o8QsPFp7g4rOJzvbKE+EFz+XXeh1H+YID2DgyeH7gCWALPEvRBZpDLaZsP5N+uBQvPY+X8H1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728780954; c=relaxed/simple;
	bh=GgdBaeILxU9XhDGm6oEOpYdEQ0bym2AnwR/Whw9VNAk=;
	h=To:Subject:From:Message-Id:Date; b=N7zTIzV5vhf+hVxSlE8AwkcHDOxuFVUNiWjg2iICEiQj3k+JxuzFKQa/8zISyu+ifldt2tPJuiQHXjXhPAHhRz1Y6sAJe8Woc1+olWLYsmWoYB0qJSbfIiLfkEVsAmMLy3gYiP/WFe68Sd1PuxtjUVPG7ab6/SBT8q42IxWnnH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHGE9uan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHGE9uan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56B2C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728780953;
	bh=GgdBaeILxU9XhDGm6oEOpYdEQ0bym2AnwR/Whw9VNAk=;
	h=To:Subject:From:Date:From;
	b=qHGE9uanrk4D4b7obEOe6sGFdhxa+XBVoKpdHifdIhQCq+k3jaIRN+ojiW8ZoNOot
	 BVNhoUrrDTQdX2MiSKaMGztBG1UY19fhYhZTxl+q+D74MSEc1GWGv5lPCOI4shV5Rn
	 R7PQWfzu5zrXY0LvYGkxP/V8cGwBVIYcTRPOcSaaXI/iRjrBOL/h4sOQY3xcljjpUk
	 /zKMSOfxS53SK9kKKds3YPXBjiMqe8qY6NLCtIn+4Xy7PBP4Y5kuWG1XgOpRBkO3lA
	 ghl+YUmiHJFAUyvm/Px3YcgIutBreiLLpvZPKt9I7uzAUgTbIeYV0bHS8AsWp9E5gC
	 MhWeI2UjF69Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F827CF2569
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878095363.29019.5512704668908092261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4d84e66f04d4be70fae3a220fa4d136d9dfc4d45fc84b1a85685b0b77975a4
Date: Sun, 13 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728780953
