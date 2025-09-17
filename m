Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A272E8B62
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758127194; cv=none; b=OOc2ne0bDxLYgDW6X+m6fmOo9+d3p3VxKIcjsV0l2nu50/Ie2bD4e+ZtRjz6Zp3j2a5bqB9mO4JYBPJki161U1riz1qrgsT5A1KiAID1WBS8K+h4wE4kYsCC8tYhfJdhnHBse27Xg18leV3GlnmMoEKdTQtVu8Oq+Kns6eawUsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758127194; c=relaxed/simple;
	bh=7i9bF0z4DR2ocwFHwPau7PL0p1XxjuPMH772SFMrMJM=;
	h=To:Subject:From:Message-Id:Date; b=SgA8J50WadqBSTYm9YF9nOzW1xnPx4ONOitU+m92x0jVWm4JRRDCd+oeNuc8mpZPDRj6ybeIsK/mLt4yxSxa+FY4FeDVBaQMoMGeuMGWbISs3FGXHXIcm030z4kOMAQ+C+s2SHS1KE4x68CUNfR7c1/HnmEqIyrNdfXnnJn9dNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRf2z/a0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRf2z/a0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31F3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758127193;
	bh=7i9bF0z4DR2ocwFHwPau7PL0p1XxjuPMH772SFMrMJM=;
	h=To:Subject:From:Date:From;
	b=iRf2z/a0BqP6kuRSgukkhaTEBlBFwZDXS9uRX0Fiq340fJ3sc7b81oPwp+HiDDmS5
	 7ybKxfVHIJPPoLmv7gixPq+Uhw97MGFwsrEd7wxALVI6TzT79nPRpuJdtRzW6RNkEW
	 uOWXPNTC3aQ8fl2XFh2Qwe9/jkAF8XbI0D4PIsC9gnRwof3wwnMv9LKCfSBjGq4KNi
	 JMpFgx/pLFc9EfKomySrmnRaESOMheH7muVPyUX99sNrpbi7kH/p3I/UpaTrWwBB4B
	 QBpCkdwQYYH8eoY9+PE7E+fK6LZvttKS/qaXNefDvLlvXawdPPN+yS7N9IdXpgVyUh
	 uDfp9w07Eqt+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903F3CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175812719358.10027.4553429563257083701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c709d695b10e9239150e786892a71ae80938d8c5bb03768debb1ef977e71af
Date: Wed, 17 Sep 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758127193
