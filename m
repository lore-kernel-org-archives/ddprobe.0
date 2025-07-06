Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18A19005E
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751846394; cv=none; b=mPSw9x6ReSGct9hVDAsULu6LHG2piJ9cqXc7oNmMHBOG9VO5Y9otLyTGNfJU+FqhwZUMITB1eOn1aTYdNKf3LyW/Pu57DcLI40UUvNJrZT+UHoXuysPUxjVGp4jeLbKXnpu8a1hZGrWaredYDa/oufa2ske5FTvtm4msUISiQLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751846394; c=relaxed/simple;
	bh=3QVh1KHyfoGDrgsuWxc1ONbY8vxh1BeJRhC8bInz2L8=;
	h=To:Subject:From:Message-Id:Date; b=lAei/CfRQarrL5T+/CFv5acW/Dq3kX3l7W2grQC8Jmw9Z/XUvR1JRQ4OhECYLPEhKHjd+SMQOmz38gtEBmApYRJgxoBSMt2+98OyRvS/349mdCLAT7wuTacMSWtRByDsI+3Ds5Vwi41yxOdJ0vtqMhK7AKsvvT23+DqlVGX0BSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERdARmyS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERdARmyS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A138DC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751846393;
	bh=3QVh1KHyfoGDrgsuWxc1ONbY8vxh1BeJRhC8bInz2L8=;
	h=To:Subject:From:Date:From;
	b=ERdARmySvm2oVnb9cmLRZr+89o3EPbEsWmmapII7BeIcdC2E4S8bTIX+6CTzVSzxe
	 pOK3ygMNH2XyvDNbHNrmnaEa/MxI9UEgxO9umTKyQY24mBwCh2seNO8DGPd9VG4iui
	 aylUXnxh6KlFYWMYBZyGVf7sQJ+qPaF3xsTSQ5FqIf+xPq8l+nq31plmvG3Gv+RZ5T
	 nnridSGeho+43x4xmoX+G5kASC28rV0YIEhy+bK70q/dm8e6GtxaGFK5E/T5EElA6g
	 uE6RT973mG1bKlcWDKz6fk4Y0ciukQhJVoJ82ur2ajmeWaPho1swIN3//of3fDwb5r
	 +JlqX2q2kJ7dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3AFC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184639357.8824.10553274261731142907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19abe56510fba26f49aaf05d535339b24b10c5b9139989350362f4b1703d1b2
Date: Sun, 06 Jul 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751846393
