Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB8C175A69
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782649114; cv=none; b=rZolr6i19i/drFvAPmegiRVEc1yfEIuR6IX9y9Qh+h/rwEgosfyX+uN0NEU7P74RTHMra2q/BOyoMqgCdOGoFJyqoYBKsx4iEOHaf/43AH26UpejeA0FvwyThBTwRiTJxi1Ctl6lgq0wvQyrhkB1xFb5s7l0HKmOECtAsXrVkcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782649114; c=relaxed/simple;
	bh=mCEzlQZDFbx647z4dltnCv4AsjQBQA26cw4JffgEplA=;
	h=To:Subject:From:Message-Id:Date; b=sEjdEqEv5cO67HTmKYSg/KgjyIX5qK0Mhzn2t/amNLcfOCM8Q/MhXCtfxJnIo5T2oxD9yR7Hiltv0jB8NEZNXzX7Im1NyRJYpMGO+3zHQVdUdnwmdhSuhs5GLv1AqtTAjn4fDjxQ2cxWN7BcFrVQalfsaL7cV51jMwXJ2/OLx7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqyFI7Sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqyFI7Sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1178C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782649113;
	bh=mCEzlQZDFbx647z4dltnCv4AsjQBQA26cw4JffgEplA=;
	h=To:Subject:From:Date:From;
	b=VqyFI7SjcOSPWJLvDk9/kYRYRNT/jc89ojF5xAw2NEJ1NsTcPTblDp0IEcr7uap55
	 edcLndCh/KELo/zh7ZU1DxD8uhQ0qwLZR8eAlQvQsVqUnmI9rS0EBNVw2jTUDlgl23
	 suaL3pcH3ncIgtTR2CapmMg0Pt53vnXS+lpa0G3sZXmbHCF8FZffs7syJ4NSvx+N44
	 XBJd73RTLHVmYiWqqIxIIYEi1AdeGlOAoWdPx+sjiP8tnJ3LT3yos7fMdwvVqoHRbn
	 udGixyiHah9zwtI1GtDb12f9vZajrPxY4ag6tQnKL19ydkKzaPVVPcclcBCZ1LtS9O
	 3IwhvRhLx9+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB16C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 12:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264911368.16657.8109267975972929878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df40d8582a0f11983a4b84d9c9da3ca88506c49205dad67be551441ab9a882a6
Date: Sun, 28 Jun 2026 12:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782649113
