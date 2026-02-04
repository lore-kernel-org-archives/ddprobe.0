Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F874199E89
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770175434; cv=none; b=Cw9zwj2lBvEqlmOvhW9z/WS7qcNrkI7AgNaKUthCmb65t5GJkoqL5zUqgrZPXORF5KGpg9yihhfTlcYQJGXvmfcTRI7h3DCE6uHmgkCscuf5r73L2HuS5VwaAHgx512vYjz8s0AtKBmLHxkPHlWFdX8r86lETcoc77bu+bKYTNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770175434; c=relaxed/simple;
	bh=P3zmXi6OXTQnUlCTLMAn4gKiMsTRse9B6WEYRBLmU7A=;
	h=To:Subject:From:Message-Id:Date; b=VkRicTlV4mm2NYlAUc+VUPLzTTlgKoQtWrhRPND8PUYqkbG+HpmRWW6dcg/Kgn3YPccgrLt/VK730oiKBRDfqRr6kZZj6/UwU+Wrf+Xp2zxEq9ZGZEM6WoSzUSUYOOn3cUBwKhzqqbbWpk2UskToFhtbZRqj5P/SSmyxY8TtmWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGjCjkKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGjCjkKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AC7C116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770175433;
	bh=P3zmXi6OXTQnUlCTLMAn4gKiMsTRse9B6WEYRBLmU7A=;
	h=To:Subject:From:Date:From;
	b=mGjCjkKaTCSnNl60GyNHhdJs+DCB5rSc12l2g+duy/Q9VZzsb+z0jBLC4zBd5gNr0
	 7TdLF7hmYoW3MpRT+J32B/dpkkrKIkqDnh4QXl+HyXFhsjZZfHy3uHbYylIr2+vBg6
	 KNH6RdgWwFSvw60mRZK0fYVHiiruFdvQQEnBNP/qWqiNhWpmGSodsI7PoJqZLXFHQN
	 e06rjXRcGbwIKAW2IgVonmVV88bU/PjHqsjJYszrayYHAIIoadJHfYUr7aXOyNA46n
	 ESISy7mmPbiytzbJk+ph5GGX/9nXcnX0XtBIe9Z2BC0ztGh+LRhqSxqYYr1tXdw9AL
	 nHndVV/xm6xnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2DAE8B391
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017543360.7093.9976530200333144807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1fbcda8bdae405464a659e53e4cd18a5ad34a50c8802d2cc52d2ce42e1a7fe1
Date: Wed, 04 Feb 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770175433
