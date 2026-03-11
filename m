Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF14D3D300E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773226494; cv=none; b=OQoULmopec1pDiV7d7VMPKs6u2i7WvwcFwsl7STMQ8EBbAgfb87l7HeaNntIi9GoOOTwH/ByfDUDxaW9YfFuFo6851DNK3dKc6UFfST0DwPCQoYrB/4i0dNUehj9O+3lezqArclCNZSxMNHOmT5x9Sk1eoiOxdMwsAEmemii+ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773226494; c=relaxed/simple;
	bh=Nsf3D7/p1PFLeynaSrxF8y0AjQCtkM93uArWLIA/cAM=;
	h=To:Subject:From:Message-Id:Date; b=l5xFFPDStJfmENtN0bthqUsl1e8hHqGpKKM/AXMPnsIlYlFQlDLmdM2EQRuUEgXqM2HRwfuEuJhIR9TrP7+ivA1v8JaYrJuKsK8u4p+7/y6PtdSPS9iSFfDkduETOwfXgKHg9PA7PmANuv9dZADSN1YRBma1NOYzlm3XTjnoh2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhAbmKPp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhAbmKPp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773226493;
	bh=Nsf3D7/p1PFLeynaSrxF8y0AjQCtkM93uArWLIA/cAM=;
	h=To:Subject:From:Date:From;
	b=jhAbmKPpOHUDHPkCMVPO9Bn4CbHLmbQGiPKTOdvvlfqyAqlQb9EqFrJtYtJLEVfQG
	 GTbnqGdytM6Ji6Kry1cdogzWk5Q9qieNOeYSlpFnqcAEtfJUcZJLXDSzHS0ow3vbK3
	 Ph535cn6ImHv6fr82jZv1kPrXT6KD0/QOeMfohZytSo3vOnym6OFbjC7hdus/ZUAlX
	 g++OBCu9k0bStw5sReZN7unEDt7RTDpJdSw9exMlBkMtpOMmH5l7Ru4Le6epYoppv4
	 8g4U9XkPZyMaX3JraXnLivVPhMump/wuIPgz1gq7ny45BDJjb5/jWzEkfBt5myoTMR
	 Qqzd6HcTegxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE37104C00E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177322649358.31731.6880075596229067779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e2c161529f2c7b6dff8472080a6c6134ac4fe53395788989f1710a66d05878
Date: Wed, 11 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773226493
