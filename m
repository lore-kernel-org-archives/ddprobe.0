Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E742D2DC322
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773167094; cv=none; b=VCdpc2ZSX3H4AhZqzX8G9+jSmRGBkYRnGQfQJ0EPDw2fKsolQECO+hpishVsqlN+qZIi/r7AnZUrEtXEZjULWdU8r3xRV5QfoET0tqXIkYcFKx3LNphgC/Z9n1vMWYFPkiMp6jFuvneSv9W4oBCL6pG/MlRTKGd6lPhkdCwCtU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773167094; c=relaxed/simple;
	bh=5aTe8YDUvIqBMl5FUlASUh0J2zkFaQa+9gbb6DRwkH8=;
	h=To:Subject:From:Message-Id:Date; b=VHbNZlzTM5Z8vhwTqZ/8asNKfbOxFiRjMAjFhxtEepQ3iBCitGRsUSLTdxNhQ8bbOl/iA0zw0pDIB1GtHz2UzuKaLeDfVQ9EseF7wGrATjxwqTjVPoOFhiVmRMrxm0VROGLLgweP4bArrES3ruz8ottorkEWOvhihG6RNK2Lcus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNDI1khI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNDI1khI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A136FC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773167093;
	bh=5aTe8YDUvIqBMl5FUlASUh0J2zkFaQa+9gbb6DRwkH8=;
	h=To:Subject:From:Date:From;
	b=eNDI1khIA2xf17/jmtR1+EK7Ukq4eDwYdimXfWFAcDc3gfZ3V9VbQApZtle8QyQEk
	 me84bsAz37j0QL5MRCJB5pQtUI6YRB30ar4p9DZ7tw0rwjWLiKXi9wq1WbjuGhOn03
	 Fdx5gYOR6SYtcuTvjFOfeOZSb0rj9O8Y89Zay0QO0Y9qKoIEbJI6h5f///kLUzmDVS
	 WaHwJeaKnTT8I0owoVvHmaTg4gvsJpL2FbOIUOnW3Bbi8Z0MYA/4++eXIpFN0FGne/
	 Uv4r0Ava87VhOQ8UXITRg/25wKWph0hAmfzvv9iCeWQ8UmSv7lHqYScT4izH9O+cW+
	 ECnDaUPZnFIbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BFFD4F19
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316709358.13584.2440385168154969025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a9c5985a3e1aa8e2eef14fa406e6c8a660bb217a2fcc1c7fc19485fb0fc199
Date: Tue, 10 Mar 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773167093
