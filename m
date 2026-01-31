Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C79036A020
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769897034; cv=none; b=kScablxT8ScpTrrTgBGoU8uggjsz4wMOVPVSya1z4DGQVnzkKRFa0RqIFVNa/NK+qW4/mAW8qgnWcQamH7+PP81yUeqFGerrc/pk+3maaBqOCgFnp1QRV+vF8C2pMulkeUkskSAjtyzafR6uFH6yhNRvkinYKXCf5Ae5eCRLGbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769897034; c=relaxed/simple;
	bh=ZBcwqvCS/wXG3CgKXpuNsnKs8UkzHYWqyZtIclJXJ+0=;
	h=To:Subject:From:Message-Id:Date; b=iKvBHXgj+2oTvRwoFdrZMiwHMQwJk48zvUG0XzLEjh9bStZ28fiP6MIyXhcV7q+0KNVWlLk+bQhtaEmMsr7mF7ciO/lvhyJi4vbesvn35uzgVm5hu7zdf1gW1fyUQmN21Mmi+x0+OHpBAbb+0ofzb8pyIGFzhh6igT9Y9wqnGT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkzVVUhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkzVVUhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A621DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769897033;
	bh=ZBcwqvCS/wXG3CgKXpuNsnKs8UkzHYWqyZtIclJXJ+0=;
	h=To:Subject:From:Date:From;
	b=NkzVVUhx00TN7RCNWX/C5WpboPnAEZTXGRZJyWkWrTOYz58Ft/JDYbJW234R4iufA
	 aoMrXz/uajvXyXTrw+ssTlE+tcbz7Fxa+bMRMaqYajiW4cQ6zNIEdJyjesQEzDHaEg
	 vBMPQlJQmZme64kxveA03WhT1vumTRqYVNJnjq8wa/RkgZlGINE4wVsuy0ls7Z5IRB
	 K5qrBkzbaNE+y9vjP2hgyRSiTsYokz8qkg4SqsfR8dYwOw5nS+NUtjvVFt5h0/Ira2
	 6CZarlRPc7qq6RWZcd5o5VYEB4vlCJ4r1YS31Twds4HexTHi5m+tYADgZlgKrAqsAO
	 7pPDLqPF181mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953D8E7C6EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989703357.26319.1517155754458866114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074f3f519a33f0bfcb6edf988e3da5cd430dfa80a741b6c3a5143b4f5505bedd
Date: Sat, 31 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769897033
