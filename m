Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB6421D3CA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754342995; cv=none; b=WA5W9INzolxOfJdQW6d/4HKTU/VkLUjyISI8CJCtqRveQ6TBDrbxji36RNlnHs6c5WzyrmOa1b/vQnaCUIfTvbo0LxnZPvMM6c31X2G2H+AFeaZlsrSAJIC1o5QQWVO1t/OzHd3OCSyTTirEJQGXEm6e/ZOUGgdveZlI+MHkKJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754342995; c=relaxed/simple;
	bh=sfL2Lf4Sx4lbKY3iSdetUVipR/ZfEGmBAwYU4hiT2jk=;
	h=To:Subject:From:Message-Id:Date; b=A/Qvz8N3fuv+lOnPM/ybQv8MTO13BD5sSwj1rU8hhM2x4iQLPUHAr8u0jLFiVJxZc3R/Dz6nDMar4maBnKE1Lsmh7SLEPJYhX7noMK9a4OXtLROlDDeS4RaK2fWNG6/LwF/pHdP5Nm82BzhB0ZQKK1FYtIBDZUA7lAW/S/+/Kfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyN7Y2kz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyN7Y2kz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC317C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754342993;
	bh=sfL2Lf4Sx4lbKY3iSdetUVipR/ZfEGmBAwYU4hiT2jk=;
	h=To:Subject:From:Date:From;
	b=NyN7Y2kzCxnvcrpBy5F3uoEdCKSW4hQHKMCfijYYC3dOGKY/c4dzW3Lr7axTyaLSk
	 YjvcSKJP2L4bFjW194aCKLjoEKqzkc9zotVgcZf54TgOIjiDidX4hm0Ht15Df1V8vM
	 8wThjcZVGdNCTCbPHjQwVAILZx6oY0KNIX0b7Tl0yJ3n1q7VVdZtAhJ7HV2y4K9qYl
	 ZjB9YwoOBKkRl1BToGYO2TTk9+mEUpUJX7SQI0uao2/RK8+frAiVGPUvtsX+8ykR4f
	 vM3fbQx6lLXlplv3tZ85KgXPUelDsP7zeO/LKVsqGqRoyFyQRLzmjkF5qHWhK9pLnR
	 U1/LePOYsCE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860AC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434299361.1609.14414550368236658845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c388a350ab1381f67535c2ae489a0aea24edf90a15032e15b139753c7870f5
Date: Mon, 04 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754342993
