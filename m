Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADE5243954
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760661594; cv=none; b=IEisQAJhwiv5iJC4KhU2AbN97rPTHDk0blUeXsPWlMkhIZkjjSQJmgxS+1p7c6R0fX5bkBl+QUmZ9B6hlcyUosspkiF8910VntTpvdAUZiQvt6c4ItzXNnIrSWdIlXoQrYXYopvsSxo0pfhzm0fFhxbZCOe9LL+XpHNmBW727xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760661594; c=relaxed/simple;
	bh=OgYBxvNELJ3+bwlI5plcDErF3GnmsZ26DujX4mi62aY=;
	h=To:Subject:From:Message-Id:Date; b=XwX3AXOADdSnY6CeN3ZdI+Mz6ojx4C2S9FvgoagJxx3LZp3mZTwiF94w+6wPNWERTrBx+TBm1ZGK6zLo72jYvcAkgYrlAuxdwFemnqruWDathgoE7PcpIkBBc7n9GJ9K0n0xSJivEFnGj3yilscMItY6eQ4JswMTDUHmA2ABo6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up3PxNzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up3PxNzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAC6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760661593;
	bh=OgYBxvNELJ3+bwlI5plcDErF3GnmsZ26DujX4mi62aY=;
	h=To:Subject:From:Date:From;
	b=Up3PxNzMZi5AHnd4FeR435Jj5eEW9MAFJgO6a5YWUZWiEcRxcHnoh61/QMxnsfH8o
	 YzDHT6rpCZEs8mDG4eVd3hOLbNP9EZn/8VaGCOJnnzw9PMecOJguc+6Zn+5X6f0Aa1
	 wCedVnepmfp0bJapmDBTXJVOTprno3u4RvlLWp2t9JJGT4wIbkg+FoB4cM+xLXcJV3
	 BrclVBPwJci8vXuz9S41CKEPm+/5Yg3SgAzEUw+kdAp3kiuXRJMnRrlMQgloiFhCyI
	 rK0jLitUwrOAKExUf5T5+0TWFAKOOkGSea0Rj2wrk0ZXhkOn4FdJm+hZfFUtBphmDe
	 rkGXW+2JH/I2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906DCCCD183
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176066159358.18896.13740619804194783845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58c88306aef28382c99c4049a8e0540f02af5d6a62ff4341945f1d80f0f4202d
Date: Fri, 17 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760661593
