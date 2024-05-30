Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D03228DA0
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717084463; cv=none; b=uHeyrmr2IcXMeosN5Zk+nTJ07Docu5jjGIFSRZlaSOep9KRKf+C6z7QQpQ+dcuwaNSpgxRp52PHuT181YbD3ialFgc1q4nLYd1O3oeccqWuqu3ArSO6/RdzePH6nq+QVFSMAYNccFiRUenp1jXW0zKVAPyXBP9X5tNAuZ7WC75Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717084463; c=relaxed/simple;
	bh=bPeOD3tkDV8TPQmwC1WW90dnn+SvPGf9qA19oKEiE1M=;
	h=To:Subject:From:Message-Id:Date; b=QesvvQviVfMl3ZrMrsnafA+ntNo51CWxGhfJwJZ4U9Saujsy0xKMAFd6QFNUXWzahmfsZaHGvNgUzIgNNbQD4taIRR2EXMPJfUiYlETjNLLxK54l050kGJkOadS00aESOhagtdEG3txoZ+SsGGDp8JeZ9pnFxG/aRKoMG0l5rvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pTLAtBC8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pTLAtBC8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1266C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717084462;
	bh=bPeOD3tkDV8TPQmwC1WW90dnn+SvPGf9qA19oKEiE1M=;
	h=To:Subject:From:Date:From;
	b=pTLAtBC82gfUxqieE3yLnXGyfPJ2ach5ZXhlrSHzJi20c1gBWvR2fnWlS+b+NtiB6
	 /6mVqX5d7JQKQ2xICqdWwTIGlklhhguFwrpf7P+Cp+AbtQ0YBv0rIXnLE1CVfn10T9
	 vii4CkfL0Nk6e0b3Nvu0ETjPAu5Ovk5KYhe8TWvY9B/1mqMKKaU5GklTT3L6cVBCCm
	 eYj6eT7C1+nzJ7K7TSbnqKv1cW/kmim/CJJ+zKZ9A9Gx5flRg5J18tVAs1oHI3YpG9
	 ngNJa1thLHl9q/CuKgfSYHmjCPL9vs4qajFgxD4lHxU41rN5wsMYogpEDloN//5NAP
	 T1YOMzYiAfNuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE6B5C27C43
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708446277.17471.541506941788781537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fa96fa8103d2da4cbc07c902aa4436f11411cce6202cc56ef39be27fab1716
Date: Thu, 30 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717084462
