Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23ECF2356BE
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767583434; cv=none; b=lzr81t0I2Rzv442BYPkW/hpnINpczd3apiMJWn4nMH4GoxWSftjOMzFiQph2iXRax2Y7QDSurjLyAh9wRelvJV6D8ib2iVWbNT7+/Tan+qqPb7CabFjzBUDt6fhAb6E2VaBqDaVpr1LtBFM20oXF/QjIZcDW3dHvvNWEuyHo3+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767583434; c=relaxed/simple;
	bh=NdOYzD+4DdvUuFUBCgou+/YZuP+FGjEM2KxVCJ2PnqQ=;
	h=To:Subject:From:Message-Id:Date; b=M8FLz5FUouJ0aEaIFB6Ll3QtMIg620y12Av2ALlEoqVvQJ2BYi2a7mBkn+Wtz2BNE9gj5WZpumazlxCiBY/w+YOhSUdlntFaPbFpgtxa4X/i+Go/18Xqrc6WEn2c/gG7qhlOzk2R8nF8A6+uB2egkK1NS+WVV4XbkS8Ywj/r3UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AB6aZtJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AB6aZtJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EFFC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767583433;
	bh=NdOYzD+4DdvUuFUBCgou+/YZuP+FGjEM2KxVCJ2PnqQ=;
	h=To:Subject:From:Date:From;
	b=AB6aZtJBWN/FLvU9SFPoWBXiYRx9AtKF8JjNaJ89KrktJfFxZNEuV+gPNBO/7UZQq
	 4vj6nSGHJ515ysLvDt+s3HrsL2lQm/H6OwomkO8N+V4JBpRWNyDDvqQ+JVAHqUH4AF
	 apBst3DPjlMXuz66y/gHTfpMZ/iHDnOcr/yGeIQAud4xPw9gUpk6Kn1hsp3D0nhPxT
	 dJ/2WJbXrk7i4yPaR5MIoMUsKALXgRi3b0ernehdiVFFeYFA7MK4W4Ax7uk6hlJx3p
	 juniBOz1b+NHoGWc/HhTQffB9OC6Q8lQdVdWsN0zI+mo7BVSgh/stq7G/z2aRDY58K
	 V9SeQKfD0UApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172BC2A062
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758343357.16245.6140353706773530730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dacb018455dd94b542d11828e7be033adf662737134e1a570fb07856f410c01a
Date: Mon, 05 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767583433
