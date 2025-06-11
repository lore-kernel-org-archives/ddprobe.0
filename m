Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE56D262FF8
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749637793; cv=none; b=Q0fFaFOHaQbaZOUN/GP34FRtSVvsqt7QgSYbwfJH9vBzsoOMUJYVfIf4skVvrl+/r6751+t3/Fms2p2xpsga/GVj6FI5oSJ1s9jbD3oTiP2hDDBkiBrPMSpTjYDZ4xxg0pdXY+vGThztaZbX0gmpHtQbVq4yftEUyjBhf0gX7cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749637793; c=relaxed/simple;
	bh=l4/3sSHI+/8tnfkSZF5KXbt8mx/elLjVxzni5V+oy1I=;
	h=To:Subject:From:Message-Id:Date; b=sJgiOEp/LCgtEfdkvD2YU8376+mWWYOASv++srlgoEhMfFWZ9/rDIowyAHFf9JyzWg415Kkqv1ejRgfNmYv67J84m7Dg4YVhprajPn7wrXUZ5ZR0XOyKawG6QE/TdSAwFxDe7pxBd96YLIEOdFTC0FFMrEqcbGaXdvwastjl5nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJgVsBYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJgVsBYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D3C4CEF6
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749637793;
	bh=l4/3sSHI+/8tnfkSZF5KXbt8mx/elLjVxzni5V+oy1I=;
	h=To:Subject:From:Date:From;
	b=gJgVsBYI4qzDfbO64ETFoYwhKtFXv9+6za/ounoDj92QHIx9GryeJmMOWAXVnjns8
	 sdyy2OUr+rPnKGRIwKUjgQcafyavVqzb0piOYiO9w0vc3DVximjfG47UtywjRKaTPc
	 Z3In2/Avrml8G4klDoBLXTTNiPoHnS/BiLMjSAE2tJ9+wI6ofpWGZHLX4h+CzQid3H
	 a3xbB3O50B4o0QJvuPozj9j2bVlf3qV0yESHG44qvF00wkOmR79Jzakq0zPErg0wYQ
	 7TlnWWyTC84Nmeemj15asJLot+JD2b2wKgatE1CScC6kRSS35gMt+BsWxiHi0rr+tc
	 zm93oT1k9JYDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEEFC61CE7
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174963779358.25661.12845768459421195856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9a89ebd97d359235ed91d1d7939e3b5a26c30027e6be97fdf06cf0cf7b518f
Date: Wed, 11 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749637793
