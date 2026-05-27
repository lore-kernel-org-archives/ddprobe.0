Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2786D3CB2DB
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779870754; cv=none; b=Nm0+Mpuabrq9i7T9zPOJ6HBDY5IXiNP2RQsNG23xyyuWJoYp1OIv9lezRrp2zhB2opm5l1QLIyOs/GqIGw2dRyEfg/sGE06lv/l9mc1IM85va3c0CWuBVmg1fYaMqZlUNaXmWxlgIAAh/23tpIriamrNiP3zSOUaGD4ZEhy61Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779870754; c=relaxed/simple;
	bh=1p1VvwHyBnv7BBdoRPz1SFU8y0XEovyhxmxkXuOg54U=;
	h=To:Subject:From:Message-Id:Date; b=vAGTCSg7vQMNNbSxKs4TG680Jsqpd2ebWvLQRhyAdD/ZPL12BA/mzNvfovBrZgo8KaoxJ8YrxzYtFJP3L0xWx1t0PIv0VkGeCcz/Un9ABjz0WQ4LwsxIu0xnVOJYT/a+rtHgAUhywsIzLfeQ4g9Nycz1ppEpaYr0Nd5V09gkFr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGoiKAC2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGoiKAC2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF23FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779870753;
	bh=1p1VvwHyBnv7BBdoRPz1SFU8y0XEovyhxmxkXuOg54U=;
	h=To:Subject:From:Date:From;
	b=NGoiKAC2rvuRUwJBIL5E4YBAlZ+KE4fEeEzPUcKW76EL489oN5Px+Ck3WdEU5EeBX
	 3CcZpSUvj1KipjLTJ797fXkQCZ8hoQRl9hW80RsR7LMoQHuE6tnCPvhS84fvuR8fJT
	 VDIZuUhYcHSrRl6FYb8sB1X28zIVGns8MLSOlRuo+jAHLSk4UJ4uu+TAVzIf5xnqB+
	 OtbLPKqOd5iwEwfjVF5Qyp30UIxvy4vppCumlPpvrawBmBfYRXDRxyLTVavLKTNo85
	 8HE6vEMPWreuJTRZsuvoG4UOCTsVujGgSeLzdft/i6M7/yk17HhOZ8AS8aIcWK7dbT
	 4BCrPBGaTC/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A804FCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987075368.4127.8656469004117526606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba98f15876d6bb55cf6c17e9bdc1821815256a8d4ce6ddc26a1530c02ee3c31
Date: Wed, 27 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779870753
