Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B87205500
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744040994; cv=none; b=WALlYuSCyo1ubB3dBC6BUTF+8oT+gqbO5635KtWLGAHyUSRk2Fj8AGkbCcNkRudfjOmoDn4Lg1t7Dwr1eTTN3QoX6rfRrEA8QToAqi4azSfn8aTfRv9CEQMLo1xCZ0xih6pQX9jhxf86SQy0QxTApsJ6jSzN7daiWfZ9LVk6iM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744040994; c=relaxed/simple;
	bh=YMdvT+SpS2CNU4eg4i/SeXsxCstNzqEM4On+2MIXBVg=;
	h=To:Subject:From:Message-Id:Date; b=CNrp/HlCEjWUck0mVkHt8gK8hLTHHkHtBeYfv8zgpZW8gDIqffCjxzXyoGim/bz9LDtOmW2hCT3ITDyc8FJll2HNBYswXqHiQGqdUqoMFF7AWFbXYrnz+wEjoYqoLtiPv+MYn7QeIiTDrhObgDsL7NwEb35DwGuGma1JtDa3tGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrKRU+77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrKRU+77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A57C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744040993;
	bh=YMdvT+SpS2CNU4eg4i/SeXsxCstNzqEM4On+2MIXBVg=;
	h=To:Subject:From:Date:From;
	b=hrKRU+77XMX5nfulcuICmheXiPZvCNYatXu2nCyk/QJHFU04sMiSSQC9ONoz3A+4D
	 5b9eLyYdKXl1+jFqKKxRnfswhJvKIEqn5+OjfA2G4OL4g6Zr9Yvq/oTqxOHdNpNOUC
	 7vLveGWHQBK1i3s+ctIMvqTbFcLOpBmZjvxq0tBcRIQicWhBWRz64lJBf06lWLTalJ
	 NFB9tMVPZxNDqJIYiCsryVbaGLc0Sjm6sJRptiATZGr40S1pjDrzQE2YVQIXf/8dKn
	 faaFUybEgObey3w3gwzwhUduRaT+D9xGyW0/dyOJwtx+JHiB9PuYrHvStnedpZdnvF
	 n0XxE+SbK0VHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2741C3601E
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404099364.16556.15593956858039562556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88399eedbe61d74455ba378aedb1602bd86a3973f0330b98e53ae654b91ce417
Date: Mon, 07 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744040993
