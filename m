Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C001C5D77
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763786514; cv=none; b=Ao09gcfEQQFS+qlGL5tStLqi5H3t2tPtbObxK3+4d8JRbD+CgUQNslYwcjZ5H+wsJfGYHudn4uk6flwVnTFCPhpfPpwwjTmf58qxIv+IE3vSZyUNoAwix4P6JrjQw+Zbk8LOs9FnH4Lx7qijRWnQ3j5eVX5Bbl9a/ukDgX1n65A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763786514; c=relaxed/simple;
	bh=BcGhVm4UFUZEB1/088HUu39X0W8XC4kes7NCCV7W++A=;
	h=To:Subject:From:Message-Id:Date; b=H4iWNcl2lNe+uGy1WLsYrOaUY1teXzb/fAc341W/cCMXqKVzyuvviXLRun+m5BBni9q3C8JPwdaDYSGgRqfyUGD4Xg8AsE/qVtPfV9nYOXVAbb1TSvK0hLunglSrH5sKL9ZiJIBDSSbg6p9hbnu52jjdiYNclBuPSrvNePKsZ7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBnxMxyX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBnxMxyX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763786513;
	bh=BcGhVm4UFUZEB1/088HUu39X0W8XC4kes7NCCV7W++A=;
	h=To:Subject:From:Date:From;
	b=DBnxMxyXZONYOMUYr0drSyrAr4bEFO8vZlS2dLIajXFaanFKlX7U8wD4HojpdU0rI
	 yiahl38NAkgtIXvjUL/K7iuO4eV+i6TzdUpWWm95D/7/eIPy0sh4NZC/Sm/xid2eSD
	 G7DSPs9rogLLf0A6FG4ZCPO6Bv1JX9+0lUwSgDyH7+RT1pKttPihrnO6tvKwOCbrbM
	 qceonqBMwsu2g3trvb+TBw/DBLRLAE8gl+6tOeP4v3dYIslDmzNxMBeQFTGKBG69jA
	 TaKu+vVw7o6bdZn0x9mub0Oo/mMi2MuYC3JSiR3VDniK7291FY+7KiMoGHYvRUxRyD
	 qbq4Dq7noWFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941D6CFC50C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378651359.10924.1304147705312158341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28ecdd62d4e22e4031c6faa1647fa71d3b1c7dce33110a2fbcf5e601c89dc6d6
Date: Sat, 22 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763786513
