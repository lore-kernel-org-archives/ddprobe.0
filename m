Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31FDE19049B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785630034; cv=none; b=b2H6aiF6q54EC7eaLwHOS4OYfAgOY2YOvhb4HKo69FdyDA4SEJdijEw+o90ZaY4UiVktdV6geIYtoDuqc1E3Ms4EXo7exP8tMnNY8auDtchI+dFPvCgyUYuS0gl2clZ057vNRpLYHg4y1uW5GHyYmjKxCnNAP3T0DtRyQmCT/Dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785630034; c=relaxed/simple;
	bh=HBLb+cmmzpL13kTRfjXsXe/Y4of1dna+1INMlvhIv6Y=;
	h=To:Subject:From:Message-Id:Date; b=qqN3J6RC3v2ta0qUMwnXOnIHQAHiHkqv4lEJyp2MvcEhuAisfUsok2qc5wuxV/i+ahyfY+UYgvmZPzFF0oSRI8eM3N3cOkLjZD+kfhx5tZDXNcu9DZLKwy20ykW0hQDsfeoQMv3DVr+QvTr+9A+Oc8GqzvuLwLrhNRfPmKMVCB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYhXksIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYhXksIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B7BC2BCB3
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785630033;
	bh=HBLb+cmmzpL13kTRfjXsXe/Y4of1dna+1INMlvhIv6Y=;
	h=To:Subject:From:Date:From;
	b=fYhXksIHx8qE4xOp/Fxl1PBnjRAhBucQ8G2pCR/RYHTM58OXMNdXkT2DfyjRlMpC3
	 u9b7uEggaDEcmHmj0hZB0f9rDg/CVZkj2Mw76cnvD7sIlgSCVJQMfWYDrmzV6FuAVq
	 BTKFWxuQ/iJFqcYF2BPlHoZCNUUb+Qlv9JbuuBUi5ddd8o/LvP5aS4DcPdM4hqQjlP
	 GJYvG4BPS8steYGE4SXRuWHy+6o7qYLvoNmy6jnl0szsmrD7awD2JXJd3j3XQLz1wk
	 c1aKsIwp7PlE7HnPU4gFINhMYKT3ZknT75VTgh2l9MLQHPGM8EknTcYGDdPrqivEDF
	 Mg/GVDVP3orEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8CFC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563003368.14790.15824872878663185615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a1a29f093f12b9b0faaa466da488b9d35b2057bee06a99d8f219b055637230
Date: Sun, 02 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785630033
