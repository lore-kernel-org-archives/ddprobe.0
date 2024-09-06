Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551F7946F
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725596754; cv=none; b=lwwaLW7Tbs0cacNPuJY4VGFnl0iQbZ5e8RoLBiiZ4XjaSupuQK0OuEhyBUKK3yf+CarQPu5A6/NnhlCK4po+GuSdPxda51muEA23af3rc1ukzpawurvJqHkeT7I7Xq77bAxqbYCOu9qQIS3DFyUX3oINzIJAZRRX74AvOcrO8Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725596754; c=relaxed/simple;
	bh=UA6YCSIeW0N/KK1jCFN+/SeVwZLwjJKuj25D76Rfxes=;
	h=To:Subject:From:Message-Id:Date; b=o/K6pc3bt2YQ6OkupSA8HgW4JplN7O1yARt5si1UaWTI+jucyG0f0uY5Or+E5mi1t+85YyA57lUGDmMntKAc8E98/WrteDTNm0ymqyXtu8guKlXxzLp0Ew+bCxrlQFL+v/ijHWeMPXN8tPaMVedfVjayOK4wVubLkr/Jr94ZSRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cldsNjCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cldsNjCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5334C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725596753;
	bh=UA6YCSIeW0N/KK1jCFN+/SeVwZLwjJKuj25D76Rfxes=;
	h=To:Subject:From:Date:From;
	b=cldsNjCLeMQydockMRpx2PLsyk8LRO7H7DmOcnQV0v4o/JcWbd4OSNG7arQ6LKDSO
	 zCpcgZrbJHyKkOqB7IyobjbhVQtUgF2XRls5d4XVaMOZPgyvXrtAzFIc9UcYrGanxv
	 rAlw2ZBezf6o4TlKx1bqmIqS+UUI3a0NPxHwTVvv88HmL5xPtilaErgWsxNNRUq3pA
	 eI4cY2dzdFktCD8Muq9dJvO4Hp2e9RoCR25lAqz3/clg6yQnArPaBx/HyymJ2a0rdi
	 6YwTUQT4pmQ0b7WYEEfOGXqgbTPcKg+6mQz0uulOkfu0KRiKeDHnWbcIVvZZPtcCI+
	 hNUJ1+cnntv/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71A9CE7AAE
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172559675366.16440.2053864933660578926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f46156f709162a36381aefa13cfd3feaebfe84c8794213c7fa41bcfc5b02262
Date: Fri, 06 Sep 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725596753
