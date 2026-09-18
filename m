Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6CE10F2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789775434; cv=none; b=UNWdYaNIJrWeZIqJwicM1zcHCDo0233IeHnSKkewiEX13FWSxm179N+ZFsLbeGD1YLAG+eOB+sIKBvj7d/diXrvVWoQTaLXgMfxolNTQOQLNYQYPanUYUnSWPcJf8WEFh5QT54UDKPG9TwrTPRl8LMiTTCVhkPs+urmZKctPNRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789775434; c=relaxed/simple;
	bh=icor2YFRskmlbqXc9zO8d/Eb3Cbwxr70g7Qb1r00/rg=;
	h=To:Subject:From:Message-Id:Date; b=LGt14pZ9YvdPb07BAH1hB/mZR9/eOym/6DgYPW+NYj6NSmUnWh8DCEXrSODJTpDS4BczyQiPgCCeGQb4zg6D4TKLAcYDr6dwdbEgRzdYSxwVIj4B5/nSfYFlxvqS9l+EfBeLWNS8zqdhFLjEulle33LLCh8iLeBbIE94iIGrRGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qqbV377Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qqbV377Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42DFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789775433;
	bh=icor2YFRskmlbqXc9zO8d/Eb3Cbwxr70g7Qb1r00/rg=;
	h=To:Subject:From:Date:From;
	b=qqbV377YYbA2EHWgCVoyBNRrLE1vnwyEU6WeW0FaIyFCgekZD+axK3YCAATTF4So4
	 o5q/h1c7pPLVC6nVy7OP+D1s58WDIKLhkJXoLx7xQ6Ek7NW0pLYq7JyoOuiEFC3Vcp
	 1LnUZ0hL21BOSxh2/LRhFn/SA7k7t1pHBikk+7ye+xuMx3l+U3ZDx6OzJr6IOqHmFM
	 /bVBNEqDET2AsAqJAPskx4V1QHGWcGKB9B0aLT0jgB5x93f9+QV1LgX+DvBp7B2DOQ
	 8ANrUPR8SMHR44dRd8aaSsYUJGXZ9wpyz9ZJSRDjizI6iD+1U8/Np5CYrWp1suaFq7
	 9dWK7F0oWoBDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E94C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178977543369.17563.9494463275225802102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f8149e4c08b2a583481f6acc20af996c99db9f18a168b74b56f539683d6c82c
Date: Fri, 18 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789775433
