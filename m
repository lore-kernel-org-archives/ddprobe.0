Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED8D2F60CB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760107193; cv=none; b=N3MusvfqSxUzv/gX4tVNIjvG35jDeKJjdV55E1c8Pd1IRF3VZaCLwW9kpWd+NbihrRkPYgwb7RXMZrkI02qR3UQZ6EepMtjCOcNEcCKLZLuAUCx3YCCiBxzFp4O5wxXJ0Va4RYivy7IRFscD3Yc/YNTJVP+SZcDqqlW2r5MOrWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760107193; c=relaxed/simple;
	bh=3v5ut4BgVmX0HXS7ZCDSP9lMm39oKetpb3i+HOMJPuM=;
	h=To:Subject:From:Message-Id:Date; b=k7eWZjG5TBu0BsNC0bm25UbsxuCHbX8Y/8avYgtyKlqdq6Abf8mPyYtvFfkbCRmUYFHCg9JH430SKx0LU07z7kGRRQtDpNtJpbL8tWVTvIkGA/cqCPzWumD8iwefUou4JThVx52oFDFugYDK+xPYohwx/B+qdFodeX0iDRsWPt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pX/I4Kek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pX/I4Kek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BF5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760107193;
	bh=3v5ut4BgVmX0HXS7ZCDSP9lMm39oKetpb3i+HOMJPuM=;
	h=To:Subject:From:Date:From;
	b=pX/I4Kek3njOwouVzKDiC0yJuT/B5DaXHyY9cRVpSZWGIZT7wh2T4wH2gUGTfyja+
	 rCrbELOsQyoFAYYv6EDthkXmYWIALwDdvosS5uKYxpG1szjWMY6dod8t3LC2lX4Tjx
	 VlbbN2UiAtwbqDHIvOC1kHzdkV63mLCaYDxIkkMc6m3uOsBufX1M9jf7wy4fK4l2LR
	 C5yRPEbOrZknDubPDxTjqJQlf97BuZy7PgYFfoxl0lu8VULCmucsw50lCNK5UncDwa
	 aa4ACDyHAJNFdwntnUTTcLSsWlT5OvRNO4tZwuW1IOm5cPjDWcj4XBBn5BusS4gLWd
	 4wbqZapf0mJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EB1CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010719358.17896.12168914724954662263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17aecce807e75526d0fd8601e779094571a46e5ce2654f1aa3da7f81b2a1ae1a
Date: Fri, 10 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760107193
