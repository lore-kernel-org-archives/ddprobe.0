Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD1F20E71D
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754693994; cv=none; b=tXQtpwhOBNhMcPt+9AnRSHaAyiGtbHNr4ikUjq9NAqoKi/bbKfND1MTLJZuAXalCcwoiAlj2QJ63AK+BoYLPCExEGVys98keRVc6yBcLAyzzuGQ/kApzWUeT94hS2P93YMn5NbCJrvEMkh6PF+YGkwJlN+juyVr4MF19kqymRGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754693994; c=relaxed/simple;
	bh=1lNwSn7SJez6rm+hWk/cBCSRM12EgHvLC+iyd9UK+70=;
	h=To:Subject:From:Message-Id:Date; b=YRYpco2HzBG8211aQeef5q4AiKhNWqF38PD6iQr6qqeXCQweo+amWawX8zr2z9iI6yRHBo9lgD/QPR0Ymeo+rphN3zQycaIIo5wgZQ98ojFwCG4aQqDF6I3WYdvZV/aqEwKq+XWUAd95SL9TlJz5Z9Y1dPHDDBdo1Fu9OHcqrHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mI427Pmk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mI427Pmk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE52C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754693993;
	bh=1lNwSn7SJez6rm+hWk/cBCSRM12EgHvLC+iyd9UK+70=;
	h=To:Subject:From:Date:From;
	b=mI427Pmk0btTmQ5hRmitzwmULjTXnHWvuD5tGzqnGlnxGy2PttBVGie92FUDz6/4k
	 t/FjGOmFi9DhMgt1uOQLm4+lgIoWBTZOyHlD4ZNt2dMSc3v8r/Dl/RxX8GczNsQrR6
	 cHx6O1LsszXhC0Mtnuy6kRLDPurgEeeVsYAuMPdodNZKAvR+4oI8+RJcLUmmnRHOiW
	 rlsafxwlhJqwCePLLpClBgeAxHcQ2OZRHkJuBNmDtzFghQc+IiDkLjV9Yw1GtO+K2O
	 vhxTjj+dkGQqaT3yk2kfY34REvIvCqUCm6+kFkFdhF4O47r9WlmXvEjUOA4KF+TJvg
	 1kxXUy0oO+RRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1B4C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469399357.2829.7737137566721478868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc7534d0926fb243c9244d54a866b8e3aab12eecb6baf239ed63da1de864e56c
Date: Fri, 08 Aug 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754693993
