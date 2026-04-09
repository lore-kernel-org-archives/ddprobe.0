Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB1B2EAD1B
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775723734; cv=none; b=daogfe0CmwtfArpsES7F7IG6JP5dKC8fhVLrJnnYJJm5POj1vt41NaMvbCBicYsfYBYKtgao5friUrY8c8hXGEWT/HuGpdaGn592jMkF0MpOTGBXChiS7MJvNmlqHfN96JhwOscIdCNoaJ4qQ1ajdXTocHacMP6uQm6TwaN0nTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775723734; c=relaxed/simple;
	bh=tRJZdjkxQngz1C+cG021f3Z7k3oRfzUBEMl8oGfAL44=;
	h=To:Subject:From:Message-Id:Date; b=m0i7F2vXAeQi3J9foMmLxoJvLOpAmwlFZvY3MQLDVb5I/hVqO38Hx3gl+PNEDy10M/kzEDMrA9wVtHZ122a++ImbGTduQrpSfzftr9tP7xsslY2rYE0gRA/hSqIoWTVGVlrVu2IFwezeRPPijHcG3zhfVZwRSj7JDJ0S3oZ+R+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLmmKAPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLmmKAPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3C7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775723733;
	bh=tRJZdjkxQngz1C+cG021f3Z7k3oRfzUBEMl8oGfAL44=;
	h=To:Subject:From:Date:From;
	b=QLmmKAPDNSh73mq+/Na1d0LsPs2FgxRIoCj2gy2CFTLS7nLpmiVrR0iNZw3emywof
	 r71o/j9nZvN1GopsV3ptFAMm4fMdgTfSNohAqa3H1NqwKvxEPvydJ8rznts2PgMQIt
	 eDezUcyVy0o9VIkKBYk8DXvkDbY2w9DjIF0PGfFH0RJCfYRQgUO6WmoerfD0uCZqgh
	 6tQFtiOmFCQLQ7rEh8ufB+oYa6FXfVvHRMIbVC8klzTDMd0AQ0McZYR5k2hsDs5kHM
	 Yhf8Zn1Suo8WiSmjbhz6QHbgmvVRe10tP+/MQ7WUraVWzFlJVSkg5a4K2MfDpiWQOQ
	 er0HXXT+JKe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACACE9DE6A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 08:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177572373369.8444.8074063000910245729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a1bee69458621c735ddcc30d3844434ac8f41a0205f2512b48f0fd7eac836f
Date: Thu, 09 Apr 2026 08:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775723733
