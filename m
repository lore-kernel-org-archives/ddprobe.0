Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8622C158A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781240794; cv=none; b=PDT2uRftwd1LGtsoPgYy8ai2u1hfM6fh8DkCAbMd84/i5HOxFrZBuk25c9zToUurAkKyPZs7lh0wlGgzWRagx/gE2oosnTwn/3cHsJmGBe70gspMj67mPhPa0ZJG1AfPwiH1TEjU66SMP0m8NCOt3soU2RrRrQWknp2TFcY83ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781240794; c=relaxed/simple;
	bh=r7KCFxv4yDE6nfb9FSu3O7hquR4L968OeSxdBMar3/I=;
	h=To:Subject:From:Message-Id:Date; b=jFoXYxRZ6W9SLgk11+xy0BdyNb71gYQg2JZFHY5P7SLEn0TdX+FeO/+GGKYb4rkiqSBsGHsQlUpMKGCW2cGJNxVLTc2MHqZIZ9kJAeAeNEyuDFQCV8LZqJPom7SOiEpl4AkZLBW5QCOorz4gvKKx34CAB9tuGUI/lkNV4oXN8H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFW6VDPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFW6VDPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2993C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781240793;
	bh=r7KCFxv4yDE6nfb9FSu3O7hquR4L968OeSxdBMar3/I=;
	h=To:Subject:From:Date:From;
	b=qFW6VDPTQiZe7SQ2l/jmKzwDp+rw//GmZa4D70eZbFrB5R93+NJW7rcIuc4kIBUnn
	 z1kMYru7tHFYw+FqqKLCRSWPjKg60+JBxIoMVQYVfn5oZglBxvUFem+0lDF4w25aGl
	 zeZt+ZVylHx0jkTafOrp/exyJYYC74EJLh0CuOF4sYl4ERjk60xFQ16+W96FaLq+8w
	 z+CgD9wf4W05tkjHajLBJwkpncbXLAQ0H20hA2zgqA5XkSS23vFmFmdNSnWAyNDrZd
	 u8vuDz3rzMkZVZpAdIfRPiJaLFxOo8Mzi3+ADWUrLyHk5ujPltq/BDe0EaiWpXbKcP
	 MaybEembpxQCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A857FCD98CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178124079368.29996.1653353635346772967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8817fb4b76d22a31913952d913b3f04663b864b30ead2361faabb5e53407c5d
Date: Fri, 12 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781240793
