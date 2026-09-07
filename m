Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8D63542CF
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788823234; cv=none; b=ZmEAyFShCeDbcuuO2UUlDX1aAy+ccdvcVR56I9NE1Lv6DCEBg3wY+HzQxY7opDyC3iks/pc/nGFl0xKywIjjU3MIzdmtO5XZcMkUxLOXMMUQWfMeLp5CXbTmhZle+7Bc9VYTM5bQt7UwwCZnJMb6/ksX0ZgCdPedzZ/jfH7K7H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788823234; c=relaxed/simple;
	bh=Wt0uWbB90+m5U1O3dXZ/xcD8rPOWUYHyHoGBA7VrvCo=;
	h=To:Subject:From:Message-Id:Date; b=dRcNbOH8VB54SawBbdQwwivaNu0ZcriD0B94YzDkDIvOgNVCRFZmGq0peeu+uGf6f44myqtagOlZsvspUQyc/QJGQGtR8NElJB9I0UW7JXKo2HQmPhu07F9lifRLlnPhSsk4vuMk63BSwt6jTybbkrI4hD7ae7Ov2LSt212wPzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FNTbpPgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FNTbpPgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D582FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788823233;
	bh=Wt0uWbB90+m5U1O3dXZ/xcD8rPOWUYHyHoGBA7VrvCo=;
	h=To:Subject:From:Date:From;
	b=FNTbpPgdgQ5zi0nvPrgV9nlmzxlvMQFfg9/maswH531Czhsf7SAz5Q1O8z5TBkSap
	 LNuXRNEUx5zLfSUfXYUyH/Qiyi92xMzSKDJXgzk/dnC9a77Mg0EnfEd/GeIypQiveE
	 qljl+GWHAG2MXY9mGd2XRNbcjJs942OHp7TeR9JcMF2ttgD+GjFiSCuNjmSYJFvcbD
	 scV/X1da3mlOHRDwG9wE6OaXywzwT0ejxGJv4TQlov04ZPl/aJX5K0Tw4HcvI/ZEY/
	 ITGa5WNPE16sPU3GogF7lUgphvrKxpv54+gt2G8ZHGiMYwmx0RkoetgtfGrgRF9a+G
	 xG0j+ZoIfGLvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4288C79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178882323370.18614.3115502650154138139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8859006dee93971ad28cddefa91d9949cc12fa3bea41e6ab7da7e00a200af0fb
Date: Mon, 07 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788823233
