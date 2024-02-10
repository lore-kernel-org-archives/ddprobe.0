Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D987168C2
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707548297; cv=none; b=JrppH+6a8JeUnwuDD4t8iM+TZ2BrJjVioCVDhho2Q563yPJfjTN5PMYBtB94l5rg71SXnynrfA0UmbC1w1UMunu4fHq89pQV1Xt+vFCADxGOP5c02cmVBI1dW1s6c6SQrdY2+MiAuSFLIyuzeo16VKubd1sdOGjxJSAGgh8KhVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707548297; c=relaxed/simple;
	bh=vuuBq5m6f3y/ehMpp4XsHWJocb2VvbDLaQFQ3wDPNOA=;
	h=To:Subject:From:Message-Id:Date; b=nsd/0MFAXlgx0qzAfG3qDVu/g2wR9CWNY5ZNX1/eK8UBpIr4ViNiYMZNgZ3XEzxLdPKAS594azt411LSLoKI/LoRSlP0KzawQnai7+BWdD54bjmJCFW+PuKpGBDjpqQACam+Qq1Y/15glWYnn3LuK/nr7f2oWfmJiSD2Qfdu2jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpf6p4a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpf6p4a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89C7FC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707548296;
	bh=vuuBq5m6f3y/ehMpp4XsHWJocb2VvbDLaQFQ3wDPNOA=;
	h=To:Subject:From:Date:From;
	b=tpf6p4a10AG3sgt2fHEhUH+ez5qebHKCtvxX6DmZzpoVblssJ4iWHc3lpWcUlYejg
	 oXt98ZVKg9Jcnunh7MiWvwlqeUxsla/XT3IftgetghILKhLEKAS3rIhvcGcoNmGYS6
	 w/HJC++M+a4/2qXDixlmOptX7rLDwUHZeqyuNS+uoWs7PcVlk+lb4XY8lq9KgJyuem
	 HVMljvmTeWmFqf+C2EL1byuWOeMIWpEdFHqnkxYFHFfu4Ps/fsPTyoysZE4zcna8qh
	 nY4c73YxI3Bpy02g1NesVV71VtFmDFe9XK34CJljsCWeNnj5pCBS6vTeG84CjhpKqS
	 zmTgYAOx8ZP7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E7A8C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170754829640.18366.17103372064015403079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b54900e50b4670799135bb114364dd76afb658a08385539c7414152403f4b8f
Date: Sat, 10 Feb 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707548296
