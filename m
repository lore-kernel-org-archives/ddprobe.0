Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38305182BC
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750829994; cv=none; b=R/o2Xiab8x4iT9pJexoAWtF0YCounDVXF3TV+ZirmThv5mJf6PrtkiBDvlo2d62F0NyojPN0bS5kZIllQ2M2u23CTLgfW+zRkoKtOsKbHkG8yv7NS7D5f/C4V6T4Z/omZfSncYrsejoejrscUI+SXVRWzvQTX6eWw77JyZOmbUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750829994; c=relaxed/simple;
	bh=aTCxM9x/2r8ArC1/HU3P1wwOx0f+tDzM0x5A9DJ3auc=;
	h=To:Subject:From:Message-Id:Date; b=CsaaQseT6eQguM1Hn5yJu9M694QUcreNvbrXAEIFBhytD0L6ATWYWP2l7gKCSKaVfX2//QDsa2mgy2+eOIkP/y3P0cTpUlXQAXqZSpVrYn9mALByQbkUi1US/aBoHT2hxwpqEdpTr5fPNTpEi4/XsuVfSH9HSZ4b401IpHJD+T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI5SQxHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI5SQxHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3442C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750829993;
	bh=aTCxM9x/2r8ArC1/HU3P1wwOx0f+tDzM0x5A9DJ3auc=;
	h=To:Subject:From:Date:From;
	b=MI5SQxHc8ixekr5reBt6XGmcjYY6qwWQbU3IiS3H6K942AxeRhGjXMB3rJYOSwdU/
	 HUlHdmNaJhKu2wU79a4aWkkX0zZll+nTxarbNrCF/90f1ypqSUMcP3txXF3QLAAZ68
	 g5Bq28BN827YJeBQCa9hwTeKwsmdhG1xKwH045jQQEQtrPo+2ulbb3c6K2vyU3hILz
	 5U82aIL8pOWVCUEPfdjDAi7StrQLacQRSu3ufvybllgboBFe+FhbC4cVGwCH8nE0Yq
	 +00xEWMZU+18db9CV4g6jI97IBcXDNlfpxrOyhDdtY+1GBy6a49J80MoncT8GxD1GH
	 /cqFhc1M0oKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906FCC77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175082999358.23654.6590146678512315572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48361d1335518d889065f7a86473c88ee47fdbe44b89f2cc69184e163bcb83a3
Date: Wed, 25 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750829993
