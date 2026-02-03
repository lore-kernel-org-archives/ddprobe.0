Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6FE3B8D4B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770134634; cv=none; b=WXhz/AxScijD9sCh5HAW/O7VWFuF5pxHKWEBqeueh+J5X4WT2K2UnyBeO6bzOVlSPYmY85X0wjQUOVCtMg3vLBNB8PQ0oycCL/vBjMEkh/SdwnqcKsaxrjvNxbYkavH5AA5EljGYchDe6AqLnFT1o5P+KjDHvxJTX/HvfmHZ4AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770134634; c=relaxed/simple;
	bh=TdO0GZGymDlT721mINnDhhJB/tFpqLRgvgfaWPkWIdw=;
	h=To:Subject:From:Message-Id:Date; b=sLGJxUN5M3gLW+AExE5CEUG0uEf3Hy1iyg4mVLtNdcTZHZvqnyAvLz59ZA42BeUENw9IvyTD9NoM4PW9bVJ40ZBU/G3/2qU7fBLWUvY6a93JTwZW8EvCJjsmHFOQTP4uTrCnBHR7dlYhsnkkPuO+AmfVhs8yZBgKlUvX6GCjUwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qQPV2Imy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qQPV2Imy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8988C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770134633;
	bh=TdO0GZGymDlT721mINnDhhJB/tFpqLRgvgfaWPkWIdw=;
	h=To:Subject:From:Date:From;
	b=qQPV2ImyRMgQNYaft5iAbh8sS88/mBdKNncyJ76NZS4dW/kNMmqYvBPEqd41njwie
	 uEZ4hNgTpQDeIS+j/OP4HIXS4WxbhzjwlGlXY0Yu2RYwE64pp0g45unspuTUHYql4o
	 1ECpmyrI/9X45nc18xX6eAywy08fFUppOuDr9UInB1HMLzBi/nhyp2p1hTHzgB2PRJ
	 9/PUM+56w2ecP/NJEroxWyjXWCO1gYrdbHuYT/8S/kvJAam04+qDn0ljbx2orHb0/N
	 /uvA59jFNU6Lx/iSYDdUxQ93FpkppCEexDutgmhfPSpV+tVQF56SrrprHN+80Ay1rT
	 38bldy+HsuafQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3DB0E87844
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177013463362.13481.6607433015287109074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb502362cfda2f4444d2b6d700df181d4d0a4e42f5c5e12692c9a769519c2cc
Date: Tue, 03 Feb 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770134633
