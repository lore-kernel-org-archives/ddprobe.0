Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FD61E4AE
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754444994; cv=none; b=h4egKOPmX18SgmoUH11FRRCR/8yx06zqBrNz9f11DADsiweu0+kMkmd1JlhC22NFvbjw1fjSt4jttWHM8mBgT9JlCiTXZUeTnFcbmzlxMcpJ4JR7ucTEQqCj197kEJs84Di0ep1WErXgcpD5vY5nlCVHPvuIYXOazzXdEXEidpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754444994; c=relaxed/simple;
	bh=tFk4TCSy+GvbThWW40NgvdjUyrI+thCHc/SoaIN3IYY=;
	h=To:Subject:From:Message-Id:Date; b=WcxFRpNLtfp3K2kOJQNaMEdvbjzgNQusNljhyM+6n9kHHZrBPhLYzNVwihoCM5iky0lDDkbrIMv3+csvpXnfuX96+PY2Z2N3ZQ9z6r/3BrTOxIN7UfZqRLpErbxyCi9FDLhiDvOAVZCXTbaAJRctW8BAepVtH5Se9KZ4GCCkW4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clJZzDgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clJZzDgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754444993;
	bh=tFk4TCSy+GvbThWW40NgvdjUyrI+thCHc/SoaIN3IYY=;
	h=To:Subject:From:Date:From;
	b=clJZzDgT9QemhzX2czv80AVtBYEitxSOwcAfddVOW1Z/3eKTS3m0hGDOK2L0yLDkR
	 qnihUpwhB0uWbLeFEYYEodTM/JiWyug5WvwzWR4xI+UiavlIKYolJJPraBiXtZ4p9D
	 va6jbZAPIWttqvBxpxH9nnmMaH9Q2jeNkbYPOT6ujF0zZRH+C+MnrxWpNtrgHs/RbK
	 ILg2as+GfjkyhURkcB2NChc7SraLoKTZttwqVMmfLn3hX+dgysp96S9oZ20MkXSGBG
	 fQSRkvStfUyLQTyaEi9Pc94OAkPl2yU1b/brPCC/QXvUikuvsyZiNv4TdWMnJLnHZ+
	 9u4UcOy8E/4Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B8C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175444499358.8509.721954327494785627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35ed47dd9d6fb60a2d4293d518d68067c99077a1f4a3a7d2046e0cc6a8de6649
Date: Wed, 06 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754444993
