Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508232FA30
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777532254; cv=none; b=TxqLiw6TV/3B2skcs14PZZk+WR47h4nI36qCKSOeBCm4XNYh6MIkVFw7RwAl93QDPGRgJikDYRkAo7mUQN1hdxkbTcJDuDTRKUBLX3O5vXGBATMVpwR7j3/WC/qqp53IUp266L30t5xTEo8KEA4WrJ4jkp/hz8anc9mICF0WBwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777532254; c=relaxed/simple;
	bh=oGrs+jx9zIlbZi1KLvmxusTJwGgTmXUjcsb2odBuKts=;
	h=To:Subject:From:Message-Id:Date; b=Jie0DviV6uP0Nc1JTaiLSeoGZcgwCruhNuaFnn3hhqKAKA9j6Qsb5vCCA1XBBlsfRsPtxr5RT7itCtOZ710d9k5CRpLv8zOZvMT5ZfmkkIxg/7jqHgDF/KEA/Zsmb9syEPsh7l8m89t78mRnMZVCyglOjiMnnzPFxyWXI+i8hCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dla1rFmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dla1rFmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA46CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777532253;
	bh=oGrs+jx9zIlbZi1KLvmxusTJwGgTmXUjcsb2odBuKts=;
	h=To:Subject:From:Date:From;
	b=dla1rFmqjSnRnkBZgLHRy/XE6Uuus89IAgngoMMF9MwP8GBmMcm0pL39J7TYkNB+Z
	 zUJ+72YzmV+WN2ChYzgjKc9GY6/dz/CTBGcrexwSXUd6zxjvFSb51uJnRFsTLq9BOG
	 hEA6wJ7gqMKeFB0gTR15cLdZOSp44yi70j4oUrhZJBQAC1YYIOjttt04HJ3SZtH6zD
	 ktS1BnNsZ9gKE4X1FPmoyPFFHEGJE4xVM74sT3AviDrO78ev+giPBMTVLVNXhIwBI1
	 r36aQqCPVidqyvVr4tsm8Lw9gMCrmnMjzGQ2bByjmaCMmzaEw7swf3dS1ww13fX8lk
	 wlU/lmMmz+xPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A927ECD13D3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177753225368.12228.5888468828342095474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f22c441931ebef73d31d0a9b8f35325327e9cc91d8a01b405e87da76cffe4101
Date: Thu, 30 Apr 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777532253
