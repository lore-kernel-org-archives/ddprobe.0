Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A612ECE8F
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755009594; cv=none; b=N8NJe/8JlKGGtwfOKyY0Pp4XGEU0dtr3vPNCS80xTxO6qNRuTmRRusWjCfEVJ1ga/9Sxg+qCJSZ64S+9r3JEZAPQ1NQ00W0mLfcFzGyPZXZSwxxBphMHq7iWf7uUSW7mEjkGkBigC1cAE6gpVBij+lYianU7Mv5qCrJsIpPrxEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755009594; c=relaxed/simple;
	bh=uynXU4G3v+zeTAivj+hW7Mmjpf3e7LKcap3rSF1hfLc=;
	h=To:Subject:From:Message-Id:Date; b=l/geE4bpng6uSSm1+W9W5MRclA0TgQMnAWobSpTpxV/OvewY+pJ+S5qkI0yGGsthnvoIy5Wzm+sZ6KhKJ10a0BTe7HmC/H57t+/okEz2hCabyyIO4fe83ZaP8dHxPrEHt/FFAsXbomEW4c2WAwRvTjafrW3mBg1wZ20ZQr85pCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKByfcKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKByfcKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEC8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755009593;
	bh=uynXU4G3v+zeTAivj+hW7Mmjpf3e7LKcap3rSF1hfLc=;
	h=To:Subject:From:Date:From;
	b=nKByfcKFpyxHN9aDqm1HPX+FHRGeOliinGXH5FaitXxcPcRyQr8H7VmMiXOh87w0+
	 nAee0HhThhp2yrPZvjgLGCha7CFl6QVDY+dZQYH2VRJccEehHEVFxwGtcRTyYWHdEY
	 thWPUrIHgKr5YAWe0yw1NiJBD8KleZz9cUHjbejs6PD9JBgBfG6UC1PJUaiRZ3/+Qy
	 aNTSZ6dKshFmaxwcG964z8Uh7t03Rlrhc9KeS2O87CCpksqmLN01qbNUrhmWhLMLIW
	 +9uMCWRLOLFE8ek1RgcMGHrfeTItIspIX9twyqc41Wzag1D/Bdpq4kD7BKNDYmeOif
	 f2Nqd6nr5aPcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577AC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500959358.3769.858759284722075309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86fa3f082447e974cb706a188bf0f20d1dabf7a2a096e0fff849d79107dc21d8
Date: Tue, 12 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755009593
