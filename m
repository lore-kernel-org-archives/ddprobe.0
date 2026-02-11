Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49C3D76
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770789294; cv=none; b=dUOWqXk/4JpLH9oluxVZFEi9h3GxUmKPDazK/O+h+ygqnBlZROn0P2NwRiThG+CxhNGzw09ghn+D4M5ZK+jnA4t/EeNtG4rLlJan+VWy4dRHL9WX8f5OQ/uIkQgClmft3lg0Tq/H3H8+HohEDQwGkzvYFw+xLCDRiRdaQzIr7ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770789294; c=relaxed/simple;
	bh=6C9BF8wDVvHHeUjmMq2r7ekKXh4qJVW5yKYxELDE7J4=;
	h=To:Subject:From:Message-Id:Date; b=PEjO3NalbkFV9sPW6VO22Hors/Rsy0FQP2h3jcRv3pCLCdlKIkrdnfXoHolbXlbZIy1IQKnxXKYpq/XTw9aZjhH6ve+9jQk0AZuxBJ6PACO7f0LM1bCMpMfDSYUx/jBVC7SgnPqEGWOJ8MIVoeyw92ptDwhiYSUEt9fANe+LyH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXuBmv5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXuBmv5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01BCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770789293;
	bh=6C9BF8wDVvHHeUjmMq2r7ekKXh4qJVW5yKYxELDE7J4=;
	h=To:Subject:From:Date:From;
	b=DXuBmv5Xkag6rH2BJaoDN2q7qnzaci4/kG2beehlxACeftMBvR77VtSB0V9gtwzGz
	 ujR6FTGojumYt6pRXzx+0TynGtEoGdFShi5PynNEMWcNjBbGagoAfB53E4z3YDCIzi
	 b8me8LWAlsSjTWxLx/1DyTGl4DRcK6sTcy8FFC8PFcYVC2m66l0IX6/ziRYjkBNOBN
	 NNpsKWjcu3V6Yskb3OpezAtJ/nDxoFdiDKzylCdo+KBNNGXEO355uendDHvXYofOO0
	 dwF/kYyqyqEoJaxNszkkuUZftjCZcIvJ1tWyRgrubl7qvSrpsUiw0xstA/YFaxUjCM
	 OXBuoUz/6ExHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4DEEB5967
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078929361.14703.7548597307567980552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0b0aa27ec053f9acf40b30bd48f24e3cde912c9020997150f358239c7070385
Date: Wed, 11 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770789293
