Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F69334A76F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778137654; cv=none; b=DdcGpkUGQuZW25imWpA+VB7nbvBnqi9K8jPxkpCDF1UovPWOug/iK4fyXLwUeecu6W7LSHO1o1ikvlnkUOVD/f3RuaTr0cvDcx6wOt73BNh5TU5six+DTgbmFo/WL3CAVDZToSWSF6bonQcy7rs+CczqWYau57Yt4P/cNmT5Ep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778137654; c=relaxed/simple;
	bh=pwcnw1p3uSzVqsR4G/lqMbcEfI3T2uWgY20/gbK2WjY=;
	h=To:Subject:From:Message-Id:Date; b=NNXv4VwYur3JXAiqg6rzt180Sn+rF6rPC+PY/gHc6DLisK8sv/jEFrBDIQHdeYCBGqT7FIYdjBCQkSg7Uo72hPn7unFFloCTn+8i1aMkqckeK6ooiNnaPvOPNPIkBZ782a9KMYHojJdaA9NVS/tvkDtYw0tIpYVaeC7T6EEz9Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbCr1VG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbCr1VG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7689C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778137653;
	bh=pwcnw1p3uSzVqsR4G/lqMbcEfI3T2uWgY20/gbK2WjY=;
	h=To:Subject:From:Date:From;
	b=KbCr1VG9A52m0TNIxLU73jP0PWPWoXy1pZx++2jZir9T3bibfZrmUwqZqv9g0cMfp
	 R324ZTsSaTNlEFllbCQBwmVh1EB0XVjDMtqBolaxWN3UNNcRBji4+Luw9UL223Y9Q5
	 wJ8mRiIvVSegwTWPCJw04mDL68sFThy4R7ZdUh7EB7PWHDcdkHC1bGTCezQCT18JsU
	 oZlmPH+dxB4BltfsTOftNavkRdWfZIp9s9wbzHVC6DdWhuZzEmKbK3BoNT/YlO2lZP
	 g/ZTUu4zLYN79Voc8WHubeHKrauZg9WQ3BrtpNRgtvZ3l9qQzulvwZfTqrzRRFxVx9
	 tJ3+xNuGWJCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C92CD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813765368.25515.1310093705346054660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53d7c1bf0cc1cb4bf4d59f6341c40a31d06c78d55467b04263c01650f5a6403
Date: Thu, 07 May 2026 07:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778137653
