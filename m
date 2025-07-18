Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A63C1CA84
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752871796; cv=none; b=fhuPdyzd60iz/pVsgXdQGVBvw8MNOzFfipnRygL/mwVbFmsyNZQRBNzO0JzHBwcitKPuQLDoSLaJg1Kq/xT1c3cuBGXKBfy++Tq0/T7VB21ixi6i+FjgeHrONzDRIG5IR0BTwlol/sEurw03cz1YM39yumovj3poIdnBsrbVz5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752871796; c=relaxed/simple;
	bh=9+20r6XPMhr65ntNpm5M8d2s0NdiCCiQua/2Ycu7LyA=;
	h=To:Subject:From:Message-Id:Date; b=Lwx/EupxKon1LCRjuxsW8kJnTt1erYQi6jwyNtZoQ511XdQafn037hK0F55OVtJT8d77AyT268YxoVHtTv0ptr2C+cfvu12tBDPxd9KZQfLmN2E2CjDGRzZPBu4cDp9sArgTUd9Btfj5rcMFutjGgQ3/WAU6pxWjQIWchWsd6KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r8QnpJGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r8QnpJGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F87C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752871793;
	bh=9+20r6XPMhr65ntNpm5M8d2s0NdiCCiQua/2Ycu7LyA=;
	h=To:Subject:From:Date:From;
	b=r8QnpJGDpah+iM+mlBAzOaKRLirfacnroBy/b+I3fdXngqyjFcshaKaIVxgQj1hQM
	 T35SJGB/4UTfRD7eGmxT8Q75eBJ7tbCUYAix2T7pz7gCGphDZnutYP5XgjXXhzBq88
	 JEkO82Kd5qr6e6jR8d/hOPAazF2gic8j3yYoMqnPxxqxz9+lWZ+LiEYvdIfXduWrlP
	 uR0Juua3gLibG9XRrqqRjC8xBqPbcxswrRRUvVDxOPxRJy/5UQVz2Yj7iQGOwD67+5
	 QUXAyl7cy+lmMWrC1wrNK/ATcSEd6kwQVDETHSWfVTrKKysBngrOHX1Y/Gppv6TZRk
	 CLqO+nHFGeSOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD54C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287179358.12334.5555790781689131363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 701c3026f21ebfe88e6c4a9e86db2536b6db1743dd2e1d9314fd9e3f1b1fb93d
Date: Fri, 18 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752871793
