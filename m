Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEC927F19F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782367054; cv=none; b=h8BmwTgL+l8paLK4Kie1RD5Fj+daDFOqtArzupZDWDY+x7GVM5ej+0wDg6BF+OAVoE52VWmK/VQhGX67UcIzS4fKrYli61rwo4D9yWPE9kOGWzs4LgDWk8hVaUmYt7lfyR0wjZUETUSKSSc+Z8jkc/vi6zGq17kkFhfHXHmM4gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782367054; c=relaxed/simple;
	bh=HBmY30hOPCVxRzrzqiOeWfEm3/2+jlwXR0+yg5QJAXo=;
	h=To:Subject:From:Message-Id:Date; b=YKlFwIpn7P3Blnvqw7vcBffRIW/6MAvR/iAVz/y6JkjAiZTbFxwSM6rikfRDfgV2AOpatmuGkF8lm9vCk4yZidUyUyv6gju7Jf+Q8X7wdhiLNWBXZPBxwtXh6/+CyjwYm59G+XSXVkvJGpSufQmyEVLe0P5v+w53Z9d2AIELpwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uo7HHIJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uo7HHIJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6EE8C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782367053;
	bh=HBmY30hOPCVxRzrzqiOeWfEm3/2+jlwXR0+yg5QJAXo=;
	h=To:Subject:From:Date:From;
	b=uo7HHIJasI/F0e96N3nGnf0anxeCAK7E4FjEb/UR3kkpLTV5PHEX1Zj8lEx3qmpxq
	 WGp2oNPRtrbB7vtryro4UOOoI0EWnylxcA9iHoto4piMCDd6nKbJ2d5IsERAUO049I
	 ZqiJPCzDcqlqL1SNHszRQi4Z0oDlz2P1axrA7ssOGwBL1f5uZ1op5kbSmW2BfkAayo
	 wPpo9mlLc5iFmwG7OO5/EAoQo7ETZM4gaP9yWLo/DmmlnRg+aNZpYDNYNUpOP6g2zZ
	 3jzMOna1TYk8JwnYdGS1pcBuRjw7lw+nOAWKHXfDrTrZp2ShI6dtudDGchDU24NgnE
	 Ks3cGnbi/b7UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC06FCDB47F
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236705369.26763.3327931178067790755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7f4156b5171335efc9d45da0a48d432cdab6bcb839b9819372f72fea454f91d
Date: Thu, 25 Jun 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782367053
