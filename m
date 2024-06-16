Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE14632
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718501903; cv=none; b=LN8haZgKO2IS/navWZ2sQqdoPev0GRO66jGyZAb7lkVCP4TNKSjI40SY2589INbxTlY2Vxq76f3Y13jycKz7SOFNikZaXF+kQLW8jjYJcz020XzCUNX8QPtscbCG6E5Unvsf8SmSSXgDSHSmx4O027WOufvzwVrqg+Fgeg3C1HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718501903; c=relaxed/simple;
	bh=FW/VbSFwKKaZaCjK3tLh9K302/cf2qZ++AM7bcd2m0o=;
	h=To:Subject:From:Message-Id:Date; b=KPvRO51wsbme4ylCaKj+srMjALJAI1PsHFjl35fKgs7FFOl1fPzzdhjLhvSFOeQ0VOSrMubrrS0WO+Fv0CWSkvXEh5/LPPhs2WURuWALDdWwEqdy4QR1YC1H+6Qzf2SmyUbBddJcbnqCev3aCFCOky3p4BfCNXE0oo1jZwusBiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FqRUaAND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FqRUaAND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E04C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718501902;
	bh=FW/VbSFwKKaZaCjK3tLh9K302/cf2qZ++AM7bcd2m0o=;
	h=To:Subject:From:Date:From;
	b=FqRUaAND47V9v32L+6uRfmPq+p5xt9wT+MzG9gU4UYyzab3VjMAhwGWaK7DOyfVbo
	 NQUCDN6urY4kexl/CdBZz/FuR/9NkqYy5Im5M+LooCyy1x3ReYDl3z2ZXUv/gR4LRz
	 e2Bx6pBzkiQbz5qqDijarCIJLbK4SjoseIJQfLn66RssZgix1krbMZ6Gxge17FE2JA
	 tp/kIEkYYU6sFLZ68gNqQ7nG5ftDm1aV79w9XsiiQfWStzgzxwNBzC3NqIF3IuhmLu
	 awRwizCsTjZJWV9aQnMr3EAsmSzlJ0U3wgL3hmMhDzBPetiENrBTrI9KGNwUbRGHIG
	 /h10Oc2pHpRdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC74C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 01:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171850190276.22553.18073615343575048558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 128f38eae9508a4bf845c09efc8383d104f08841200f193f9fb25bd75393cac8
Date: Sun, 16 Jun 2024 01:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718501902
