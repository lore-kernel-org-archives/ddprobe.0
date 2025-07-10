Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BAA9236A73
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752119394; cv=none; b=MaDH1TH5cwa0UFrDCQZT+1KIap2JQOpLvTKvuHHccsQysdRwkj+6zPh/Co0YZhfxm4NQtaC9LAHFk72oDfDFrk3ZY0JLkW5FWshWz+p/E2TfpqM1UiCHQmMbWZJlWACPssaxO2Z1RpIn4PmzbqWdXhpFx6OehpNSBsPcvPMEROs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752119394; c=relaxed/simple;
	bh=rY97IrAupst7IfGaFutL1O42GV8Kj49YgNGewOgm3lY=;
	h=To:Subject:From:Message-Id:Date; b=VHjLE8Nbfgb/PTIs0v3tQLrZZPA+31AAfSRcoEde1zNFtDTUpoxukzhUFuQh+Ft/KE9hfTEJSmCRNbCqCWoHJGSw42dBCJNDqpAUWSBFJzU8wnn2v+J2lXBGPwolz3gjCtTpnDWZeFisGAEdE+cG+Izfhp1RFnXQXwxztPhFE70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vil8yva0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vil8yva0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD7FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752119393;
	bh=rY97IrAupst7IfGaFutL1O42GV8Kj49YgNGewOgm3lY=;
	h=To:Subject:From:Date:From;
	b=Vil8yva0TbNzyQLejtUm/rDoQgEOmsgGpzq2oALhH/e8SEyxXajALngJN0/rVAgBM
	 k48P+xb/efL8BwzcRZbouhxNysAXdcOHe6FXZ5XUIV/HaLJ3DRUM8ylL0rY6wEf9aM
	 HZxtQfXu6fuPIq23+vPqYCNr91XNI82X7akUcAoXzms/gUTESSVA/TY6wvACU0ia9Y
	 3gV+m7AZ0wm0qE3men8FvfTBex9fgd+PUILKxY6ixE1+Krjbjyy/WUn117PPO3PWeF
	 7AU3DPKMy9hkHx1pr3cQ+OaYpvo1EFteJJ0x7g+z4UA7+RsdcfVd99I86NTZNK054I
	 qQMuvdC5IzyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E709C83F0F
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211939357.5944.2677211065966614604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b93773538422d5fdeb4d68e87771d517bbb55a49496012163b528ea718c5835
Date: Thu, 10 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752119393
