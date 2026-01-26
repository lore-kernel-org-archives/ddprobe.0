Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFEB347FD9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769448234; cv=none; b=ToCaHaLuFYBcfZ3l7m8GHzzHw4scdpoI41aKZVtIkfi6L1BXMxLigT0tbZlILQFoj+/ZiVm2H/FK2ANlX6Iy1Sf3XKtDssuz5HhZGsi6428RYI6EoJNDsvXHMK0+BU/s2RM8cPwhm67A8mbZwaQfd+Ga16yqSQb0oNTJGGPy/pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769448234; c=relaxed/simple;
	bh=cAHYpFlho4eHPO8GrH9bzc5MieAyHDI7hEoxTkmTDWY=;
	h=To:Subject:From:Message-Id:Date; b=nxOLdjsrEg1TXV4PA0tg2OWmc1zPeZ8vggs9hDQZFeEznt5YlgLbwLZiEJmrq18pGDUNCBYIpAqedynlhnrWuEcVyI8GpdUY45IB0RaGzMPSuJW1nrJyqjAtmTDrtrJ5j3IEjHIfYcD0lHURePjcTX+UrhkviwByx1y01DALU+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnKA7YHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnKA7YHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA87C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769448233;
	bh=cAHYpFlho4eHPO8GrH9bzc5MieAyHDI7hEoxTkmTDWY=;
	h=To:Subject:From:Date:From;
	b=QnKA7YHemk19Y3YHjRI/74tDzgoatSbTvU5ZWNPt8+ydiHhaajT8lfpvy9BAoo99T
	 1U4nZVzpEuTpbkNE8Tb8mI3/BffZjhnRpcqCQ1ZT5eZihsWOoxzbulillolm6LVij6
	 cn2KpVbgXnmOB1SevLV3qbSyYAT5hR/uY4ylTGHL5HaSf8eGbKf74K6TZe3N9FdiQz
	 wRkJxWlQfBl3rHIlh7OfAjI5hWa3J8FqfVCl+zjv+IcdJ9OrDVq550hHPfTyU2l/TI
	 DRl57g+8vKOq/108hip+os6Yrbl3CRL5C014jdGYwswvSckkcDOEPh4kCabJwjLz9L
	 VV/u2oKdu383w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ACBD1950C
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176944823358.24282.3476817986057653649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bc496e2535728e67a61cff04eb1604d39aa60ae86fe948c64bfb110cb30313
Date: Mon, 26 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769448233
