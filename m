Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A5A379EC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782081394; cv=none; b=UnOVvUgs9zC9lGzv2cJg4tuyeapaZzEDfne0FVkhIufur5szGk4c11iqZ8tk0VB3PbLpHZtFsVw0BU6i0nO+nJZIAsODWhvN7yfCyAPhZEuvRJ9W8cCOfKhJm56DkUAqIKLP5iO1VfGhI0lhhyYS0slofL4dx9uwdmVNcDQ/TYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782081394; c=relaxed/simple;
	bh=BqelKvYALmjQXDNuau6iJ/mT79A3o9ja5i5K77gevY8=;
	h=To:Subject:From:Message-Id:Date; b=LdzjDMrg/H03GKzPzsq8A/MrVNgK0mY1wdioEcQfllMn8ypqGhZWQLelqVZhVgY5Tvq0av91WcEfdrw8hPH2JYFHIVzw8nnOeJk0r7/XSOHW1C1pg7FGkwLY1v3P7yOH2K7fk08sE+hy6TOhT2n4PRL/N1NtPzKAVCwJ7KHYrdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSBFJpeN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSBFJpeN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAD0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782081393;
	bh=BqelKvYALmjQXDNuau6iJ/mT79A3o9ja5i5K77gevY8=;
	h=To:Subject:From:Date:From;
	b=TSBFJpeNHDng8fQJv3kZ856/JujiOV0aQQZX1gGaQckKLynkxHGM7qzEBnaw6YxQI
	 BWY9Uu5lItmMdciaCoiWbUNYktKt0llcRI+/UYLwQgLd+gioBDVWmrICfzwhLuar+/
	 HRwbUgulnum97gVDyW3nHh6JrUhIHyGxdwxXHg74Oo7yffHzda6XpYariCSpHmnUcs
	 qmViccvPbfnp4MTK77hEuNQyuviTBvvs0teccDmNaVqmxGe6tuB8Bnk2x/XrlHtYRh
	 Np/hnS9USDYYzQbvlxQKlnE6tUbpe9CPrZ/tUE/QbcUx2NL0MVnW2JZrxjo0L3Z8Ag
	 bVa4ushdpszRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD23CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208139369.27328.3291904317039115040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea33aba9cde712f37d1aa95985e8763d7d2fc0c4212cd92f0a0093b9c3d15c2
Date: Sun, 21 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782081393
