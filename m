Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C160632
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770776034; cv=none; b=agu38an5Q5K4KstF8GfKxcSKSI+cbQUPQvGQ6HgmkTYBd5TJWVPGT9/zgVyFiqI8c2PLhXRhQwav/BDZ0CpfRvt5Lt2N0aJ3xzT8yZKAr2AnkNxDY+2TwwJaBru4jUs/GB3VOs25tdoJ10sCxhkbV3/MOrbfEuQOqfJHFIUH7zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770776034; c=relaxed/simple;
	bh=GwiXuKzlq2JYvE2/qaWOQvUQFfZlbTRb0r/fO1j5rTQ=;
	h=To:Subject:From:Message-Id:Date; b=KHXOpMylpN9AUp2EZ2hF/FBSNneT5QewZ1oBAlzAxUKX6wL7toe69TGV9+x6JgcKLpJCCfJT0wscM6mvPZDy0rh9VrmEOSfNph2vPhc9RwtYNrhAKLkofp9ycuthrCH/I7kcnTCZHcfKS44QRALE/05ir4KjGebNfE5QoO4Pkm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZsKVrgJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsKVrgJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2AAC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770776033;
	bh=GwiXuKzlq2JYvE2/qaWOQvUQFfZlbTRb0r/fO1j5rTQ=;
	h=To:Subject:From:Date:From;
	b=ZsKVrgJQnP6mneEBWXKPhoeR4s6vusgYnWbbShG+QVleHdQ228onEEyGG9lLd9fJg
	 7yYmLrU5g8Zbj3GIDcoTGAJyRFrvIr4cKJZuzJvTLvyuILEkfe+vyVbQO9HvZUTvL1
	 YqzWyhZZByplnYDjFgwpanvNXJcAO6jCNylfRDQ0GQXo1Nbdtop4BpXM9c1xUbNQs4
	 nM1cYj6oIkQhBmcpz61hSo/1JLHAceQ71OprKC4q4jpLkmSSmpCwagxQoUibUUcr3d
	 YZBZvhdheGYMZz4wdJxpa0jQ271pEbutvxs9ncmcVNbTucfIYKog1dgsPsjmiqkuOm
	 C5BLAMVvVtzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF310EB594D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077603369.26571.15039061901914718820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60613b7567335168b20bcba62e0aac51d1671683888273a70a609fb7a3c28937
Date: Wed, 11 Feb 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770776033
