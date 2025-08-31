Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2996BD531
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756618196; cv=none; b=McFWKp8tKn4+TeJAYnsOIA7sZUZWVpP+rDaUgkkLEYRguyngldapRgrAmpVDd3aoVTvukEKkVk2vlH3iCCcwCLMx/KrWm7uL5v4Fc+bW5ztmC/NpNHNGtAFWiywRAK6DM2LzwcWKxbnMJkKsUR2XPhMu8JLd3wRAYdlLzQDcuGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756618196; c=relaxed/simple;
	bh=vJAVbO/WfF7V0KrB1ThuEjfj5w49IpAZQOW7k1DXYek=;
	h=To:Subject:From:Message-Id:Date; b=H2DNUgo+roE2IsKzrgAlgiJLgkfAtOFwjRNq/wGTYdFDeP1Q+UfT90Jnesv8kelT42ad5n5vj7JZ8sljw4NL4h2qkC/3YqbBjU+CIBHbYjjBfHCnd12SQuqm7QMEXPFGCGT9UKmQTX6Tp8ZSZQWR8t1mbddDotb3XjkelpKBdG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tv5AIeGS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tv5AIeGS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2055C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756618193;
	bh=vJAVbO/WfF7V0KrB1ThuEjfj5w49IpAZQOW7k1DXYek=;
	h=To:Subject:From:Date:From;
	b=tv5AIeGSe7bd1Gt1uSioC+UhL3zOrcZ95QbfdTigTpssD0oN/FdLSs1tgIRVCx20j
	 uBsScBAnP2Bo3IsrrLSTP0mX7nV0zOq0J8esq6v8Ceq/2rhFOgIKmvc4jnuqWUpOB9
	 Ldy+qJgOd5+pprnWKS+fjpxpSuRszamKtr1dcr1QcTaa6Pkbf4Ypd06kZ9+h38BibB
	 UEFDuJY4qJYHrQ/O5NlqaPcR/JEM4IuCFS2n8oPu/hQ+QE1CDwxghXOT2SwUHNIo+1
	 C2y8AohWxF+eK7S9p19mS0O4C8Wjy4SlwPXuXg0qqhiVeqZgzVGOmTTxUHYT1kYxur
	 ydc0Mq6wQrhDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116BCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661819357.28587.18315465010595818899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c852b4ebede5fbc169d006ab872e95cac9aa9169731321f66135b9ab5e9f758
Date: Sun, 31 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756618193
