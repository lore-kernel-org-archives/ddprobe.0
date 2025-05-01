Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE5B4C79
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746067195; cv=none; b=ovP5uQQ6BWNvD1H+c3EkbBzvFl6TkTUQNxVznTOYrSHIBCp4g26W9+dY1f+j74x50SqAsQLkw7SPB2HmHGPNeIzFXGTlf3ofqBcMGwNPHsl08MbQVKkkj7omS6FKU4lihk0LK8nbQPv3URWqcp/EaL9eXDacRsVHBGWR9H5ao5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746067195; c=relaxed/simple;
	bh=ZP8WTjOUkHAdOGdremX5LBAB7D4tDjfEm7I7FsO75OY=;
	h=To:Subject:From:Message-Id:Date; b=MVS/1INicCLRGn71r1SAi79KcY91PJp840K8Qsw/pp21MwPjqX2UvA0HahR2jiRl3um9m1u38HL5iGQ9KEnEwH/JWqDyVU14EQDv3MfKOHsSROdRaZy+RhE5xd9owNJoD2ZED9qZ04fcWdlxyZQS87l3AQWc9ryk23viTJgzG8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JStn/lGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JStn/lGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25D5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746067193;
	bh=ZP8WTjOUkHAdOGdremX5LBAB7D4tDjfEm7I7FsO75OY=;
	h=To:Subject:From:Date:From;
	b=JStn/lGeu//msfksNah9UangVih42l26LL3bE2loI3MNdBNawg3I490XJZ1WWNpLd
	 qrfHAIeOVVB+SwaNXTzLDa6x/dsqMjDQ6MBkyO85rycr5Gjzy8kXiZk6uz+A05Q+MV
	 f2VcdqU1Z6rloYzPHxBGaraYldU1EHOWkaCcPCzhZpSliVgko6QLseYdMycDHNfmRz
	 z5WAjZ+7KoIE6rEQW6tUpP8lMh+IA4lu4KT7F3EHYRWoRr3NiKwY9tBehIYDnIrEvD
	 aaQlwnl+pUXvaw8/+4m/Yr+Y0G5rJOqkdVHSoyHbjPpI1qkfM2GgTXX/4iovNfiOoF
	 Z5m3xaf7IOhqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BBC369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606719357.7620.3754805344982973054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc72e98a8875f21109fbdbf135e081fdf5cf15febc57a63401054e8b4dcf0bf
Date: Thu, 01 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746067193
