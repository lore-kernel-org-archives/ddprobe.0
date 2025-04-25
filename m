Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BD543AA8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745546994; cv=none; b=UnLyRL0+eWqDTRb34S8krjC3ia43ZgQisJos/IhAc80Q0Ooo/VLnig/WBdjTw+wrhWdhwC6wsXai0pjWNNwSvJtgFQStL0bbWF+4uiY/i9wUr9F2B+JrD+A02azDm5MfdgYVcEBcY61Yzc0oVIXof4SyvpHQx86AiX2SfgOqmgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745546994; c=relaxed/simple;
	bh=ZUQNN/ZGw26A1Dfacl0aW4BEURQN3W2OXmMC1pBn1Dg=;
	h=To:Subject:From:Message-Id:Date; b=CJvVIXMiKcB7BI6EKg1pRWF55t9dp6CopPrkiwrHiOKlfNdhw5aX/SvmRMCMYIOMZM11z57UDhK8clTW/GE2KXFkBVhLTi2d+OjQX2dOKaffromHIMH21APj/y29bHZTKB8bug37Uh30CwEKZmfYSK2w/nfj/j+tULF0RlqAYdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBoTHxGF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBoTHxGF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CC3C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745546993;
	bh=ZUQNN/ZGw26A1Dfacl0aW4BEURQN3W2OXmMC1pBn1Dg=;
	h=To:Subject:From:Date:From;
	b=BBoTHxGFGmJOtjmK9jk8n8Ut+eBY+ChbMUiY2na0hjQ7Nxz3HU6jsZ3y9r3ndIutJ
	 XkzBUeIC2aOlStv/og5iOrWa1THpms60sFASJNNLQtUTqV1fUV0xAF9tRibRe7ya1Z
	 EkTWyqfcdFSiPZFYUSAG5apCxlQkZ3rAtBpRu2pqlfxw6XQGMCOZnwv/dQx6UaVz57
	 jn7ef0su77x+KKDNINjHy4NuP6Lgp/a9srnHxmypHUzDBBmQj5vdb3m8UO1gs4MpLW
	 DHU/OXwdai/Xv2sB4LnIzu9Su3iQd1iZpqiiV7Tc53xywmDx+RiDSjWnx/UbqnfUDk
	 Ks1jI0S5KvQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E1C369AB
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174554699357.8680.10132159930793023270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c4912abf5ff316af9fe5fad93beca29ed3248a11cf1e003c62938e1055153df
Date: Fri, 25 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745546993
