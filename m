Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADF42E8B66
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767584634; cv=none; b=gOllDULO17OoAE0ZI6xE67dKfOx+GsZhhFz3TZZ22aBwUV8eoDc1b5o0dVfUo60J17cqw6D818jJrUDcUW/hD3bGenZWl4xZo7TmgI9N64JDLxxmI2HMYzumGDV1DniBTKGW0AQ8OLdH31zUc9wQ72C7z6ZnB5/4+W1MdDR5Ojo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767584634; c=relaxed/simple;
	bh=j5pjYEn9/E/M5weNMcxtcOlyw3mCNmqINIi2TrcZPE8=;
	h=To:Subject:From:Message-Id:Date; b=iDhjpQEgrE4DbKKHWeGoIsvyd1ilQnEZtjXtQ2/7hbkqfd+R+GhvAoCF4+wJ3gbJQrCI6t/RFOuIzNxuLdRSbYZgu5zEMMfKAnDinm4cJRCD73MoahXl9iLrFbEIVKyqyPNH7wY/4H1vIiYlTRqQsUXcaXrA2klEUQEiigxiLes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6kwPsDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6kwPsDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ACEC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767584633;
	bh=j5pjYEn9/E/M5weNMcxtcOlyw3mCNmqINIi2TrcZPE8=;
	h=To:Subject:From:Date:From;
	b=K6kwPsDKEKjWugHZHpAG5ujjGQoc3QY7OSBpWlQLel2poWvis+mIJGQwwDFyyrink
	 ZIaeN40s7IoELhHohseSmgqctGM4fsZjgvC6O5sb5Oueb6FuEQroMBjkmhsKnez4I/
	 Clf9HF0pUhgjPuu93nuT47TyBaum151MaJ5BA1Zjv6Ud/U26ukeBUusBgjEdj+Vl37
	 pSrobfqoE2VWE5YC9FDdXi+FZNuIAbXRLedFrPtoX+OY9kMSDSEyeNfl/cB5PVrDmD
	 ynRxB1c+uMFqPzrCeh5Lzl9snKJS0nnUB5AJ+l56GghbGZO1SJxfRBi1ZOmb3fbGn+
	 VOeFAYY4ivGrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2ACC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758463362.5761.17900887683724717036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642e69c24219c2fa65a000b3b0cf41dd317f6d8c1627e833692713a515879a80
Date: Mon, 05 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767584633
