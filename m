Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD0F23749
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719466463; cv=none; b=poGu+0kWrbUaVFRLmoW1Qby4ea6hs1GgDsKuT7juJAsReE7k632sEsddMpgu6HdVlJzEfUKhgZGDsCRR0wEVV9D7rgjrZEpfxukoP6yWU2JOD31F9EAD/W2IdKJRXQ5HcDcQKOx4XKIAw1I1ZoCGaJEYrYMVvDPNrYKw1/6bUY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719466463; c=relaxed/simple;
	bh=wHe32gGlDYa16M6i4/JSmTMO5gkeFKqJ5UHgPCdKqyY=;
	h=To:Subject:From:Message-Id:Date; b=g9gIZyFEGkkA6FDq4pAbC8UGhkbmOFAdaAlukLC7598KUx4eyp7L87ZcLR8dbBjxM1wTphmKb54fIX6wFpEUqRv8618su926pcoCmFwOay9m3gixHPZEC1BRwSp/cLmLoPT80Ms2CFDk8JgKRZOlbYTatSig47N7gGXzrjzZpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SONbeksV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SONbeksV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD439C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719466462;
	bh=wHe32gGlDYa16M6i4/JSmTMO5gkeFKqJ5UHgPCdKqyY=;
	h=To:Subject:From:Date:From;
	b=SONbeksVvuTRNB82ITEkAhcgXzxdIDdvQyDvVSxbGFBIc/3ym5F7AJKXg2Cc2VLkn
	 kjtbrWVcEG0BtfxH8UR2XV37oiVucrTTzdKHv5z5wKXAPN80FDrPEVbIm+2Yo3dqmY
	 uBB3LgdnucahxXZc2gxBzXv7lmA5HLLTZOFn+mx2jh1TY5MhTZf7lGsuCq+AR1JXmU
	 7kKMHS4RPDu03Dkg/DHcDwgPibnJzUeiEZxr01VkjDAbYDUidzbROWrwTiR2ksyDnx
	 RWLOFBLtTLQOIS35hvfi6asSoaQD+IaXYwRWWi2ViWBzQTHt5V471L9z1bH4Y/ZXJJ
	 unVpLS6nt2RzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB213C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946646282.12506.17015019375982561660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b95c939a1a8b64cda1aa1f6e17c158cd4bb964eb70632c36efd2088405d9bb
Date: Thu, 27 Jun 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719466462
