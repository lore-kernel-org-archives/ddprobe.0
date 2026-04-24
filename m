Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D5A341AAE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777009054; cv=none; b=Mm6FotWZvw985GYGhrEVURZrTSnJ8z5daS7IDN+wgDBQMFFq2Y0NEqYJpor3ZeTrbMhHayKLgxio60Ak/cCp3NUxZ5W8Bln5qpLsfy5rB/i4IIWfNU4l6EcS4cxfhJICD8GUMTSBfxcaChIF6dMgSIIsJ4D5W0HqEgY26dk12xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777009054; c=relaxed/simple;
	bh=fmjmZqAQeKCoqzn7tkRujeeAe3DpV3S2Zc52gS8Wypo=;
	h=To:Subject:From:Message-Id:Date; b=gRjL8R8QaqCM2nUYJdTlQDjYUfl4lylS6qGn3D6pMRsC0y7OvRIXksk2xUmj4SKtY5Jo8k8vlObO/uFI5wpR2IOrwTVFVrW4Acj76pFNo1rcSaEK9f9ky0AVB3g0CUMA8ASZtru9xJPZS/eZ3TsOV2Y646gBGUdRYOpT06Kz0sE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGDRVoqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGDRVoqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CC6C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777009053;
	bh=fmjmZqAQeKCoqzn7tkRujeeAe3DpV3S2Zc52gS8Wypo=;
	h=To:Subject:From:Date:From;
	b=XGDRVoqyzsJ2+gYJzrrP8E7mjFRT6uCQVXtMaptGrZP7XtbVDD6EBD/Xca5I5zQeP
	 NZzt5g3jSBBXzf6nj4fo+855flGYtJOkB5eu/LhSpKAnzbcfJVhnCMAjqLJvhhw9wO
	 j/HyG81QoTWtWCkezgio6qynuB97xHBxadhgEhnkFUkHV0Btq1NKF9S2K1ao8g2tCw
	 WarhNg9gcXD+inK5yy7OhQbjM7wsyZKiRnpZUXJrlnTneo0KpgIBf+YVPoCyDXp328
	 nJL99vQvj0DNQw8FI2hGv83y3moJuB/3tnizlzXJ/nq92iyV+huubFM19fdqgWXZWk
	 aO2/Bd6MzJSag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1CCFB44A9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700905368.8596.12585454322963544388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a8cd7a0bc6a90219361ecb55df9403635451f914c84b9cf4304cff16fc2fdc
Date: Fri, 24 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777009053
