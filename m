Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3A3EACD
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826994; cv=none; b=CPvKBnSmSufUMJwaMrURhIdSCAPbIrwM+AkRE8KRVDev72fXaEPzffCMuB87dUvbPVUlN73Jy7zjtiNNryDx2k6YMRNFIt4dbh8uAJ+G7MOIqcYtmVljx3LJVUpzWPoWRjcBrQ0y50jtkyj3NvJND5pEt0VVsCGBLutiVM+djss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826994; c=relaxed/simple;
	bh=7KgbFJup/ho848OtheFu/7cGzrk+zNnQSX9e/p6E1IU=;
	h=To:Subject:From:Message-Id:Date; b=j94zuV6cYuKuv1kXc5Rw7GYSSqAhQoT/yFe+1yzY7KNSncN/JY8u2IL3SESRlgNLF25wBrAf/w8V0ToWBn8LFJ3UXgRYfXih89bKXEHDEHJ+O821GVoCNEHjJU9eim5bAUBKUyfXV+cdyB4o6hropHF2Kwk4OKGc5xViVWNAspQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ap9lfE3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ap9lfE3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6147C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759826993;
	bh=7KgbFJup/ho848OtheFu/7cGzrk+zNnQSX9e/p6E1IU=;
	h=To:Subject:From:Date:From;
	b=ap9lfE3jnRgjqD0k8phJEJdOVcvv8pupW2Me4O56IKFLl7koq1QqUYoB8NWv8w1lN
	 LgcgASKYKazl1LIFhwoB/FHtUK4DEZFbEzmGLcxfJJ0MsNgVVSp+30R25CCRyxHEQn
	 PrLEiI2daot3xTSN1smxgA+WdnrLJ4NwJVtCmlKlVZ16pirq0cmdEyNZpgga2kkZ4e
	 RGCFtQmGjTMqHPfQRNti8ngjtIg6pKC9ogoecmr5PgG+0wd3kOQ/Yn3i0dV4y5yEJ0
	 KPXyhj5p0Fp62N+U6lkTH0/aBSBSB80egSqD1GIEhrZNo/Nzm3ubKIAqUaRq87NK9C
	 MMOc/XSS6R48w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930E6CCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982699358.30401.8176529954816340750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f485c30c4411a882d624d52a9114bb8c406afe48b63feba836c4d8769d36da
Date: Tue, 07 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759826993
