Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094222F0673
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773278094; cv=none; b=KKvJxoVRgkxMlQuALocb+p46ociOeqvooAB/5qgzse3MTAXKzY8GO2JMsNIs3SEgaJW0M5A/zTpyBFIjmFIsfJM+2blHtRegiomxkyp8kgbDonCbpI2tQWGT3UyW8myrt30H25sPhFagn7gPbPzYIEUl2NwaWuPSGrMQpqKnBjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773278094; c=relaxed/simple;
	bh=XGtQbeoGrx+nQZjelFDy4qMjWzVI6Rr0R/vMs+3ath8=;
	h=To:Subject:From:Message-Id:Date; b=kCWuhZh3/GPdRGNDuxmthEZVN+lliV2x7H3qCAbzc/qYKM98CqdT6wWKI0CGSUMDvlwAUMjjqNeBjhL4E6UKQT6wzy5I4ZXrhQKKt/LwGgAnmsZXHB3m3jYCMdp6kOdhTtkYgvdPBF+q7EJIzBrPewA6+665fFH4RVXFzzZV0IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxRoLD8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxRoLD8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44E5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773278093;
	bh=XGtQbeoGrx+nQZjelFDy4qMjWzVI6Rr0R/vMs+3ath8=;
	h=To:Subject:From:Date:From;
	b=lxRoLD8G+IAfYI0aGvQ+gU44IUYNiOz8PJFen/kQ6lhJo6QG3ceRt6S4m2AtpEz5H
	 8U2/LV2ffu1SmtH7oVS96S1KSuIhc6mgMVDj0RHn2xj8HopCBKX8yBtd93OGPJzObk
	 NRwm/4gkfNquxAnU7FiEK4SFJRCV/FEgl9zif+6HDLlDrcHnLHqdCjxASD7NMxsobY
	 C7pcplbsQazqu0dt+2ojm6nY+B4RylrRn9ULyefbDnOX7yFFS3NCgRvA5qxCa2D7sa
	 xm045vNnmv1doBYBNQaWpoIptdWqAuicZ6EEGM+ON1xgyEJDLogB4Oa3IYNxOAoqAZ
	 Z+ANQ/pqmepJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA91103E2F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177327809358.864.1877139358747348513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4039f409a1f6f3a4f55ac6e0ecaf715fec866d17fbbafba72335500a38ba81f8
Date: Thu, 12 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773278093
