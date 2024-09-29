Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4104C33CA
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727570754; cv=none; b=DnEcAUn7pzuKwN38/oyaF7+1ieiBlnDzUE7WsHQwc7a/NLHGIWNm8oDRfpN3ZdvzKQZnL6v0Fgr0rQdkunanl80TnRpKPev9TePJ4K/yk45GZeCOpQy/8tUA+1DwHfF8GsLo9OBN/lNYxlw5rsTe3IM9mW9puMaMInS45QfylLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727570754; c=relaxed/simple;
	bh=f/MUf8CGQ3sqGxbKFySVpw06LECLG77ND7xBNYbVZbI=;
	h=To:Subject:From:Message-Id:Date; b=Nka/qBhBrmOGt6jV4xvp1xmJS2+leY4ESD+b3+E9ALHBAdKlRJ9PMcpm//yiwCVtKtj/aR1TpggHy/vxfZj519XXLKvUJ9nGWHaUs8hRGDLFa2xpAH4ae1P8ZVG/t4fwZ5d53xkaniMzJGg/oU3cHt8LwJycZRDlx0q5E88bT1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXyd8+rP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXyd8+rP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC03CC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727570753;
	bh=f/MUf8CGQ3sqGxbKFySVpw06LECLG77ND7xBNYbVZbI=;
	h=To:Subject:From:Date:From;
	b=CXyd8+rPVzFXBaL4YGmnt4Evx4DeruNTCKYk67Wv/9yxnQmI+TN+BQhzh2/oW/nfW
	 DI+t39LcVnglbTORvhvsHP/qXMf4e2DuBmXUUQ5MYu1EnEfrcZGibzfNjIUeaYVEkd
	 5oqmM8SngKdqV3wYsxJSNzwe9uotPA4YM9z/tnlFGKI9wumis/dDqLmMT6hzzETdQJ
	 QHEcNwuJvDtCFa8GYy1/lyfwz7+O/YJxaqufsiVvnDRLZBACumdvwe9ZpGdAjlS3sQ
	 mfZfBn3tvnA7Koogz7mMx9+1g4XxqxfeYXChgr7+gvM+mPJ98ohuCxbX5u2CsSMXpu
	 AjNMZZBs1LAqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68C0CF6491
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172757075363.5150.10089463231802713497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76140a1dd0a517a1e42832cf203058ea0d59bc23df029d7fa9d6cfe98aa4de02
Date: Sun, 29 Sep 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727570753
