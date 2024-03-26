Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089A43FB1D
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711442297; cv=none; b=RiPMx8MtuocfwUREcA0zN2JtkpRoN0Hcp876UGfT43FT8ibCVWgiobcSlfjFeKi55NccaiLV39053qUhjzBY2I6ikqNyWnB7N5DiPfbLveAl2+Vh7UiW3zsALBWSJbXic+yuRfKiO2w10SA8uOFmtS/rP0zfRLRpFgc8G3WeC1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711442297; c=relaxed/simple;
	bh=PiHk79T77yXbgkKWVSSyFGHK+0tsuj5h8FVQ1wsd9d0=;
	h=To:Subject:From:Message-Id:Date; b=FReLXtFkm2azVZL/TsoSqrMe8ovzCilLDRfakzzXZWFXPUYLQxcyYyqUo4WJhSyfuU2UK9tetsX3SB21QaCh7fxKVvO77XvrwuEcxwIWAdft2HW1ccsBekIpVIwVZJbmP+mlMXmM1uFaPci0QzAdI2/8XsOFkXQ7rMuElHGsEA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5I9wQTU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5I9wQTU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7085CC433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711442296;
	bh=PiHk79T77yXbgkKWVSSyFGHK+0tsuj5h8FVQ1wsd9d0=;
	h=To:Subject:From:Date:From;
	b=L5I9wQTUT29P+G83TuLL7pE8w1Qsn8a3MQCUV2Asb98RjV5GFgXue8LKumOkHu7mo
	 S7UMnaB7LRVkf0nkLHvSHiWs5ea78dhLy4fcSMySJ+PrhL5uJG2QW0/kcvPtmhOjso
	 TQZcApfs27PEejnUcE6685hqYqNYukgqxujCk4G/iY1ZbzAJn0u/7ZS1ftp74srSV3
	 03UGf4ZrMMQIkjxRGPzwWgqL4X9vrgqKIvItWuL2h5lEYLw5ECOsmhH4GVg8bHm+sl
	 xMT3LvAHbdW7fLrOBvtjF/jm00HYLnPsPtnKWxRtse+mE3MxwAGSVZB4Rd0TtUrFr/
	 Y+t/gX75cu/gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E86C54E58
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171144229638.3552.9534007642606159400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf14835d0cf96389aea90a139288969a207a61575b9a06acfba8138e245a895
Date: Tue, 26 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711442296
