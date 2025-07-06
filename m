Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2971A4C83
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751770194; cv=none; b=dJa8HwnoQF/qp/3E593szQ6Fj4P+SEkEQ+7byPi9IZrzYAsYIrHaWHKzKTPnZrUgZZMttp5myZDt5nPY1uIhTBE4H6op8lhehEM1y62z/hWA5nxQgLJC7VdXu8IFj0taZFWjcz17Kcijpoff/uS26Os7yOlVQ/fXmF7Zs3CeeZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751770194; c=relaxed/simple;
	bh=V8cuNwBtzNBDumQzSqrp0niwOtyUozPjsS+bhW1LzeY=;
	h=To:Subject:From:Message-Id:Date; b=grui+73HgkXDOZu9DUpEr5YiXSX2Z/mO/mqx7S5t9nBjP4uFQ09oB/Vx9/4eMckEG6cJGTxWgqD54N3u1j/F28MW9dVDHn8Kx87kR9GFte3b/fF8l6tFHeF68unDiLxOfJixgRxW1kPrflVzSvySEFK/lO2ovyIwPOWcs7/csdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlaY5gEO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlaY5gEO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751770193;
	bh=V8cuNwBtzNBDumQzSqrp0niwOtyUozPjsS+bhW1LzeY=;
	h=To:Subject:From:Date:From;
	b=JlaY5gEODyFNmbf8e2HxMZDcAGz0AYDXhkxYF8QV9Dlhu286skrZfRWW91M6Hdmdu
	 XMnB6voVNKkeUN4m8ddlxmiGDf6djRAzySeBw+s/PD76jUZ4TTHu+vO6kqoi01ZFxT
	 Pe1kANieKPMduATx80tVeHdKiji1QdlPKdB5Z6Ga0uKwrs8P9prrm8Bcn2kSTDpNj0
	 AHFQxHimSWWjZtJXgssoVfZNuO6voGw0ZZXn2tahV6cIneaA7h3sywN+sbKcVnmRE5
	 aJ4gUiYXrhQyMk/6w/amdYmr+aq8Ye5YWhGg5fUCeJaO61BI2NOAoodBk1rg1U/T1i
	 uvOZSNr/z2UXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486CC83030
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177019357.12661.4315753330145287644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212bd115895517e736101692c518813b73ad4b7e5d6152f3a5e7bacf98e8ffb4
Date: Sun, 06 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751770193
