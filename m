Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4D527144E
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751367595; cv=none; b=D5pidKV373IQuB1tSNU+TQlaU8RNXDEmqBh1DIMkAApKpJDC5L9/y6opIz8BzYr9O7gTiiOveVa1dHdlyHPpqZU0X4HvEDjX11wN+IqIcMwCxZPjwiabqbNjJn/bT/sS/qxl/9wcrj2a/nbYdsnFPbwf4Cps1XH59VPtoLhIOS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751367595; c=relaxed/simple;
	bh=2EOroqubkvrd5DEr0EUMp/dSBWieV7mMdbjrYVXZfTo=;
	h=To:Subject:From:Message-Id:Date; b=Mt9b0s4nscI5POYCkcdn6nSc0BmBY3FktGO28yd3VUJWOvnsVFRoOlSsAFQA6xLsXHLXQTy2Cupt7bXKz5wi7z/gu9NWxYvIfqM+QwLAa7g+NMGAFX6wd88FCmM4aGfoB9uEgNvILxdnXRCb1Bl8SSE7CnXNkbWjr7krQKJq5Q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqltKIHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqltKIHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE3FC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751367593;
	bh=2EOroqubkvrd5DEr0EUMp/dSBWieV7mMdbjrYVXZfTo=;
	h=To:Subject:From:Date:From;
	b=HqltKIHqTvHtKDSTVQ5hLRmaaW5H8bqX587iUYAw+w5tnFmF+l/+Im1wNEgOwyCe+
	 yRQjMRWylMQhe7MqjYfccz7sceayOEidw5wG2DQoHNrzkYRVk5Ve7FltGS6uohwxHb
	 FlsYQ8dM9z0tmw/No5UIOCIum4lrhUKLa0HsYotA2EpIpQBFqfSbTJ3M935b5CkXo+
	 JAdjO3OewgeqpP7rr7OdjgUSuoJznsqRlwBLkMo16pJ6b/Fk3sPnTo0jIMQv3nXclM
	 AOLnpSYESZW2DFSxT+fFZjy3U68yzDIXd0FXPFprQi3UY5zzXLWWaFOIKLeaR0m0Lz
	 azX52MV3DaXxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90015C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175136759358.12624.18130679418639292598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d584673a381ccff0ab1ce3c1699296e68eb652cd6b631282377398b3b0ef8e
Date: Tue, 01 Jul 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751367593
