Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1550129CB39
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750702794; cv=none; b=XIwnggjhMEdiH6PdOXld8j0D2znLgkm+/k+fi1s+6OaITHboJ3hKuk0KjxBqobwDQ1o4nmwkik3FTY5hzLI9nJbmVErph7yrKfI36qs8FlUmjA/6JEG5h71WsGxRHZHO2QuJhFoDM4ADOjV2PdGGVbdYYOztL8uJQxGllOf3Sgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750702794; c=relaxed/simple;
	bh=DX9NSuIg0U1h46gDa/I5gpmEm1j6h2MOJt7kV1TQN4c=;
	h=To:Subject:From:Message-Id:Date; b=WKLMdtL34ewUjY/RWIG3QAmlrOZBvpwCFnoG+5XlJbdNEMXiysALxzCqRAM6KeK5s8VlExm106qtI/BGcYIRqXjZBni3wU3qCUmivmzo9linBQZnD+/Xxonbl3971iLdtW61UdlNKlmNh+gNnXYpGflsUuPL7FHtFkQNKi0uYfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPRjCC6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPRjCC6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F959C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750702793;
	bh=DX9NSuIg0U1h46gDa/I5gpmEm1j6h2MOJt7kV1TQN4c=;
	h=To:Subject:From:Date:From;
	b=WPRjCC6YAL7F/JujVjuhhs1v6qY0bq8GluCjknMHXKLVq+dFOC0YasnT8JWfwdRo2
	 hw1WU0RRgK32Yt+I+kLUffNKGkITo0ONjlYXibkfnxR6kPnWOjYgHHlLmnJn5mdyqx
	 R7fA5ktugRF4+TuYb70YVWKbsLtnkhRGJskRq13kCEseRDlvnc6qNq/NnPKfDnHdFe
	 8flS22X7TqpsxOvJe8RKIxJXKzTzGFZm/6evUNm67uKUG/rYtJpVxP1dSxkD+bb3Vk
	 4pbAc5qT7mp2E6f8PrDCwMydM4UwP5lCtZKS4AnRyLRrG1KFjlaDpN1mDCc3sneHuD
	 5xEu3z92+TVAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070279357.4681.857379024058692302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b7446b0a9d04183c8728534eecea42252dd7128af3f0b0167cd3b5e85bf057
Date: Mon, 23 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750702793
