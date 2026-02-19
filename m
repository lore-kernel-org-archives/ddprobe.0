Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCE1DF271
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771501494; cv=none; b=iS7pNHgbu93EQaKLMpwJ4rhSpvBAbJqcePgJ+CFy9QhSIzPMvtdyaIuheOY7sbCqh+ZRL4+J8PUDne+tvbEw6HFfUvXR9YUpLem0h5RVYYZxyNbeTlqW2/FFrXJrZHV7X0f15T7OcUUzXvXjbQxfOd1kggkzz4XllBmHbv7dZr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771501494; c=relaxed/simple;
	bh=ZUJi/ZtYywj8hz1t5Tw8nbK0kmHNhZTY9ztzKztPqJ8=;
	h=To:Subject:From:Message-Id:Date; b=TsK+Q9sqbrTXrXV2jpesafJ+agFBaIlyr7GabBjidXB05TqBrm4nD0OSnXNw6daSldZz9Y0Xa/zJOAV7ESbziFRzXRdpA5YD9YDDpqbFkkxWlP+hBdZnfe1lPlKFkZeSpq/McDjDIne9W+sB7CLxmoR4OlmjggH/jald3SZ9l8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX5R6eWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX5R6eWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1109C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771501493;
	bh=ZUJi/ZtYywj8hz1t5Tw8nbK0kmHNhZTY9ztzKztPqJ8=;
	h=To:Subject:From:Date:From;
	b=KX5R6eWscQydgsoak0xLTHJjdeWZhSdX8vl3eQfth1FRgxPfVTj+W8YaEmjZoy3Wa
	 vkjQG9i2IzAMoqDZeXwAdAtHKQ80RK5IQ9WyWbLeGOeIAXdDFurPYsFuZNmR97NZ60
	 ow3qtlaHvZb+V749CDYMSfiTvDv9GXaY2kZi6OaBem2mS17Gz53VvuK2vF3b1m1AyC
	 DVx4mau9UkUbTxDqmzStFYVuqKE6N452TmFep0jWF/e39tDIlgFCYr+CnDy2gLWjVZ
	 jCYK4sMOYcLxT2mgB25aVQB8GetGNc4dkYzpWQ72JKan1r8yUP3/pspescxB7qLRBy
	 znOPseoWrDnCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCA5E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177150149360.16133.10833783211908377287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306079d45690b2788357740263b57eab512308edbc7bba2b8682973a0852293a
Date: Thu, 19 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771501493
