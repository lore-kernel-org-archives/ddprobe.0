Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9AE1487C5
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723066554; cv=none; b=CMnEetrn/aiBb7uRFcIq04NxVwmCUkT+RHqiNBz6fmtZqdIsXmAmfY5QIy3tqfGZs9LUu5pK0YW6C2uI31IifMV/6rpd/vORQL8w7BSiwEZ52Pkj+eg0j+jVdYTdhOg4Hf9jF9ba2SfWlKcwIGavpxMt39CENOZrm/tDMzQRh6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723066554; c=relaxed/simple;
	bh=gpH8uWrp5aQdsol47rr8FAjW2uI36R+y8TfqH7ohado=;
	h=To:Subject:From:Message-Id:Date; b=TCVKyxY8HARjOmCtl8hluR5PdlU6nC30PXUecCsTRjglo3prdHPrjab9byUs5AOyu+MDISK4G1thppU+U9j3FXd2YpFjePaOUqFwSYuge9jiAQr5FfU3BGLDBf5gqg18AifyOfG5TXE/h2XRSbgjlq99AfVyDc6JWCXOyBf/wbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gk6SctwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gk6SctwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6394C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723066553;
	bh=gpH8uWrp5aQdsol47rr8FAjW2uI36R+y8TfqH7ohado=;
	h=To:Subject:From:Date:From;
	b=Gk6SctwLMH1D1UQ4bFbhvGZY+LXUEgIeZy7YDmv9/RQ0b3Fs0p+YO2+vD3e1ZRd3u
	 0/DBMo/fXP7a75u1Ek+RZs5y0hTzzYZTcmYbLg80JnkPSOtE/aqFYiEzHrlfMZmIOe
	 jeMwyikzy4BLbGsUlu+SjRQuxmvqIaLV1eyQh2tciNK8vlboClJ0b3h2k7tZrRqWHt
	 ez4ZYa02eARl/jeY/r8bbVIhMEdmv7xwymD685DTA7iZBBOmDaIxPNU7DiaU4v2pdi
	 EFUGg7/DRFTzHAvjWHdM5DeaCUvB6Zm+V3D2PJZDC6mye2slYYz9mwEr5jmchYNhif
	 LwVAGD29/ZcoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A242AC3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172306655365.1247.15949722982127899678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54914b294fa119030ead8b7d4f2828c2cf21149f36f6b89091e89ac51036a0e4
Date: Wed, 07 Aug 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723066553
