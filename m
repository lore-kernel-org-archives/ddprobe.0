Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC84367F26
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779375034; cv=none; b=hWLNN+YOlqVGRu/LHkozjALZWOMHF/3twGLVoFsOHZoQ8nbeuwF1MDCrm+7vSwPwNludxZrPeAdmG7M7oVfX6hGRuspDJxpAv14a3dXD/x3UXqlfvo7d77DFmpaIpryC1OqFqPjoTOU7h+HYCi6+BZsHaQf0QD5MtYoffXzJyZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779375034; c=relaxed/simple;
	bh=wngZWj68kZI3cAs1r4Dk82TAy10f2CBO12mwsiETJO8=;
	h=To:Subject:From:Message-Id:Date; b=dJTWLyJs0YLXmNxyJDW0T8kuv2v0aBVBwlLzPwo4UulpxdNetRcfng3VtdXKMSBI4E3UqS5w8YAqmXmf37WgSkTh+p9g8OlUKV+UZ+N+MgV9YHURnnR81QR+T8E3mcUTV5M9CokaXAR+t8EYnwFl7y0SdF92+LTbyEUlqWzQWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnyBnywo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnyBnywo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF9AC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779375033;
	bh=wngZWj68kZI3cAs1r4Dk82TAy10f2CBO12mwsiETJO8=;
	h=To:Subject:From:Date:From;
	b=dnyBnywoKLyC1zYoSLmbfPKMbcp67agmQA9sbkPPfC+rS3UsfYhpkOa3XVZAC48SC
	 YR+B8k3/rCbJE/jhXUPMOYgv8MNoz5KQTaL6HseBPxx80n9JdzbNl6rXEmVD38kehk
	 cdMbpo7L+bf9XX6LbE2JvgF0Bfgk/MPV2RYfFsUZT3+CURGLL/pMxxgQbdtH4c/miB
	 yavKUdLY+FW6DoRfiSBu3Ut6WkbZ1YFoFR9n2RT0iMGabgCdxE5RzIfykQ+nbzqBzK
	 1oy7Xm28Me1WLiLrDx622x1k7+N2x4WXbhTElh6IrB0XpqfUtj3xJmU279amcHvlL+
	 y/RtBJ/0QOGNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5F6CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937503375.18081.6071528408396424458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33dc3fede40b29604036e944e58612051a34ea0d589f792289c816baf07c4e23
Date: Thu, 21 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779375033
