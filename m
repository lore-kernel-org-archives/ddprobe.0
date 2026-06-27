Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADED4204E
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782554314; cv=none; b=UCAnfjBAP4zKfXT0AdpusTQ9Ce0i0FQTpNmN0Rxlt/VknvXpI4PGpk/KRDreZGNx+GHeBBnnt50jHMMLIuLUfFZ1TxYMSLeAwOsV/E6hKz4gUiHnEEoT3mUJGrhRY2E2CPFRlI8M2xU9vsyGlnRQBdCjAj4INigOI2paepqJuYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782554314; c=relaxed/simple;
	bh=7uWOd2Z48TA45RU+fYTOEvlcgJlwkqUUfpGH5akn6HA=;
	h=To:Subject:From:Message-Id:Date; b=fEEe7PHBiG7zRp1r5K0QWkU0RxMUyYsfK1AmzjXCMUhodzTQn2wwcbiTOCESejpxRWFcpYbF5WU4qwnIUZBTlcvygLFZYNW/3ghpDA6i5bsUg88IQRFED0fE5mj92UMdvkl7kXHKQSCjjLsUEnv8x1ebzDdbfoL/e/8PYTbaxKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVQnhT5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVQnhT5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DFFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782554313;
	bh=7uWOd2Z48TA45RU+fYTOEvlcgJlwkqUUfpGH5akn6HA=;
	h=To:Subject:From:Date:From;
	b=LVQnhT5nkOmrkydrRhoUI5R8ZpIBx69vSaAIccTGiR7z13cytq3hZW34PPOsN0k6n
	 tQ8hR4b+6zdVoNvyKEgZQ3Y0IyuKXk55Zorkb33njxAOA9Y0gNfIyg8IB11FhZL3Bt
	 r8qKXBDD4ec24ETb1pfn+awGhyy1S884jZEYbDEfClLnTzskzpL4N8bWHwzJXl+ns9
	 x4JqEYbxU/FQs1KXKXshNKL2no6JOWTssFz2PMjCC3Z6J2oFKV6jk9XMiDbLKvV0uR
	 5JXzbc/CKsEh2myc4Av9Jd0RfZg8RhrcD9DowPDZ7ucDycoeXr4IvXC52GipkqMwqo
	 a5+J+SvBXB28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3D25C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255431369.22499.3965109125869767523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98adcaec2030ff256d43e99ae2db91e457600de2ed569a5a98ad8cc4e12390d5
Date: Sat, 27 Jun 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782554313
