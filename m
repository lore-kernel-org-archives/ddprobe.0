Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478DD1C0DC0
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719585863; cv=none; b=lfLCEcad6AqPqFzdOGpgtL68RwEDtwo8sVVhH22pmiZllEh0uf+7aotCmv7P1OFf36fHNU0Pqdj08DznN7wqFYqB5wDCvDeZSTn7QSqXMepu3/cqP7FRGcj6PKcKEb8akl1OdS/WTvg1hKjFSEMxySwngc9CHLM+EtNt3LFEF0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719585863; c=relaxed/simple;
	bh=lB7pmZDVKk3damJ3thDeMvv8yCvGuCdZ6wk0fP4c198=;
	h=To:Subject:From:Message-Id:Date; b=fGUlzEsrQSwv54C8A6qs/kxjUDpGuHY4gquBKWUeCYAMeJk5S57sBqltGLJiG5CbeL+teYEmpkkzd0q6uW3apdnrKxhF2HoJDKEEs8PJ1UxVuMLWxsX1iIpXgtJmmAqJ4YyHIwRoC8axpgkv4e/L+5NFe63iHzJj+cjml7TVzAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAbKCxN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAbKCxN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DC1C4AF0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719585862;
	bh=lB7pmZDVKk3damJ3thDeMvv8yCvGuCdZ6wk0fP4c198=;
	h=To:Subject:From:Date:From;
	b=sAbKCxN+PUo6jfgqlpLsj/+6iIFso0TS4+mlT6i3XhOf6CGRKQgoOQ3lbxA3tk0xw
	 9Ds29/UrUAbeb9p7OmqH2dZE1a1n2FHxCYRqy8zytQAC5pQxqhMq/YNFgoQdhji3gc
	 4gqq7xPeLFmTn/BclbYXvzuNwT/Qly2vxcyAwKNm/2r9bx2mvBJQNcHOERFyBW8il4
	 hrnuczRP2RxiAPqk1pghlX7F2SPEpPT4YKrQTY/LqhV60Vsd82ltZkW8cuQlazhkGB
	 tUmp9Ic9H1y6FufCDUoMU2J4ufI/NV89UIqb7xlcc1roV7EAgdEQ1asKS41IBPazv4
	 aPKEpg2ouO2sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C48EAC3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958586278.3257.15476015400620536626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c800c57c8fcf84b18d2f4ee16e527e46a43b75c173345ee1e6ac29290978e14d
Date: Fri, 28 Jun 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719585862
