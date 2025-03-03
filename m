Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D81D63C0
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740994734; cv=none; b=SPpRrtNDXyfdULS0CPZRh1bANxBPTsZ8yLLUtbLY4GVy97VDJCaMrjSnBwVwts010OwpUNwMKPWLLUNmn9M63snFviNyZ1r0mB3OHJOOCQ7NYjLVjE6sUzn6zqIHUbZCLQ7sqPKD1rjqxrv5CHtK9WI+pgs44ZWKfpqhOiDwwIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740994734; c=relaxed/simple;
	bh=lg9Stm1gaxKg51t0WDGvJeJjFZfKrI4uwHrLQB6AxFQ=;
	h=To:Subject:From:Message-Id:Date; b=l+Plgz/5DGE8pk4wdTfpvEzArLoPRjtTId34p13eW7nP2A9EmWB3uHSqcCyAKBAEvmfofVgGJM11A4vR+2/aEfj3WegeJyFZeZWpyiathk6i+G2L3E5s9QXh2Z/q0sa0W3SVsFZ5GoJEydZ6KuqEQUjvOhsDimUhjr97fCsJ1vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NF0lwtwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NF0lwtwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A505EC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740994733;
	bh=lg9Stm1gaxKg51t0WDGvJeJjFZfKrI4uwHrLQB6AxFQ=;
	h=To:Subject:From:Date:From;
	b=NF0lwtwKqaLx4icVRBWL7S/1M83wp9le+GahIc67vc3OjD0F5SCwtvkqtHJduoI4R
	 RtZtUsYssclmeDpNEItUyzUyQ6LBvudcCjxO+leKtxQsjCnfhZ5aiEBTU6p1qQT/P1
	 WJC4k5zkTpivNXsXM3GTa81PBQ9KeEQkkwrLgc0y9L7gYmUua0ONjNeZtPGAZ4OX5E
	 J0oKuf6bpB8YJDJLyZ/8Wdwn1dcL+3duKAGF3uUxBdbb02VvY1uXp2O0frBtOmHIXZ
	 lzsqCqHAXGwZphRu5eoCVHSd5I6Pv50/cld7bbX6aZwy7aIeiyR8SYdDXcOAjLL9ua
	 /CxmtLGaLye5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91650C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 09:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174099473358.23615.3589527302364795042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109e74e20ec6af4877dac64a243c1044d0bf8a1f90916e05bb471bde9b1843cd
Date: Mon, 03 Mar 2025 09:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740994733
