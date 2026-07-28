Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8D3323416
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785254434; cv=none; b=aP1/3t0l7olwRPQdpm5iJsEI6i7nZCkghhlk5lq4OCBzrJ8KbSp0aYuocQwE9jCo4pbrSU0zHD+94yLRWIiN9kcEiZbz1SHPcKOb+0stk1uCkZo2UArfTDFrmuXWhU5JFcbGjgWhfPkddMHgvdNIxlJEM+77YKkO/1lA2MWMqKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785254434; c=relaxed/simple;
	bh=Y8Df9R1aEfnWEVG5IVvlW8+z/sGNNJLQTGGUCMmVV2c=;
	h=To:Subject:From:Message-Id:Date; b=Sr32ZCbTVh7y3tvkNLnkq182wFAM6QxA8XMTVAGW/yKS1v/kVU/NHzoPXCVU2U99QdXCXlTz23yL550X+jlXHDEZrZVoyYKCMtcNQ5Wni3uIMEyo2cj7P/bFNp9H45Y2saChMC48AlSec9la7UauKiRA35Y9XDn3GT85npmYDXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNH0SFU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZNH0SFU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF1EC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785254433;
	bh=Y8Df9R1aEfnWEVG5IVvlW8+z/sGNNJLQTGGUCMmVV2c=;
	h=To:Subject:From:Date:From;
	b=ZNH0SFU0WNznnjBhzR64i/++XjILgq99QC5Zse2MpXg6vtn2d2r2elA07Ttyeeh21
	 ekzefy85rsb/pxbeaMZPd6/GaZPRE1Bmd1jDU74wNpiZ09+gkgvfJ8iX9VDL4kjmVt
	 0k6TTJF7x+0pgXWtbAfu4Xpmw4OaH2EOtb4dYE5mnc24P9H3dQKKNK34JcjPpMF3A2
	 ldNQ3v1kjmi8aCUH9VpyWAcHRS2/xq9HdcyUDILKxpKrrYkiK818oLtbXh6SDUMJBw
	 Zzqp27UoUylMqlqopPd6LFQ1EmRfS16dufDjMA3Afkrfpfu5MkfrfBZYeZZDQCOH8K
	 q56WsprjPj90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8A8C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525443369.4194.15292693967076915853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ca6d109e5bbaffa2e4122a1458c927c40b352449442f048ff8123a7f376054
Date: Tue, 28 Jul 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785254433
