Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA0F2E7165
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769516634; cv=none; b=t5V4sb/lFgl1daVu0P7d52NJdR8ZT0WG7PiquodKbe7TFKdQZb5sGOq3Ljgsj3PCN8I7xg3aUZjs03g4ah+JTQUXkdphsp65WU4cekpSdVIMDSrGBCYgXptlZ85cH5PDhTDb5yoQ3P7D8upzWGxPowkn1CF7IjHJpoPhH0skcig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769516634; c=relaxed/simple;
	bh=1rke+ObHfTAQov/hswWWGIOQa4JEG8NL+Fv8uy59Xcs=;
	h=To:Subject:From:Message-Id:Date; b=sJeUif1ubyBw4aZ+LURqC3Y+QLhKuzXgGrf/Uyjjepj1d1bgzF/Q9qf1NbbS7/jwcDH2ad9Bg+/PaOQG0Wt8iFiJyTk+iNFlkziG9Jy9qcFQLa10YAZbSqyUsQcb3AdXQBsZb05+LiJ/i67+0etZZwYKSi6FXUxoNpYZOA+gsqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZhuWpuSf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZhuWpuSf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A6C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769516633;
	bh=1rke+ObHfTAQov/hswWWGIOQa4JEG8NL+Fv8uy59Xcs=;
	h=To:Subject:From:Date:From;
	b=ZhuWpuSfnn81XYBSZRI7P8YQm90mYzlq7aOVCK1xhfEafCloe4cQp/CAJmXxPqb0Q
	 fMuHvlfRRGnpFZ87yOZKt8kqTdv2/nTm5T3mXT1T5Rv1Iop4+CX32jzjbyljdTedAz
	 FhBIboQXtzzGQyEM5Q/Ng+4FfECq+T13fhJOhlq27YB72mwXgSSQbo+Dz3QdQILP97
	 jJ5wN6gkqLOqJmvAn6CnfAGgtD48hav6Imw67pGgOsHRTZHYydI3kMoPxdYlYBd7ji
	 4WW9AotPIfimKHu8aStGv8UHhtGwJC7rZ1cF5HneQEFYZT/Js2kco/+QdFv2LBwEGx
	 IywHfq5aQGu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B49D2F00A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951663358.11356.7628953017336772502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e57b21071b92c8914e942ddaf70a20aaa4d410f0fd084dcad0a1baa4123395
Date: Tue, 27 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769516633
