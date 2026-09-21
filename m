Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D4D1B808
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789951234; cv=none; b=u4SpUko/dy6vKliCNbP5TGm/G/VSb20t32yimJAxZdO5ALcTqzN24D5D3m7IMddvCbVgGLg/VECAY/ZRPMTU+2nuXB5XRnclN2hSpu9+jeOZPXuyVUR2HxLan+PYeAw/Ha5CEczq87qGjp0iJl41LM4OIUKMeaU2O0CbWTti0zU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789951234; c=relaxed/simple;
	bh=qI7EAy2ny6OXXAKNz6aRE7mSSVwKHHrYkcAC5Cwdi/o=;
	h=To:Subject:From:Message-Id:Date; b=u24AzTen0jFbumIFlwze6L/qLm6TmDgOplI9/84h3LqJExZtwL/4pPdO0atBSp6fR0+vp0rpcnD14qWskw3PVCO68T2SxmkzGl4iwXrT+UD5YJkyUj7NbZ4F/M08HkxQEzwzK2gakBEupHeQdwJfx3eJM/szZRlnYSQsRoDcwhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baV6avrx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baV6avrx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47DAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789951233;
	bh=qI7EAy2ny6OXXAKNz6aRE7mSSVwKHHrYkcAC5Cwdi/o=;
	h=To:Subject:From:Date:From;
	b=baV6avrx3Uoe2iLRK0GOQkFbHdS8ePwCvseCNIWeqHiyJ/9W1xG2Ee4cBJ/4p9Y2p
	 8d87m/kLFoukV3QcaMARMxs0H8/zdHk04q9jnO8iIjP7JT3m3g1rKjmoF4SYiytgiq
	 1+N1u/31HxWw4BU/IjhYeZHE6YwNyw9ZBS4e6HAD489NshctrpJG3RN5XxJxrEbaZn
	 +UOp3aLTTiOB1Bp//Sx28OTgI6FjRb18aMk35YhwG+apM9K5dpzsQgB3yTYPYCVde0
	 TPmW5WPZmO8ukg4JcMu59hv3ptLh7XBy5UHzdMEx89KIq8eevR/113Gjn4ZLokSQ5o
	 TXQgNvKlCuKqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF96C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995123369.20736.1194014627893042178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31801281961f43ff9e3dbce4d0a4fee92b6078984d577f6b69716a3350ecd068
Date: Mon, 21 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789951233
