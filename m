Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B35345EBE
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788840034; cv=none; b=h8Yt2H4enSPUKniFJ6qcp/yXsrF/0zpG/Sid4NodFQIX/cOcrR3cea7t2IVIrNWtg8HcrNToxCFfQ1ZzMHL2ERuHlaKGjWxtEe2/Kwv82WEyJXw+PB24/gP1sK+C48AZ1JfyZXR72EkZRAyeFewRdB1w8ekrgSx/UVvTsCKjNdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788840034; c=relaxed/simple;
	bh=sp9YMXAmqpsoFX3Hwy/07ZX6H6+ziidaH1SbIWqc6BA=;
	h=To:Subject:From:Message-Id:Date; b=fuDZhsdJtmlcnduIwkoiSpLZaP7f4uauAMvQqrPPYoAk+vx76RMZrv9zxu40irFDzv3gP4teEKUa6DMQHHxMBpb0pibvL8jnRk6RhfjvTyL47rP8BMAroET/9nCjdpUZI5bUsSx6X+9HAa5FYVc6i+QSzzFs/aVXFYxb8z5kz6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrVGSxy0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrVGSxy0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6924C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788840033;
	bh=sp9YMXAmqpsoFX3Hwy/07ZX6H6+ziidaH1SbIWqc6BA=;
	h=To:Subject:From:Date:From;
	b=nrVGSxy0fs8whQgR9kwNEKBSK6NdaKq4c/r0Wcz+oPFRdclfepTgAK/xWoVj8axV8
	 nFcYnGQaAUeXyrwul2Y71zF4VWguD3PHPftxSTVwzQzX95obIqq8es0hTQzEuVGAQb
	 DAH4JOwEprUNFs0tGitrsRnTdM+LhhnHw+SH4w8Fyt6Gm9x+UJi/7ddp+rcbL40zPK
	 cwML9FIyPIzKDMnPoIwUaDuMaTJITkaoTSi4welH7wn4dz57uWBXritbrjNGpRraV5
	 W8gEuY5xXld86bEroVkNI1lp/onDXmOdFNQ+g6Uf3ElO8BFMIdoEUYdsvQzgFVryHd
	 AXiWxi1HW4WVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45DCC79FAA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884003372.6549.2720264567347330894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b80598a76ed6f478fc54275264800f58f36fb3e532376c5e7a261a672059d347
Date: Tue, 08 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788840033
