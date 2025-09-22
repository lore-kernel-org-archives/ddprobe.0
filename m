Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB201BC3F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758507594; cv=none; b=nRUIUWER73T+kquUN+KijFCo4ZEzfXzB/wzTJxbWLwBATydbe1q7MJzqqfKQLD756vCEg8/zR/NoMaqdZ7wkg0Gdx7Qut0CyNCsiYj7lt/lFz9F/wlwUpBK2WdCsW4P2oZCs0//k8lhHat/tfb0P5gh3takvqjoTxpDu1H/f+1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758507594; c=relaxed/simple;
	bh=JGAcHvfmcvqPwAEhCH8W7CGD/Ok5GfQmM62ecK/NtcE=;
	h=To:Subject:From:Message-Id:Date; b=ni0FwGfq3ktQoIj4z5HVpM/qpPA6XFZTJa28DQF7JX7j7sBgtMhEXR2R5lPhxEGqbJnq2Zn6Jm78M/SkaHM2bQIbf2JB+g5xZtvqyguZkNO+vpYfs8gdaS+VoWizg2YcNUzc6kQw6KlXP5jOmBmSRam7+wue188E6hW4geKcvcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENNd0cyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENNd0cyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDF7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758507593;
	bh=JGAcHvfmcvqPwAEhCH8W7CGD/Ok5GfQmM62ecK/NtcE=;
	h=To:Subject:From:Date:From;
	b=ENNd0cyKQduMKrDONf9GEl0+W6WC5iVhHhQe+o6qhkV4jsgqN8Y00K2/y8EZBz0e2
	 g007u+1JXxKAgwaiAsXv8n+9IN0bgCjUABiePtPSP6KplNWNzF5pLGbYUQG4NDqg+6
	 eGy6Dr1kiY7Kx3OmmtgIGDC1fRHspEixpIz0TnLK/xPdXz++Uv72AH0NXtDdByiIR/
	 I20drfFplIx9JbPzgrbjJMu5MsWUrSeaBdVj6z7xY+xTU/gS0a9NdB0llFQbjjoQZ9
	 GhUzjiEgt8bAELy0m1SOpRd/bzgSj+92WqueQyYMLH+6HAu01sg6GhVSdofhEQPXEn
	 uwZys06j3ApLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9070FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175850759358.22245.2551780178868672464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6585533131cb9ce080c0694a447b110953a254aa1ac3d9387ec2de8dea33f4cf
Date: Mon, 22 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758507593
