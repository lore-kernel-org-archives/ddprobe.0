Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D2E365
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720400783; cv=none; b=cGt5YJFBpl+AC9xD27+pLyXw6A73Hw0eZC4ZOoDo74hWsBrgASr6LYngtn8I53T8x2WM1NIAm2tdibc1MxCpiFiIaAZSa6Gno9pG5qdslvNEMub8NoJqStb5ZAOc+A1oB3vFXDgM9JLilS8yOqJRdh+h2CfFVSl/ssS5X4lfPJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720400783; c=relaxed/simple;
	bh=yYi1VDOfxJv9CuOHFuhoxhVUmmZB0ip0DPzf/onBHlA=;
	h=To:Subject:From:Message-Id:Date; b=aGupSu2mk14e29RGacGB6ye/gDM20vfD8jEmS5CU7vb2k47ctIo09vAnOS5VTUt7eoKKTqf8feomT7erneOvuOXBl4JbIILAZx3DWUT5yRvOfIatIDNCagQdJAzt/DQnFzy6l42Xi+7XafKrhaGi15GCGYbtO3OppKCgMBGAM48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihUW8HNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihUW8HNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFB66C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720400782;
	bh=yYi1VDOfxJv9CuOHFuhoxhVUmmZB0ip0DPzf/onBHlA=;
	h=To:Subject:From:Date:From;
	b=ihUW8HNl3NRq/d7V+nVJlcZsYf5BVcyEpLXhDvvh8zjLU5wALKaPrpYlSwkrDW9Gw
	 WEM5xUjGYOkIvLDc3/BoTs6WAgw4BaptmqKKE/hdxpg5sG6514oAe7NFsFphd/U19V
	 C3nfze5FHuyM6DhBldkyMLXzQm5ZsNwIPVQ7j88Re2CeocsJd0xpHLgV9xmXJF9GHu
	 7Xtek49dcbK0rfAKhTqFJEfzA5TJ4PYTQXHFsny3W2Ntp6poKtCKWjgU0RhaQM7yBz
	 8KP6+ItGS8KwSBLLBpdOBUNEFPjwbUgcP9cofVNS6te3L+IU8Wa+vY/EJo8ygjOfFi
	 cW3qR+288BWgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C27E7C3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 01:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172040078278.6469.421280477954359925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6f3c2d9c75e704fde80133fae0e79b75fb10ac3eea4051fa891507ca8ffb79
Date: Mon, 08 Jul 2024 01:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720400782
