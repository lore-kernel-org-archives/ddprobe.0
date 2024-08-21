Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340815C156
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724217954; cv=none; b=Nc0O0HXaTTYvMy6LImd1URxDe45OKOSaIbLSkZFbNTuem6nUhQVUSQh8qXnlWTtmbg0Z029ILj5jpeU7bJE2MbZssEITjMkyszHWXV3rtsyMA2Q7L+xar0oAaCdZq8jnJCOzvlYGQybvDWMzmZdCZeNxTBW7pvgdqEI3U0/V7NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724217954; c=relaxed/simple;
	bh=zdXLBxR+VmB6hMee3I3XMQPvwQdk39O/JZ0ETCgsJOU=;
	h=To:Subject:From:Message-Id:Date; b=fd0dQleV9pdyENvVv8mP2AgJgAvBIpTLoS8Ge1Xj2iHJz84UNKxHWwXcTmmrDHpYMDGNxhAK8hDT0tJSDZZYabTAgqMi59abp35fIGwk6nM77vXPmW85ov/v422pA0WQcPVUyg1I/6veeasJJ3x3LHiMcafXV7a6pVjzHInltow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=crxU/JTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="crxU/JTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10ABC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724217953;
	bh=zdXLBxR+VmB6hMee3I3XMQPvwQdk39O/JZ0ETCgsJOU=;
	h=To:Subject:From:Date:From;
	b=crxU/JTvsN3BfUwjrQ8JgcnUisdkDhL4ycAsz4sFfhnTa56PdLkHSdMQMxLi1P3Im
	 A6GbQtI3wABwwtX4Xb88r6jNESXxj8vgGca3NMv7LGtJ6Zlx2voeG4GzzjdRidVTMu
	 sDowEhvEdk3DhKxyn+orAVujFN7wRbF2tFLZ3oX2tTgryD7weMonjVpPgkvTxBxeE9
	 +slLypib1zQHLH7tptVzycd/wN/Jz+BsR5cNc/56s2DK6Nyb8SYpMOrLqyj4MpOXqJ
	 PmqD4IzQRB70ueEsLe2eDznkiTyUq5pZ+RPOO9/KZYf2P1Dw9XbHVjIzReMcv3pC3U
	 4i7Hzu0bB2nhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D3C52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172421795358.16452.10461158531683453007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4976fb2ee97a2f25dd52ebb3f30d3e432d00b558787479d9fd7ebef7f249c513
Date: Wed, 21 Aug 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724217953
