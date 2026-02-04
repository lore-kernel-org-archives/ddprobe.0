Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216F1C860A
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770170634; cv=none; b=s9f4H4ucSIZsxFaK42zjYmmLVAGDYUk0JrqG3X0+QRVX055qWLro7WRpglI/l0qJQa6yHM5NsgHvJw8HP4LA/Eqki8o2O16dC70F8sx3HAoxNQHltBeb8siLA8tMxWccbwJFfAgvMK3xBDxWouqIwVBVzC+aulHnbTglJB9TcQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770170634; c=relaxed/simple;
	bh=PvAHBcuBHsKFdG+OcOltFIRZUSi4e8sCQ7e5qy63HLY=;
	h=To:Subject:From:Message-Id:Date; b=pNNnt23o66o1sHEsBNZzeJ5XrUxaQD33m9RN03YF5U84doYQyZj9P+dMTkrQaEO+Q1977p5zI23nGjFT3snSplq1LxdQv3I/kY3938PssTk8IzA8B9htSC2npM2FLdD8Hofvdi/skpXCmP/FQCHhPH1BgKCHfwUTO1ElFCBsFvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r60a6Y61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r60a6Y61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92FFC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770170633;
	bh=PvAHBcuBHsKFdG+OcOltFIRZUSi4e8sCQ7e5qy63HLY=;
	h=To:Subject:From:Date:From;
	b=r60a6Y61xLE530tTfFTEjG0kS3i5g9YysbJvDBnZwFgMqY/hezRD0IeApenfsXnL/
	 mEY8fQmRZN3lZaRgF8JcAzYc8e/qoz1IqWqZj9KsdibfnRo7jS/G6qXGQ/T4uP4T1f
	 utnsk4XyViazLvwQvxOxVFj42sMZMrlQBT6Xl4WgKr0KdNknaHFNUePaqGGf19Hzkr
	 etSuhGJycUN4HAQDCyTIvpVdixpca3/BzjMytoJp/1u2gCtoXQcXkPA0t2twp9Hvsg
	 6kqU0l9zblhGXjtSSW+gkKaucQ1cQy3A8dyYfwChEJows+aug5KL52cPlqnlbUNSWP
	 o128PtKOosVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E63E8B389
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017063359.28583.2196420799538565197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 104a383b233be90657ab2c1bc3818d1e4effb33a7a42f2692b123c580a0c6a07
Date: Wed, 04 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770170633
