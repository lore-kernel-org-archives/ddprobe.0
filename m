Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE346BB33
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717121663; cv=none; b=Yl16sFA5nETIsNeYdvZMER3ADnD3QbnSRhAQq4l7U35FUQgud2si7sVeKkZPqM9lOZF3r3+xh5mY2/OfhbkJELwIfXKIC5T/O0ZBcOvu96K1QDdPfx5De/dO4cnqn3Oxv0L3deqWcNNt90sIS5AdQrL4WkuIjo8gJ7v2Md8qDC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717121663; c=relaxed/simple;
	bh=H55TTtdU0xv9hwXmZMo2NLbtud6X+zD9nDrpaT1XvIo=;
	h=To:Subject:From:Message-Id:Date; b=q3gu9+2isSFt1+1LKGRvFzXb9Z64RTjMMydieu316xTuEOcZtpDL9c134K9TWZq5lJPLYhpN/wkWvaC8UG+o9eGqOvdTyaqJLGWS+PWqGu4omThK+c7AMZBGKbyYwJw7ZGpsCQn+2prCEaEg85LS/vhrvkp95irZ/FY7Sf0834A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snCMPGHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snCMPGHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6837C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717121662;
	bh=H55TTtdU0xv9hwXmZMo2NLbtud6X+zD9nDrpaT1XvIo=;
	h=To:Subject:From:Date:From;
	b=snCMPGHzHadlUFoXUEMSKBUHbFYIeJhhB+W76OpVpGikp8FU+JR8fI88Tm3JSZzcz
	 JDHSuQKR0UXUtHLuuC+S8LwwGw3I6dJqD4RZ/p/v/MoO2LQtL30vgLJumceCYhMif8
	 GaZOUP9AF2WN0kr+ApReA0NpzqdGvrDss4895ZsTFSwlVJTxtK/pOg2XSq394baZ76
	 /I2ypp5NTIEdVQr/Qk38yQgRvA/T+yaBjFaCzqA58hHsxQsLfbs0jcyMF9pR+NoFpZ
	 uTq48jOqmDB/DiRja2s39QtLwg2Wf3t12+Cs6XxUKKnsUjHRNx+gr9q59yOPCSC+J8
	 r9nWzQQG+M7QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF1B5C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712166277.25843.17470558369126316888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba342d71b8bcf0886e10645668aa9945f500f5f20da6b5115313ea4c9b3c1b3f
Date: Fri, 31 May 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717121662
