Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CE64C9D
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759000195; cv=none; b=nu7Drx/cpzzBTnB+/Uma8Ncf3sxX5iHlX/NuXi7G3h0az+Xnl7H76CW9Mv/0+8bv/HIIdzrHEnBSQCiitp5vfdRgil0TkJSWrlI3H0EhfpUqarG7KyZtaXWt0XQGMCjBWD+38I5bqvrzvqlz39MOBHBR8PGp63v6gq2YPIO/idU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759000195; c=relaxed/simple;
	bh=0/oYS4w8EgoiRbhymeTaeDl4kAwZCuOZpuAz45GY7TU=;
	h=To:Subject:From:Message-Id:Date; b=tXN+R3SkFIAxMRfzEUZrkcoKdqE/SUSfQipwjVHqvtqAN1kwMGgwF8RsFAag2BsMNaWypBaD6VhGUg3Ji8gwZgYvDjt+TeqNeDMv7S+l7F6KW4dxqPmoTnds/oAErK+3PKXlRxBVM1qKnRiway1PtkDl4UXAz6JtgVBhGIDfVbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FBHvKrpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FBHvKrpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B3FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759000193;
	bh=0/oYS4w8EgoiRbhymeTaeDl4kAwZCuOZpuAz45GY7TU=;
	h=To:Subject:From:Date:From;
	b=FBHvKrptRt4366u/hNkDGaovLYWCZtmrsv4Mb/EFFK4g5frw7DiQVa7ZNGKTnP/2T
	 mdDuhR9hfH1GpRzWYsZqDZIhbB0fo1pRbFJcXZivhPyh4SCy6ft5gRMkm7qrchT3TN
	 XEq4rzcXKlH9re4oXD1/cga8LPryFDPlD2d5RpNUe5VO4XaIhEfP9/LComkKvskLG0
	 q9liyZoh6Wanq70ivxUEOdjtRzzn4bcOceii94uMuRTxa6BIPuSfACoKch0qkLV2Dz
	 2tWFAp93vPQkX5bKU8yWdnCDYw0Fo4sxi6AMxUmMEBJ89czHvEpycCt7rFUgi6zTR1
	 GVS3Xa3ohJvJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900019358.24592.1949330078997559996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d937b32aa2c7d8fb68e94f109c5122f9c5b22e3382289100e030abbab69e5116
Date: Sat, 27 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759000193
