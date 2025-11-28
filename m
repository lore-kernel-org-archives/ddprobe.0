Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BCA2C21D4
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764337374; cv=none; b=ORgeyxlVPSNUYz5mI58/cD5Yz2jEZsF83eokWlXLMuoh5EaLLYrEu9ntoG6n9u2zI/y2vWdnKs1/kltmzF9JOn2wJVgM8wDDYBCGD0qKtp35jpIrI8cfTXj37I0abKAFDbfk8cXVP4DgYurxMZ1IgtTzqATOkbfpPGPLF5w9V30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764337374; c=relaxed/simple;
	bh=hLzmJR6mGjgw4VhDpsCQpnYYzypzjKVqh5mvhr//eGE=;
	h=To:Subject:From:Message-Id:Date; b=oOKIzOnsS5xsND+mKpeau9KUuLa1X4cwkkDMwpZXMwrseMtmXVYiQ/AADZOA9Dz+4E72F3rNbZGd/elVrZbY3ItaXFR/nAljmoC+y85wQ3Bh+UzG/RJ5nbqSWnmMNDWk1eQv1AahXLOwBtrCwdqFvPU2d/ptPB89rRhpiOZ1ims=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3r3xBZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3r3xBZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F85C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764337373;
	bh=hLzmJR6mGjgw4VhDpsCQpnYYzypzjKVqh5mvhr//eGE=;
	h=To:Subject:From:Date:From;
	b=B3r3xBZ9y9QgT5h1v/z0LHp00DgayQU7GizrxjfyNr4H+Oa6geORS/BADSjmW46Vr
	 sMJqarSb/QSXJnJwSHg/8TTGgRiz0OKTjFrhnqDrgNnx36GmdkdO3Gd4DUNjFwtSS4
	 LuBDdqk+o7Jj1P3mxDITazaIPE3NnSU5iDwEQrrwdbPdw/dHwOqW8ArxHcp7Y/gEM5
	 dqmuWnIsGZ3HRjcuRibeqft+rM92dMDJEF6jlHX0RHnUr9G6XGy+WvqxuWN6RlfTdv
	 ZHTijzkkX9+jFV1+4UEckf4ht9787D0/PoV5OqURJjGBPfK4eruA7Lixzy/Es/uIjT
	 ItzKPb1DzOobw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9119DCFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433737358.16015.15747157152711874729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026861c3ed3f8baeb843d3c904ea64f1f9bfa8a7c4dce26e449e5b25a83d47d0
Date: Fri, 28 Nov 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764337373
