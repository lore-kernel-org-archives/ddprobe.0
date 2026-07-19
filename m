Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748AE8834
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784421514; cv=none; b=h93552kbMZF5hrpWeiWIscdWC+V2NuhytXwW2Nc9nwPgQcp3QFXKrbG7b7cx0sbiEuizj18XJVqFjcEzXIzNhHQEJnxGSdjt/8z+irC3+HaZ1ExJq2wuM3wUEjfmEovIfjKSCWouc+2fv9QBhj/9zPnWUVM3ZxBwX/OdG50SiLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784421514; c=relaxed/simple;
	bh=CjobnokH6vYZJMlsCAuqdEnQTu8QdfnGn0u7ZrVFUuY=;
	h=To:Subject:From:Message-Id:Date; b=BkoDS9wIlk+pVSlTh1yo7hecwqRMjv1rq32rEocrzFi89lH6lhxAd3rFqs0zL2tGOsvNBXLwsCl5YhVVSg42AyusGtR58yb+5FT8OGgiKX6E1kVyBXRuPTamlDmb3UKTrYy1dtdq9o7QSL1Kn+Z7fuQlppwL/XAAOYeAQT2ygDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXUEEDS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXUEEDS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFEF9C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784421513;
	bh=CjobnokH6vYZJMlsCAuqdEnQTu8QdfnGn0u7ZrVFUuY=;
	h=To:Subject:From:Date:From;
	b=pXUEEDS/KrE+DWruXDCLr4c8x/dJ32istKEEpX49GCXanxrO3qCokfLXwjejlDM8l
	 cckDQaC+vVjysgZxoVbI2AHCGxFGxaA4nGGn99GPosJh58luVQLH15Ib1GBmD8BY3f
	 uyjccdEEggkZm9QcPiR4xWbkS+oQ+mhh0xF2PbqpGydI13WRi6sMSPDMpgL2ckPHKt
	 ZAFKIn5mfE6Rn9qU6uQz5takjQI8/qz4Q9keCPjMQBb1M40tHfrGsvtZUahAv85+VK
	 5DIATOxOn47aSYYzEbkGqORr2rgcGgrcbrRrnEiN8bdyhNOvAfVD2+AlnUImn6YqOf
	 rv04s4yQRBNbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF02C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442151368.1908.7570026707692036016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edc8fd96d38f8b34c21d93793bd4ff0e300d5eae02959e71566666c2a7587fe
Date: Sun, 19 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784421513
