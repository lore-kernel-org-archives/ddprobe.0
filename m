Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B08211CBA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764393174; cv=none; b=dx5S3x2U3cQZgzDRCgbh/v0JM/hv8eNOZfo+cSNs67K7MTF6s9Wgdt8VAeenZFEqBM3J0aARCe+vjyGwFCZ6ux1iCP4b1yACKndbPLLzwE+i1Ve849EbJ96xMuHtoPKSJHqpad0lEAg24e45zbjeTti+BaKMwjW+XKyKfwJPqNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764393174; c=relaxed/simple;
	bh=w4pX7YZk1f8jjXGvF9mFpvUM6mPUjFM9g/7AFKxzzyg=;
	h=To:Subject:From:Message-Id:Date; b=PLMQbowj2ll7uI5/sYEbBxhHtB6dCT+J4qlIqrRix6yADJXAu0oIz8Xsj8Fap6Tyccg0yVxm/JfLKt4REr4nPqNXwUUwJSfUwOiF/oNkQEdarESFqVnX1JdbuCLxiigrBait41SQRkhaBeyYVsj7DydrxOiBPkBhe49AO/0Vj2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cal8bMFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cal8bMFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FAC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764393173;
	bh=w4pX7YZk1f8jjXGvF9mFpvUM6mPUjFM9g/7AFKxzzyg=;
	h=To:Subject:From:Date:From;
	b=Cal8bMFXiIte9jZPObXv75oRLlaK7F+ZG2ud0FooFtjc4AYe+z147IyXUrVdTETtY
	 hIURXqG61vubqRg7f2KknnyY+sTNbKrUQYW8qUowzH0pGjvTKAMdwpeNubVKP+yo0H
	 DDA7uB8HkxTXyB/Dr1WB5tSejmjJnNzRBQ1FGDAxYSZoz8GI/Pll9cz3ztNosAVENg
	 BGDsSfHsLdnIWzlj5LpP4CqLwBe07TJAkhaTVi08+R5it/Pey1cRaTgoUGZSvHhRFQ
	 wbf4oCXC9Atmv8JFHFKapFbz3wMO1F8jN+vTSwcEmRhj3BL+jFjz9S2qpZP6dN1DQX
	 Ts9uhaEUdDGEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B33D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439317358.14081.1230485915836762061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f690095e2dcb7cd00f0fd8742e75a5dc43fe01e1ad77f678c2b77d0fecae3a
Date: Sat, 29 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764393173
