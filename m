Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305073DD508
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782323854; cv=none; b=eka0wbj+m+o3owkN4fZguHsWGd0t/29ScgTYVjjNNRIElIUTNVNxPoTpPBjF9pBNcn+pA7PPi2O57g/OZf7SNN6gcpWl66wjnOn67oilm/kQC5Nl56Mbl1etAliUb361n4kRQChKKKKs3DSqgM1gDkI+rrGTnrYNIq97uOgj4gY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782323854; c=relaxed/simple;
	bh=/hKWIGAmnewdGDTnvN76TAOxtCGgY2mazgZBvZUGBJE=;
	h=To:Subject:From:Message-Id:Date; b=l4ctGTCdfx1EkhxoXxUDJXsWxMQpjei/b+Ypx5GxPF1SrN8mTxtFcAYNIZ9TZjBFjnLvvQ8JDzTWAPo7fH64q8HBRT6ESgJYyHt5ALOHbgq63MDi3tRLfFLq8Eap24dbBituTBXfB666oH3dXvwNMu1bmZGeDDcvtfGnz8TR/cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNK+U/qQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNK+U/qQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8C8C19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782323853;
	bh=/hKWIGAmnewdGDTnvN76TAOxtCGgY2mazgZBvZUGBJE=;
	h=To:Subject:From:Date:From;
	b=dNK+U/qQwr9oQlEQruSKPpfU8qhdliFUxoKpwkyacv6e2pcKHB8q0jbX9R9Ws2P3M
	 hTW6GfhoL55tTOWVstAdCHBgNFA6jsOgAO5DWFG9rQTTKB0gpE6SmSMHbUDHM7MP2Q
	 elYxOk6OawaGgMth9ACEmfpet19mJQGbnEMeRjuTLHanMqByAvZAz5qC1pe/BD/WS5
	 /naCatKCwM0Spv6ir3SB3L+MlOp79U+Lnxxvz2mZG6T3yg7EqMgKz+ObfS8LGvn3Rh
	 InOlrtAaaPtw17ywQYltTsCKdZncUZUJo0sPvXrCQRjAYLmAN9upjnjMZF0LqwN0vZ
	 yOj11iILy9b3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC57CDB47F
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178232385371.15655.11494526529671064275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22662505e670342c639c00a17dd22e7dafd4ab6406430c376c05bd671c132e1
Date: Wed, 24 Jun 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782323853
