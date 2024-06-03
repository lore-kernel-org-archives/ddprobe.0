Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A6123A0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717442723; cv=none; b=jPdypy5msCDeY72YRsX2EqwFXcArc+ej5tst6AgEEPI51wGhVbptpwTBaLI7HQ5oUyEHuvSOi62fFwBl7gFPmtwBVJV6a6nAqtWZAchQxxtKGxY7NqZjkeY9Ln0MC4+oBLdxe8IM9YjvTTGoKpwT9oLRbUBup3ILSHK7ADoPCeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717442723; c=relaxed/simple;
	bh=ho4fo3Zc1d1pVC18IH+Eag9YiCnyVqNoYRukurjsW0s=;
	h=To:Subject:From:Message-Id:Date; b=gztw161cjcLs6mWurRhRUc2GJBj9AJZjsCD1bvw2QDde4bBbMIf4wx6aEOLoHGGyVfKqb0hD74je1UqCdtJpOZnfy6WyFxaQS9/o0Nx82PvdPeTTqp6jfX8eKQqwD4jh10WIKtF694++3a54kVhqwSaHN0hNWqWwPOUmyghyNbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF6id1cv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF6id1cv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E70C4C4AF07
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717442722;
	bh=ho4fo3Zc1d1pVC18IH+Eag9YiCnyVqNoYRukurjsW0s=;
	h=To:Subject:From:Date:From;
	b=KF6id1cvzfvyAzSbUX9obiLCehXddwcVoSrKDgI9CPuEZt2p5tTOjlQOAZ4BDg4IF
	 fA/SiNH+41LIJ5ODk+mZp2nkabSaZASqzg3wDCK7F28nv7rZZQ2DXKayr5UOyVYY+e
	 EWl3mg3MvQiqAvZSPagOXhdm0XXiBnG5lfe3iFwmrjyXBO+3IXK37tGnIrVp27E9q5
	 NrLllnUe4JY7h0/eDg4pQnLrpKEDlpbDjUObBcUWo+Chb/vPitAN6Z0YezL9mkcwF7
	 M6hFkJ/jtZEKkexOKDleFF31/LnC9z6uYKPZiGpf5a7PNqjrrbnGeV8Do4KjuECcy7
	 mz0dStoffbqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0684C27C50
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171744272283.12441.15647754619854064966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f37c4c976ba826c3d348bcb4ccd799258991be949208dfcf819c278e6e1f020
Date: Mon, 03 Jun 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717442722
