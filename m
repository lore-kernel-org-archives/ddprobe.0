Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6A418E1F
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759712394; cv=none; b=dr2qFgL++mcHEIUQCYWZWC/5MlSEC63KFDrP8jVMStM/3AwACLAL4xlS2sZ6Sbx/gCNDV9+mwSmFuY/9kAHZ9v7g0fqt/KExzztZD3ubXA4xCOcha0QWoudE+w3qJUWIOtNz1NV3DudfUI+e7eO2WxBwBu2exl7Ra/NX5srWQy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759712394; c=relaxed/simple;
	bh=+ZVoUgSZXopJVs/gB1ctGGdncHyi/inbSRn8TLGDqOU=;
	h=To:Subject:From:Message-Id:Date; b=kTBwRe+K4c/+mhUqk3ihKoHTKmkVKceFtxT5mMMeGdCRz4cS4vICDmyedawEZHbbLC3fGmxmb57Qc6IypzlAYWEW+2LY6eG/I6v+cfe+zxy9tVcAfrRNMQzTWHChgEw/AQiw8CocKv8498CEYdfhfQm9zgJO5nA9R2wDHLsD2/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFULvgbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFULvgbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD9C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759712393;
	bh=+ZVoUgSZXopJVs/gB1ctGGdncHyi/inbSRn8TLGDqOU=;
	h=To:Subject:From:Date:From;
	b=cFULvgbtsMOsuU59BUQMLuqVrkkGQD3zrhv8obxWWuv9Z3QKNC3Z/2GX5HurfTMyb
	 17/jrxE/Kpm2mp6Cxu1IYF+Dp9EyNlBjIW/L/rumAdtkLXQG0LFDjCMYJKzS/QGVUh
	 cN3HZb5arUaG8dmF3zDlSF37MkZe31kQv8vll+3Z3RmFTwE7BcgeyTY7q6hAkL0vO2
	 pGtB/El0gTn6vczkcVnRjPxsrgT0Og9XRe/vGAqGZnSQJbxoRNL5ViDA5CIIU3jloq
	 89U7eq4aBcMhheLXDY4SQk/g5HciGDO1/MEhA2F7dfRem0SLU++YGUyws/Tv61A0Pc
	 86Mmyl1KV2Z1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE0CAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971239357.7575.5473014139337228699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c100bf5139c9017ac53e346a3a8695d3c841c7ad9b048c0d6ff840b872a23f
Date: Mon, 06 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759712393
