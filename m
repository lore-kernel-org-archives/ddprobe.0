Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF54217F32
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729908354; cv=none; b=EFe+q712eEiB3qAAuKGSEOqAJLrAz2i9Zf3hISDTuJOlNaLNIvBiINZdbVtwbTpF01Mo1Ss25h61rOfNqV87L4JPU/T9O2m038KlQ9Nk9ZqB0VRgzFixRlgBotobr56AyzOCI9ved5dTn1T19BzszL1o3c/WhHAzii3Lzq2Wq3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729908354; c=relaxed/simple;
	bh=xGtf7NFK04z7a46LcnFuNTVKB8U5GA7LLvsgkF9X/AE=;
	h=To:Subject:From:Message-Id:Date; b=rIy/AMu+Ifchbk+gNLe9EHL0+8XNKfKKeDQJfJ+ZiKhGdBRKOZgF0ZS/Sfl7uzW8KyLb7jtYKwyrd3ESIEmTVXDkMR3/PK3qg6JPuM2/SfvSnN6nsZKS9Ffp3XHZ/diEgHtOJ8UhKH1CZ5DSMpOPPIE6e3VACYFXfDrXfhnIqW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaRDJyd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaRDJyd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C1BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729908353;
	bh=xGtf7NFK04z7a46LcnFuNTVKB8U5GA7LLvsgkF9X/AE=;
	h=To:Subject:From:Date:From;
	b=BaRDJyd1TFs21udGldZqow6mH18TeR5L7quxNhtqy3ucU6KpAuspBZiZOna1rhRVb
	 mVZ70kn1laaI571lSCLr/XHEFvy0+073/QrrSRPFqgQyYcAiPw+RmOHrptYdgwHRbI
	 msROVNNN4wFeqf2ib6ubLTE8LJq9bB7m70l/0Lyo8yb8hAdWwm999fBqyhAQArt1ES
	 5ZY0sWezISR15stlz5SP/AA3j7f0lr4p0iEPuY8ETVE43pLjDbu4k8GfM4/5Cu6r2d
	 mO4gWg89lATU1xdBuGd6vcxqD5gjv/RnAkBMpIimQQ8y4UI7ZXV/0mr3J+vukyXTuW
	 blss2RwQEvkiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCADD149FE
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990835361.26055.4585723947515497314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6c1d02c10a6630dc1c73647bcd0fef87c98bf335b8f9a982634ec6bac20f618
Date: Sat, 26 Oct 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729908353
