Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D523803F7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787726434; cv=none; b=fpTtUVNQGoTuj3lvHFplG8+igtuSCXGcWa6X9gyZ/QB90KM1LbVamGs+jdTc6ocq9AXGlhrw6mjtvntzZoBKJD9EKbzZe5MGzuREZNF3lnKDbOBz9eIlI/edgV3BBhdK6rdV6Lqp0teoy5hICHbm2BpA742RP8OYcbEgxhguDlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787726434; c=relaxed/simple;
	bh=Ut0T5wh92PAHxX6sD27N0xCcc/xjflnejhZJ1lIxNkw=;
	h=To:Subject:From:Message-Id:Date; b=G4s76mILffLmfhW5sNWRLY0Jz7iMO15aq9czv1oXRkUKpfDwuM8tzSXNUdk/F1JbuaLcmA5qmOw2gmP09IcWlK0XNq22u1DAuEffN2PIphPH6GkXASgf7JQpkQhm1d38TWasJ7viYonA8vFcFEh87ro00+vSzZcSnc+iPE7F9Ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEEnAlZt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEEnAlZt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE52AC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787726433;
	bh=Ut0T5wh92PAHxX6sD27N0xCcc/xjflnejhZJ1lIxNkw=;
	h=To:Subject:From:Date:From;
	b=NEEnAlZt5f3V0MslMEp11TUviaDwXJvybV2fzHHz2tRat+nBLytD9/0nwhST37naQ
	 U/tQAJvr6W5f+/a/U2BbtF1FZSgw6fehux9XyfmEgyXXkVAHHupl2314zQHb6m5qxD
	 9Dv05Zt1LtADL4KX6KDW9AKXjWjelR/ZX6UYLX3Ps0m7zAJhlo8ooRNIh3v7TiGiMd
	 3W3VZ5OKB2fGDrW6QvDyuPWcWzLczqRxXVDGxJLQVrrvZBnoNSFH10VDcenkquyRmY
	 X1wcsKr65CF/RrKiugqVnEBoWChwrtYTlax3LWINa/sNqAURF8XrTu7av/udthDXF1
	 bcqt11Qp4uJ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7EE2C61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772643371.22332.4129202598795538827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d7f0f0556795fcc28bd036ff453d03cad5f3215c52ce0af86347519f39c409
Date: Wed, 26 Aug 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787726433
