Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C071BC43
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720307783; cv=none; b=YC3YYj0bP9SHbAlMXe/vCZf1WHFuZiKPuHdiANIQuqAKGk6UCgwSyzf2AlHCFymBuP6wfqguI+Sese9cJOtq7u06GKha3gKgUjfRELyGeiHqSiO99YD5Pxv1CYlO8mSPWh+L98qC4NT0Y6HUbjsVGea5QsYNO3kG0OrxLwp13e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720307783; c=relaxed/simple;
	bh=6zqsvGNGv9MP4wHV4c5LkqopBrgb6Wah7AGhfD7G+H4=;
	h=To:Subject:From:Message-Id:Date; b=u9SuFuEheroK5tm1MGZmj6uU6bhZ7p3e5xHiTUvB23+3C7n478S9Y8VVGaYct6gJH3JNhlGOA4XAlN7M0g7V9LpIQ5D4UgNjHExVRPS1kos4wwnKpLa4IcOtbVsVCvECtPQTfSSR0Zeg4KsJelWbfVrbGgYEJSa4eVQrKxUTyG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skjL2f/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skjL2f/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADD1C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720307782;
	bh=6zqsvGNGv9MP4wHV4c5LkqopBrgb6Wah7AGhfD7G+H4=;
	h=To:Subject:From:Date:From;
	b=skjL2f/7DJD6N7xIHRaQ4gsxqI8gft4fbHbZ4cXT+i7fGojjNhwIMsRGxdlINWGJd
	 zrggwF+hOwSOHz3OWApn8zQsxKExdk7Hjq4fPOoAbjL0wwMOzUQYYYJwCoe61i5tE1
	 KPl9QYyqDyqUqi3uOrs622DGIrk0eWJvipiuhpcB/ZDagx68BPbgOmjeFdH4pyB3V8
	 7ATeIs3ehcdkvbx1ZFXZ+Pp3ALftMFB1mKAzW406n22C6rYU1BHft8FmUuSXDeC8J+
	 jqK8+L4ACaB6IFgZzDKSl/gV0PVRVSggOj++eD4UoWFfgZ4iqjZkCnye4OMkU7MUYv
	 0KoQgsO2AugpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2348C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 23:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030778278.17981.18242816480043525092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d709eaeaa32e2ffdc092c6e524b072e1b76fe72e6e57c4071606679dcbc0ae
Date: Sat, 06 Jul 2024 23:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720307782
