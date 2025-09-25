Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4C1A1E0DEA
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758822593; cv=none; b=BlCICJshbmty0JlGEVGoRaFATiX4pgIpL2VIAQTcafe/nFszomZ8Delp0yvzEgHX5esKTzuZznDUgmF3Sobfc+4EpZE4FcjRMJd6QzImrJGJ36YDvd92hcO1DClQiHBkutS1Ya9F1magZCYw4hOPX6khcz4hAmF0sIsY6xy49zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758822593; c=relaxed/simple;
	bh=3zqIGGR5IXJPr1fcY4FT6WZVQ0TPvzRaW7umRmJMbOo=;
	h=To:Subject:From:Message-Id:Date; b=uIJBfpIAGESyBEN1prHMyvShHAFZjLhJ46xtPlq5JT0u/6C2QPjhDt6kz4aZzeJPEa8Dt8JmQDygevltbsnmp/MI3LNrcLyWp4K9LzRwxDtYZ1Rran9U/BHQJploGStbYqJ9tJvogJ6cdUF7SMYFAd5miT4lvbNYgBBPb4ZjnRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxEjuOXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxEjuOXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1452C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758822593;
	bh=3zqIGGR5IXJPr1fcY4FT6WZVQ0TPvzRaW7umRmJMbOo=;
	h=To:Subject:From:Date:From;
	b=DxEjuOXu3fKunkO9H6ESszLToG5sNnCD/xn1xZWAPCWUGXff0l2tQSKY9qRIbaL4S
	 WMy4TXR2Rj8OsAaQ9SWxDa0weMyy8SpI0s+Tt8cvS9hCxw+fAzjf/dvM27kZ8C6YXn
	 P5IhvpuTUlpIjIGaUEaFYsxaJ7j1WCRwDZSCGE++fxLPeKcTpIHYEp1zEaonNdhVMI
	 V9f3LZBGKCUeGseHsGzwZFpQv4F5E1bS3yJb2NvM7EzfhFxH2QGUk+lwZzbLhsky4G
	 yW6GCulo12Qa76epM6/EuFel4+e8UlKFlUgStR9XUhjI1m0gTMQfHFQalJ7k6yDrYk
	 mBCvvWy5iWL8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF8CAC5B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175882259358.6622.1416897881886407318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2903cced8cd5bdbcea59597ff48a1c668d6873341014519038cc788037599260
Date: Thu, 25 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758822593
