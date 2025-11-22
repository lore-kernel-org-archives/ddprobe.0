Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D40F4C98
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763773314; cv=none; b=FBOxEjC3y+cJPSfBhfiBsBICxWA+g3l/NFQfpQISZ+ugCzPUihVxQc2zwBV+GIrXqL+9ZJcNk/iEfQ1M35YqHeO2xxAeyEqAfwbP3rWrdMXvpYMBOsyWFghD0D1OyErxYRkBkd8qi3GzTrns0cvV9Iql3c629RG5NUuoSnCln6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763773314; c=relaxed/simple;
	bh=AmYfFzmdrgN7ok2sK1D/0JdIUJL9/qthf78BjWOPCMQ=;
	h=To:Subject:From:Message-Id:Date; b=mYH/bR9goRNlXnESv1wjaj4bU5dUAAbjzxf9rYhVuRaOYscMi23ttEZYitZKVceEhN9QIvCa3Y9WhIXiNv7u1ApcPt+rURpNi8sRmLftEEWqsc2lxqLbOfdS7lqIDy/rJyqPEp9PrhWTqLDpJ3nN1aPgDNejp3Tu/hrvDv82v5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPKfODvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPKfODvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF397C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763773313;
	bh=AmYfFzmdrgN7ok2sK1D/0JdIUJL9/qthf78BjWOPCMQ=;
	h=To:Subject:From:Date:From;
	b=gPKfODvj1hGi+lY8CyAbGfkKniJLwEhhZNOjano5KqpufyYRNZFizd+a2KZDgtvU2
	 2jSzTPYFGGAeAH7t2or8VWRTGXwojMYTj5gBOgS7ASogRpO8zZhIgSRNoVuNJ3NZWH
	 sj9+1oZgx8mbRjn5gnUiLT3L1VKQW4OK+NV+m7bfFGovsnyOP0jNMDcUAyfS0/WNwg
	 faGnlEw3cMGD4AELI1sOVjo21c2DlMPxYUOaHMTZXnjggIwijsHNlbQXYXToJ3m5gm
	 v1lDCCmaQ5Etk/8yZzNs0z0fL6ccCiZNRb/1MaeWeyVMISAHyxhQyfegt2PvoGXb54
	 PKM+hdzpkhnsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A52ECFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 01:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377331361.2813.159417193583313035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ba7db52eb1750318ada864c4a9e3db7cad2a81a9f1fa31122868cddd95d222
Date: Sat, 22 Nov 2025 01:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763773313
