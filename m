Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A971DB356
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786668634; cv=none; b=OAhOe1zzlpFRChszL8dT+hBSvivC3uJOjhk/xu5IQnhAMeBkk55smUGFAxoUDTBE1nFl69fBygjiCevfP2Zu1cUBm42gpk4Di3MUslZ8XJbNn1V/pY8UQab00vB8QWxyc2hwKyd4jh+MUn17Ep0XDNI5473wvEYB5Awa0fK1x80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786668634; c=relaxed/simple;
	bh=Ewmd+Cw+5SmEbxisfTMgtj1ast1ZeuDFO9B6Gc88Q/Y=;
	h=To:Subject:From:Message-Id:Date; b=dMf3FiqpOtTPzK6WWWqbFsIm+M0DLBNP1ogS1hZBh4WiL2n5qlmBbN/lH52DsuezYVmwFfDOkoQ/RERDVPzpRRxxxdNgQ+twklUQodoEqDPMmUoUMh+j92dmTumtTe6xAKBlAnqiiHKf7HpcaAKylUnPLQZSAg5c2d2ofjg8Fvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMaqsbFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMaqsbFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCD0C19425
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786668633;
	bh=Ewmd+Cw+5SmEbxisfTMgtj1ast1ZeuDFO9B6Gc88Q/Y=;
	h=To:Subject:From:Date:From;
	b=nMaqsbFH65Azqfttg3+YXDleVXm6J3dVwKwUI3vSIDjJAW4AlS0YZApXSpH3V4sZ+
	 sz/H6XS2LVF81DaE2cDD0RGPvpZU4wESI27W+gkI9Gq6ajdCoQ7wdMbl+sZbOLqO1n
	 OahNomfTN5YXuTgUKsNE7Ezep2CC/9DQmHx2Aa/LDhScJQAg52omsqQFL74V8vcPpQ
	 OXUdwTbwEackhSwXm21PiOXtzmYicBDAlOoV1aubUTeX2FZHIToyE8k+PkHIjjhVvt
	 4DAA+9dulFxYEaK5M0ge7R2K9rja/YdEKBbQsfxYcPnqrts4AoIkE5l8/uGzwXnyzO
	 H+OozI1mbywaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5A1C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666863368.14660.9933698774653080422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2c15bd5bf68f1fafe7492dc07357607c70dcef5cc202529657abe8621f710b
Date: Fri, 14 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786668633
