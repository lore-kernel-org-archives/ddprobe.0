Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F0A18AEA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733068555; cv=none; b=NMBVrBo9xAw9k8JEew7bUBq+we/o+ClDaA560SSFa+toqGna0wp3So+piJ+45EVXIXLuIRYN9S2E1++tnWcXEEgA3PUh6Y6CChyRaoh+T2okVFINWLg67EWeIfVfxHP+IaiIvPOuKupBmTGuP5zdJynHxVPJMruhMR60+0Ydyxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733068555; c=relaxed/simple;
	bh=b2pjPxG+Dywwrv1UB2fpMf+q1zNOA1tq+pA7ASbFbcI=;
	h=To:Subject:From:Message-Id:Date; b=u0cR+H49MoV3M5+q6IhLO/38z8kp1CCF5+uDu9ORq6h4scZM1GjMU3NOQHRuPvdjyFdZOtc+ecKlLJhVPC4wvw+RuwiN371lIvSeApeMspDCgZc8t9UGBZddL1JAqae21MV2i2YYx4JKagdzXicqe5M2moJ6pr4F61wtdM+DXOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOoGx+RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOoGx+RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8692C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733068553;
	bh=b2pjPxG+Dywwrv1UB2fpMf+q1zNOA1tq+pA7ASbFbcI=;
	h=To:Subject:From:Date:From;
	b=DOoGx+RDiuuseoB1iSahzJKphBT4zxXGBLQr0lypDG1XSMjgASuXdcOsB1yGX/NJR
	 5nGLM2z8xw05Zpy4tZBIPN3lqqx7JERr42jq65yO9BgIkPd4kIJnrzlNz4pJy2QrmY
	 sS03U0SqsZe3OZ1oumsRjckHzDTEPUy+OvMsHa+H6ipfIXsN33F2EmZ3MKDtMNsk8L
	 VbzLeURgbUm/Z7BztWVeEVNfA+vi5lpcWOe6wkHrmW69SPzfWBtmvbkeA3k++teMb0
	 OggIsilh7NTmpc6Z8neIO76MmzGuDNX33Zagcb6dLimkT1oEAnw+dsS4H8WrNdpCst
	 VRhML+TGxCEDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433FD49771
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173306855359.25364.501209435459766830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9905f1891a5355e5ac7f9804bbc0cce87985c250e2e7e06997430de16770e422
Date: Sun, 01 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733068553
