Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F0F33F378
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773786894; cv=none; b=Hz6bLHV01XTuDCQVdz4zHfzZm4vWEQfjryzy7GdBEjeDftY5XwQgxKfN+1sK2LekhJa15OEH/toT5oso/F+SbjVA3Ku/QDcCWqWj3pFOTMPNKEuJB1q30grjqCRumyp/OdfAatx4XVLf1BqoXSbcoHX9vtQZEEt4Pp3OdbXvTAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773786894; c=relaxed/simple;
	bh=1gaskOaQKUfys+hiL8BAwq+s/uKDwL2i/vZQNv6MNBs=;
	h=To:Subject:From:Message-Id:Date; b=Q5zRNUTpDHyEaiKGTdwxhHcQVUnPNt7XjmijefyfWh1NMg8awL87hhwYRiSgiuB1wTJNYf8Esv7NvZun67tQjR84KbWTiZfH0ys4mMDxyw/rdQ2jL1mAV8YHnjRdzFiYL+spGhx69Y/Tz2lJLM3c28xFcx5y+DKZ/JAe4ZfwfXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0rv2i9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0rv2i9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F84C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773786893;
	bh=1gaskOaQKUfys+hiL8BAwq+s/uKDwL2i/vZQNv6MNBs=;
	h=To:Subject:From:Date:From;
	b=C0rv2i9HfOYcuBdPLKXcNhnWDollqdJfGsJRUx9AQBiT7VZhtcHLOTmEbL7glfSaW
	 xJn1/f0U7TZMlCEWtRVbMphbrxDIVHfBB9BKZ+MUVPfcxI3pduLgARM8nkLx745DRg
	 e7iB2bPaCLbDMjrXM7QZ6NWxbD+sXJphOmE+PEL9CleOnEc4nKYyMgqKzvi2ih+K8r
	 5GnWvnl5hfn+QynsZ0rxU8fWIe5anQ68xMM2KV05XY9gH7wG1AkxKz842UUCf83uie
	 fk55KgcLb4Miy7kqpHGLQRz/XFgQeOFS9V7P+Tgk5xhVSo4SN3MgOMvIZEtKRBTnfe
	 G3gocp02Np3aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947BCFF6E87
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177378689357.31727.18270405615910870478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677ef93eace0d6be0fff4c84aedc4255a71c36999443ef5edacf7895a6c6a042
Date: Tue, 17 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773786893
