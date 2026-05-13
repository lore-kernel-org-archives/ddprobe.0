Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889E25A2C9
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778696434; cv=none; b=WtUS+hJRpjBqLFvKsi8ofx9TCQXAjo2C8Dehk4qbSv3Lfd1VZmrcksS/kydcmKDPAKApdlzwaPNy/4/CJyfzYZGpXElg7Jt0Iu4/8QDE7MZh14oCt70qrFUmGPokAtlxE+81CqHcA0V132p8EtrjbLg40TjfnSQTEEfxdRkxqQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778696434; c=relaxed/simple;
	bh=+CfubqQip4mY/WjsChj3vYI7IW7WKVelu6vZo9QrtrY=;
	h=To:Subject:From:Message-Id:Date; b=kfgucDcrfhFOdEA1tNj6E1oigwzzJXuKdymbKVYjh7q3HNi2HXWkotq0ph/TtCjoc2Zau9lGiz4d9PmAeuLB52b1uLTg9QXiayOunHdsBqzWkXeX2CzHT1BOSx8GeMzYaLR4PkA5omNwmYIXD/Oh1WTyX+wcH6HI+1GTuwaPtgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRR9CJqE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRR9CJqE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89D1C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778696433;
	bh=+CfubqQip4mY/WjsChj3vYI7IW7WKVelu6vZo9QrtrY=;
	h=To:Subject:From:Date:From;
	b=HRR9CJqEZd3m+pPww2NypicEMMIZtn17JOWE/jWvx4t2nWHf9oKavPQ42I/TeHN+V
	 bLc25wTrINyNUC52da73o/gDkaW0I48f1hKGNxpFKIO8vWWOMmZOH5KYad/vT7Wb0G
	 CaYw3lHC+G5Tn4o+MF7w2Kp5kagSA/J1ZJB6E44mcF3veyDP5uX1DZEaRIWxHVWqyn
	 5zOtyCyvBMy2I670249BIohSqTYHEon+eeVpj3N1ELommUROj9kvUcb5fgqGdEz5ug
	 FJ0Dh/BnQ58ABnM4GYlB80jM/TX/vn6w5rwR+vqvNGoVgaz8JqKqKSUVy6Y1eePM8b
	 j1J7VFVgAl9IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA401CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177869643368.28875.9211955729900192621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2a80ac864f05072b00bc86b39a2a05337ab68682092b91589ddc605899b8ee
Date: Wed, 13 May 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778696433
