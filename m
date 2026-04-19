Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282D61A9F91
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776568054; cv=none; b=lwbo5excIIRKbe9J9NVfw9cGme3dIMv0CpfTumklQpogmjunZGLFGGE0zsV/4jL2GsQ4FVCyDVJyGlP+T5tKSF/Mj2XIbTiuKhflIGu4hZDflwa+MuTFO6O+rbMbCLiRQzlVpc+MvZZwWbCpsge4zW5Q2LXQRqJ0jjZs0sHlHOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776568054; c=relaxed/simple;
	bh=m8/zuDOLValTPjtVL5P2BdL1FvZp2hwvAJwoNxXvaUM=;
	h=To:Subject:From:Message-Id:Date; b=TLgloFIj42l8LL8HGTUBN2w+wuCJJd+Ina3WPpKUVOGfJqQuhJ0+IyACvbWHyLKwmE/McZjltdb0t1PBhBV7iolW9jKhlBDiWNKRPUwsXR8Kb6YRN6N2nj8JzLPlqVzP/cTF9TZl399GTgdNPKk3yQatT6E+yFiEnbQ26YcbmSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ilp3R/3E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ilp3R/3E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB256C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776568053;
	bh=m8/zuDOLValTPjtVL5P2BdL1FvZp2hwvAJwoNxXvaUM=;
	h=To:Subject:From:Date:From;
	b=ilp3R/3Er3lXemvsmbYn3kXA96onpWGreFX0MOlW1QWr69FmPdgfrsIBr+PvbgA/x
	 bhBDvof2AOmijidVY6WFLpC8+Ga0/exRDska3bXpuNdU55iYaCsBPB9wnGQ70DFCUV
	 2KamZy4zHUThLA/4GamKPcePKPuPqSaLR0sxLJXBFls91vdQGDDrmNzOZgpEJVaeQb
	 u1hJv9s0DEV/CmHyOZatrQYP7FpeaRT/5tI5dlSjJ+Crp+ntxZbBjNmI+YPLkF4MSO
	 3IoKaNBhifQRl7DFmf3wDovx0R580JgYwILrov1QNOlRulreIpF0/D6LbRK5MB2WKN
	 s+3C6+x4RdB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843F99C95
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656805368.9806.14337489169627062464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aadbb4fc6e08b3ac0e3ae37c456dfd28783a45f3e9ad4506cc3f46cca603de25
Date: Sun, 19 Apr 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776568053
