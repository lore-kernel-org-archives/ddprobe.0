Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69026A08F
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762317594; cv=none; b=N9FwVpKj5RAo2JBCpz9qJMsthoLulcw9Hp5FLEzaNFmuZ44veyotcz9cMVwzhqPdF8j0auHHwLoIgBwFqWqiHgDLp3jLRx+El347S9aUqIEZSO4kmOmzFStXpqFOQEnUFLqPKrki+4z4ZjWZnrf5W++EO/riZwyq6jiRwhCWkZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762317594; c=relaxed/simple;
	bh=3PB0F1uP/8RA0MOYvYI9fCcB2yLRzpV4cbtyj+rZcZc=;
	h=To:Subject:From:Message-Id:Date; b=bjul/zmykZCH8c7rdxFSxgw6nrKza6FqYUP0TMe8UWYY1YUzLwMKTfiRsDGY0h08A9KFDLPGQq2/MOx5tBTBkm2M0cr/aP4liR24idM5NG+P6DD1TdM4uy2PgjBEAbYe9CIXd1kFLKo7FFMvBiJ+NIto2h6WZ+pEys9tBrcdGRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mX8FnAwb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mX8FnAwb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC5FC116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762317593;
	bh=3PB0F1uP/8RA0MOYvYI9fCcB2yLRzpV4cbtyj+rZcZc=;
	h=To:Subject:From:Date:From;
	b=mX8FnAwb8JsVmPQ2ai4ggah/S7NGihDQYru93wIlo87Y5Tg0+0MkVmP8YfszssY7K
	 Gv6puThnSxEeGCM1Cl7urdEM9dGvj8GNRnH8EVsAv7Dojr06MvA03yKC5UxXQ1XbMy
	 f9jk5jO1Wh51ZY1PZk+s1g7V3WycwmQfHIVf4UWnxPoQvbpBi8Ekvel2HdGvOKBiWM
	 VRsgxDbg+ASan5HEx2dx8ZmyjlPgg0pE0wa6ihyrnFJLnyF11/YyMfI92Y1ixDPc4y
	 lOyvzcwjSnFq4gsgAztnqYnJolG5ndsihexabIj6hw/DeugjD9gqy9KVKLwVbbjPCd
	 Z4pEEK+dAdmqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231759358.4986.951523578015285808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7289140cb3bf9c6be149472382532d35f4eeff7f7c91def13a575e00d0b62c
Date: Wed, 05 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762317593
