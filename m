Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13686372
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730973354; cv=none; b=du+I8J15heGwQTCy5pS3oHFKTX64Tdr/tVnuNKmCmN/Rh2UztL4pbQwCERUsG1lVpyy5E1r2i2/gYdPnDUce8+A+OqcIL1cKNbemreoh6xd7nragN0kNbFh6WC1r9SbGpYVmOx5YxjtEQDLQFvMheqOwNSPgmF54ky1keFhR8Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730973354; c=relaxed/simple;
	bh=hJIroxaGghwOfqiBtUzrUeMvZ2eVyV0a15ximw7UTJg=;
	h=To:Subject:From:Message-Id:Date; b=s/4ommlPMoV3GFG30f9Zs2xiKXmscFVydKkKcYU7JHtF1LTsFRVzIS40j3OfBPGDDLhp2wkTt5vQ35IjUVOkshIiQ3jx1puplC1eUacKf6lxl5d6bsDS/tJbARuk/JOVVLvE0qhNCe6PvjcyIJkvqdQue2mZQbG7i6h1V/Di5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olgtFDpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olgtFDpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019EC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730973353;
	bh=hJIroxaGghwOfqiBtUzrUeMvZ2eVyV0a15ximw7UTJg=;
	h=To:Subject:From:Date:From;
	b=olgtFDpUZKrLWvyjUAO2yPNkEcFOARK7Q30vGCm4iFryVNWkBHngIzTGIgEjvJEKl
	 B0b+W7eI4oHoIDkmWHtjHzHQsIl8oa5x6Dvgcu5KJlO20BK3l+H90RVRgZUbV8JhPU
	 z2cIXtxl6J+t+8rQadyRRLplu7/ZrGraU5gePBySNdqa1PuHYkdK32yiT/8Q3M02oL
	 GP0dSMF9UrHuUoinWUPpEWh6PDg5Odatzmpu/YLFay7CFCBU1PJ3QvhsCkap3ttSLy
	 i2Kbv5Bvfxjow5mkVeRzCfz+LVpLLD7ZBz4nTKevM4lK463AwlKRbOP+2B/PLYW0+3
	 D+iZl9wIJi8sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BD0D5AE7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173097335358.29732.16458800984544832094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40159789d2996586eb48705892d4260491c99ac17950597f31e4f8207f85a0c3
Date: Thu, 07 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730973353
