Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A86426ACC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763231454; cv=none; b=XOPABYOcOzdri3AVn52DjqjPGzp8ENwq3nrknQGzHNzRKsmud1DpSTuKOXqhC771mN5x/py87vxxihz6s9sdIz7OAqEjhCMnudkooG0257YyxpQpeP3wwEMPnDalFXm7F5hwOKAl0Wsh4cOLAH7D8bF6kEyQOhIV4mq6jQNhRdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763231454; c=relaxed/simple;
	bh=sccjhc8vBQXPJEW0+M+C/kmgg/0mQAAzNz7VOB1XnuE=;
	h=To:Subject:From:Message-Id:Date; b=ak0MORt4wMDEq8LzsBvYb65xVbRwUwkLyNa8FR/LKm7Y4iNqrndjUkl+mu64naD09ACuUjOFEHpuhiChp9mB9co/fTjXPFFBhmcP5BZTiHeSVHBazsTyVDhHb15dLlDBSKfMKj9Y4fJcTQ6kUJHWYrsnrpn33fShAD+5ZVTxKoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6EMnFiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6EMnFiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763231453;
	bh=sccjhc8vBQXPJEW0+M+C/kmgg/0mQAAzNz7VOB1XnuE=;
	h=To:Subject:From:Date:From;
	b=V6EMnFiu6OO4GGN3hhMVbpJZh+yYAnUFx4EvAsQrysREgELOZT2qvJXFV/QSrAeWZ
	 P3Z4vSTmpzZJzxT479GixjbRwOY6aVHUgU05vOGpiuHqvAg9l8mAU3lCsoOfBoqLRT
	 ETgR0B0EWfz3rAqkXFqWptReiltwWNgsprC50rJumLUT3eD6Yg7jI2ptDFmzdmnUL2
	 30FQTjKkzm/Jc70eba7519/6AICdZzejjbwIVHhL6JjvblGqeUJpf7ndQLt3fEesrN
	 fqYkAZnc0Cx3PYDawuaCpBZh0VmgMkMKrMhAi4Oy7RQ3nWW4kNcrXrgq6w/4Z+t9rB
	 eXCgBISMirenw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B1DCEBF61
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176323145358.31428.14387606617116813296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe06b7a924c03a3b824b5bdfdd4b2d1bf0989735c5961345822fa1b4f95f3d1
Date: Sat, 15 Nov 2025 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763231453
