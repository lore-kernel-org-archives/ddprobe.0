Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49BC91DAC88
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738021555; cv=none; b=d3nhLqsla6vCfqc3BID9DgiPHytTr/AGD9vQ9tT/zH0xIw2kWsqaecMO7AYwtaFQpJgCiEmycWk1+RRy9noie9pbaJpa23WuZWXLlO3jAY+8ZoPyRvPz8hYjpk9klGvcSwXMrXnO05oKlkp8s7e0UV8Zs/3zDtk/dwyGOz6gKq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738021555; c=relaxed/simple;
	bh=Dd3DTNR0DuXNGvbVdf6ub12TmM5fr/2Eo799pvWsJZI=;
	h=To:Subject:From:Message-Id:Date; b=TPwFo80k0wHMd+a4LrMom2OJOEYyMXjJkKiB+LwzvHyrdbnTtI7Zet1GVGgtYwKlGqZXIFX661Tt0Coh+3+xw4CMl2ckxo7qrb4GItiGkDiHUTTccVaen3+hSLoWcTfh9SkWxp0sVnFaHtNBvyd+MK1Hc7HAQIXMiFT2rl8keH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVkpJ1/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVkpJ1/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF525C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738021553;
	bh=Dd3DTNR0DuXNGvbVdf6ub12TmM5fr/2Eo799pvWsJZI=;
	h=To:Subject:From:Date:From;
	b=EVkpJ1/hrrec204+W0sJCbasfzfYHlnRfV+mwvPvnNFP9+44CfL93T6Qv9IIGXNX3
	 vK45FFRx+RKSc0exFmsoC2JmO+6vcVdFiLxAS9QCcrRde0Kyd7sPTOXoKHQ+zGuCLf
	 We9FHhgdzdhLN3tDi0RwhLUOffz9y+s0zQfBE5VuBki3TN0XZqR2qPHcerE2Q51doi
	 4X9mi5KkBRjFc9+nwqvyzRt3a+riuo8TdPXyCjwNqymCcZv5iYyzyMuBnJOfxM6DyI
	 ecsFCYrN8MFLyymNoTISL1D31se5WHZ+olma0QOtwkFS4mgTxybSiIMIZC6cTjTUuV
	 GSZ+Q4kmFLpYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF1AC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802155362.10994.16827315679495130708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0ad2ea80db077c910381ad8c564cd5767d8f5298e44e51b38dc37135879902
Date: Mon, 27 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738021553
