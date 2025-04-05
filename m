Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD39165EFC
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743894595; cv=none; b=kfU7XCEW+2AaQdIx5uSX1Pc8kKo5604XocJkPq/dnSv1NeYtCTtnwsK3puHJhXPyQtgLb8YJogaz+BwswNZ4V1u/6tdbXGBakJoz3NMFQtEY+uq+LZK/bZPf/JkDcZ+SQo47jtBkk6BieM/HFKl1oY7o/4CFGql3OfxdpIkVLo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743894595; c=relaxed/simple;
	bh=lObmObzP3VGcgnjUiBrL+csMoFQPLDbHGoItOGpNcAc=;
	h=To:Subject:From:Message-Id:Date; b=DI3lhkuqJxGjkzdnkIxefGvTUO189QEy3xwyIJD6ViYEM2GjFV75Ta2q5Fkz/opyoIDUvPi/uZWpBRNaGkjERRwVSfo8M1zRxYESbs2jKrAX0x2iWRcfBXu3h8sP0IWE3YhVj3c+7QgMOfJwD14yuth4iKOWXMKmUKnzkRYvwMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kg0cuUtw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kg0cuUtw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE84C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743894593;
	bh=lObmObzP3VGcgnjUiBrL+csMoFQPLDbHGoItOGpNcAc=;
	h=To:Subject:From:Date:From;
	b=kg0cuUtw8VRHEtEIFxOtsZE7icVm2qmKTxJ4v6FfqNmBHgsj5BiXoUwiWIUo2c/4Z
	 4/bxDU68yb3g3WR/rcWHlkT32JXuARx4G00vUgq0n7zf9befUhChQgZUEodYAi/5v3
	 6OPxHzo0wTdfAMrPR4+Nqg3ZClJ125jLEX0422gVl8qryEMpXIE1bNva2MrgWp6Kn7
	 LpIXUur1nbJye9pE83HdY5LxU6QDlZ+erFknvYQUDSPq+R06Q6erdCXBHIPg9+WXSX
	 NhWf9vgOg8xCwb6bL2ecnk9az9hMGuPTl28x90yYnGfhFIizfHlT0WPfgDe8vFR4+C
	 gm6cnprGsxckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B42C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389459358.2409.9291843116866523779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a174d1183fcee1c458ae90d316d4c3b40cfd9cbd0196ebf2c5a393ed03609ef4
Date: Sat, 05 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743894593
