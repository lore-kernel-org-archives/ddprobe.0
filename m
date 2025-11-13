Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BCF2330306
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763020794; cv=none; b=EY9CyFHYita8kw8el/8hPlf6eeBIkchPHkTXkSl3NtkIACFmZ9824oIQ3Ey4DG53SDk1TGvI8JY+pHsg5IDSvw3i3s18bfVo9UFDx+swnMS//jn7ZMStp3WPmDuMXKJcauKdKd5UD4yTfi/I1f7xcjJEVSaisRRPntNErrtsLw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763020794; c=relaxed/simple;
	bh=3iMWuDV2uwfqJquF8Qkp3ZwqGVVc4r9ovKGR4mWU0OI=;
	h=To:Subject:From:Message-Id:Date; b=TULyW+hKdWMWFm4s/VT9nND3aMf+ow3bGZg6HYMyNuzTcJhOU9SLK7Df9PPVFgIx7WqW3oRRiR60nWyxsbhaGvxzYe2atxX3D+JuJEzL1XQDCGTGyoEQ9+k6th4P8smeDj33kaMZhOBRmARbpKEo1+pK+TNk+2ID4YQEifj+F7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTpOoUgC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTpOoUgC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24F5C116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763020793;
	bh=3iMWuDV2uwfqJquF8Qkp3ZwqGVVc4r9ovKGR4mWU0OI=;
	h=To:Subject:From:Date:From;
	b=GTpOoUgCCi0vFixQlM/rhZjCrHfLi7bVbqX/VhoE2emizp2iw97DiZ5SQWuXE/qrp
	 aucKycSqsQqnJA7JgZy8FHiFPmYimJEKmYeA7EUUJ+YjkwOC5JJKsiLFSHP1NZfc14
	 ia4ZguVyazRzZjoroxZMt29Zg/aeE9p2o0tkC2PreoeVGBeqeWXW954JQT06A+2C0+
	 P9tjmkzuVKwHfF/w1+6KK2UxGtfrd6LTTkX8UZIQBgH7nUGMOXJpX+as4EnldGm9r8
	 +8gIOIL2T+verH7X5hSEycvfZxXjnGN8Tt8qvcV5eRM1VrCkcsSZxan0Ves/WBvSqH
	 FVDsiY5naNcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F45CD4F34
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302079358.4747.9075337195875770109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6744f34aa2bf8bccc4aac9f3dc5b4535ca1e8e01401bba6d3d1f6bb43108bce6
Date: Thu, 13 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763020793
