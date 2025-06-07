Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3386C2869E
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749308394; cv=none; b=dbl1jECa0FTrLCfx1YhTT/z+XTRRtcMUs5NfLuyxIO9tV5gL2XMUT8phQsmnacRVFpwntVey0LNwufvVkNzRnWLW4zKEPHrQ1vxM8e77l2lCGq96OGcjX0Zi075CQrLWJHKAf/3Sv6B2EX3D2M1MndjRMQAmCdT3qTUKVOBe5g8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749308394; c=relaxed/simple;
	bh=jFRPF0MbAxOxpq89zVnYO3J5eTxx3RDkdTWc3NTatRk=;
	h=To:Subject:From:Message-Id:Date; b=ah/lapyoki/Wmli07xx+bxm9d2HpXR4VEjtgzBP9Gq/c9qLGxRYk5FaXUaG8Py/yJv13iLZcMkxlfqXcA619kjA772+YKyyuF0YztNAT5wJxsiZ2W7Z83QliEGDPbgGZx2cDq6NlptvD/V0/nJY0Ia3XA9Z6aImPfRNIw0HBA60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHkWpNPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHkWpNPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FCEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749308393;
	bh=jFRPF0MbAxOxpq89zVnYO3J5eTxx3RDkdTWc3NTatRk=;
	h=To:Subject:From:Date:From;
	b=UHkWpNPXiReiVeTzSmzc2Zu1gzh4dicGfqqoM6WDBPhSve/uMUiI20+eDkIoNiIOk
	 TO+nrOZdPyMI0yibEKT+BYoFEaoQEynvwAwti3l2O1/6jIYUicFGekBcQmjyHtRAPX
	 Vh1bO9DgrNTTIJIDx6/LJ1cYFMXF4DUI/SLtB4rXxKYmJoavae1nCEpbVyP/IqgLN7
	 JiT4NAilnDzCXGhiUfpMf6uL/N1DI33sf5q0oUcgyLiifSCK9ECyGYRiRgm1MFSej7
	 WUviqByJ+AQaOK+Zw9aUnRWJcPE+3z0OogU9o5+heDB7bxVd3Rhb4nzT6UtlpA5w2U
	 ZvHBCrFwv6yUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE82C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930839358.19949.17489622947677857177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c6c436d806b60a24260cd06999d15e2414e9f396a6ed3b63b768ba807f017d6
Date: Sat, 07 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749308393
