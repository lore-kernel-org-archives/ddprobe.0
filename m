Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8A101C36
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745658593; cv=none; b=mqlXYqvAXhLuWuswZ535tT2CGFoPnXfYoOJTFOXCXnpKeRqojZkYEp1ZgCUmEH8FOmzW19zIYYUvlojwAeawzx8LVbSJVf3uecMxNGCuerSqGAfpwEc7hnyujwwmHKAqmTXiHIKKTf1deEPSm6yZPI69nu8MLPYmBi90WobwhuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745658593; c=relaxed/simple;
	bh=Ncgehq5MoKsfpL4XAN53ajMRr13+uhqqgbREWa2m25Y=;
	h=To:Subject:From:Message-Id:Date; b=cdPx4PZn7MF3qBUFMjmN+tN0li9bF9OVr/h6luHtxjT9uIvgzxqotSbtsKKQkGReC6kuupoZNrwDXlppGnS3XhRTDWqOwlNKsBuWIwqw3E4rbgi3r1WzJvgMzS2TjwrX0KI6Ur3Q0mCyT5ILvnqWYd7LJztIC8XUDK0IL0/4BHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOvG9QH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOvG9QH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E398C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745658593;
	bh=Ncgehq5MoKsfpL4XAN53ajMRr13+uhqqgbREWa2m25Y=;
	h=To:Subject:From:Date:From;
	b=SOvG9QH/BGpIo5iAQVE9++5bmitprXvM2uL1ZjGaEnOXTqG6q53Zpg/YAM++Y1IVC
	 zfmnvcCijiqRfaZ/7/7GB1ZTGbP9ljz5BkA3w+YqiPqE0nnPr6zaU8iYOdP/51hTfh
	 qdi5NPZGI7RVb1ABTU8RORGXLH2pjF/TUhr0KAX2JU5qr4VHt9SKCQ/QURqc3u4jGS
	 mulIOgDU8r5Zlf5TxzkqOnC/TmUbKQ0PfW2hyfxbPQUH6oOkToQyW+/IQvQO1FTKon
	 9pqO2oP6tivkQG8isvdHKTbekTaG8/lQW1p8m9KhtT127ZMPuZPlXfAP4J+//y96Mk
	 XWpujbSSZ97RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F58EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174565859357.22148.764853832063907745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b6d3fdb0e51821a279b2dbdc1eabd7d64a79c42d3f51880a75c25a622ff829
Date: Sat, 26 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745658593
