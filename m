Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FF93019C8
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791045634; cv=none; b=ZJ/puBq3WKcoD2lCDg1Qoh/evJ7MzZhYGvBa+naPVseKHDMOAvETCQiTg8McqpN5Dl7uJBvRw0Vxof+lN766HFBJD3sr5/rAnl+WrPvvXirtZ3lPRA0Ig4wNN+dxXzkQpH8oMjA3HzKODZ60Bf+FXAmeLirOhI0zlV4BwUMUDMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791045634; c=relaxed/simple;
	bh=m943HM8nSWGLIxTy4DE0i7FDh942gNn1h0tSPlf68g4=;
	h=To:Subject:From:Message-Id:Date; b=b2q6ywJ5IjUHaLGZy++nXIrb1dSUAeZGxuSkMdIevti+PPD0zVxPFjcaE2M7KZnCDJ0COPp6QOL8z1j4kbJg3pZdXMxSS5KvyYn/myGX9FANzvfGT3NnFDxRI5u1X2/oXS5vQ3GgCf1bV/Q3M7FOkQzX5ozx05//ZA3Ox9bJyB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/RQw+oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/RQw+oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FD7C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791045633;
	bh=m943HM8nSWGLIxTy4DE0i7FDh942gNn1h0tSPlf68g4=;
	h=To:Subject:From:Date:From;
	b=b/RQw+oIYYGZFae044vvw3JSvmLx5shw77DS5/nHO2hWawNlf0AFBhAzrB32PbMIV
	 aummVQOSXIov+8OCWH5bqvyXIGrrNmGfg6P0GT7XDcp4HoOZH0Cgr70d7ytsuP0CGT
	 wXmXqx0jvJ+jCcHTPiY0caYOoAU26gZRrSH5mocma8vv2zOwhjn1dNfj+i2wOteCxr
	 g4r2gGXXwL4N3pBIcnZdyuvCMWCkMpChwqslAuzRCc7c8rfyeBIQxM/IzSc55Gre6A
	 m21VkXU0jh+clOzlQEsWTckgL9LCei9SnzGPaOWg3/9hP1dzkGVi0GUkh6yS2y6jkj
	 FgH0XHL1Pcp7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE17CA5FEC
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104563370.18011.4026630517821546051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c4a6f23085212acb58f6f602de6f65e3316b54529ca671fecad7d4db30bcc78
Date: Sat, 03 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791045633
