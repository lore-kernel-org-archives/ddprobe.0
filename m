Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0C42494D8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775358334; cv=none; b=mNR2YrIN/lv+MozYZyxu5uC3SwwVw847XjWqiz7hq7xE0OYr1JUmVIi8r8iIL6dtPo6oJHJHfpIt1jX30xLdI+l4dJYvuLhlaXrRM0OYoY024ItbFZj6CKuVngs1fAxd7tertFBAGUIox2IaF6YhVJ9ecdbfejXN0EKu2rB6088=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775358334; c=relaxed/simple;
	bh=Bl9JiqdHd4U/33AOwBBUBG6BHHIueu7Ip0QWBgnvt8k=;
	h=To:Subject:From:Message-Id:Date; b=tRElM4UYw+fBp8FN2oKoXdGddRxZA7+dj9ANr5ENHxR2uqAns+tdFQan8X9UScfSAQsUp7GvRT3kbb/5iEi5LVs0HFV4lK+pUbo7aTGcsah4TpybLyZMKLMIFLm3ylKST5G3HWtwW2bJtWgu39Yc1guwbs78AOwcFSmvN9CiDqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q//n8VpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q//n8VpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2DD6C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775358333;
	bh=Bl9JiqdHd4U/33AOwBBUBG6BHHIueu7Ip0QWBgnvt8k=;
	h=To:Subject:From:Date:From;
	b=Q//n8VpRFeEXmxNOboJudM9JxjS9lqI5WDMbCPoBJtFmYpM25XWnirXJ8+42Ey/Ob
	 T2fV2xp3hiEtmSItmkNgM7nOMhiQ9iIxVnxAn8ad7bDbIZzg9ilx5C0ZE4TWwGDGls
	 iS/guSckW+JPYbZRJ/sXuLyptXg2T74VlISYahdhbbYABr84GQdXQJvU3s8XEdy2e7
	 61YE2lRoEiAq+HvkU2Y/7hnG1nTv/006yoHfE4vdNGU1Rfpvrf7waG8v+WQyKdNUR6
	 I5piTWZ/hflU/JSXmidzaMySZBeXy79x0Bd/jjzSXwgTunh52go1MzB4SLo5nxIixT
	 YHXlnF1Kq+vZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDF7E64001
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 03:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535833368.18385.14450378660777227241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2cc778ca57cf370036018e8702e0d628f8faf57de981858882401aed96799c
Date: Sun, 05 Apr 2026 03:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775358333
