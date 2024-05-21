Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C836134A9
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716258143; cv=none; b=nWs/u6+DDQwIC8CyFMTVmUTwQWLd/MVdQ1h7oiZPKBpm5mNLr4VDCf5e1C+9Poc60YdnCFBVvntiVxQwA1Z9c0GetD2IWv5xgPodpiUf2/LMb8eyRCErW0lffHhcI+SHYbyaJH/sMxXeMT7/DFTzfZuBOMDMfRg7pDU+mXHKIF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716258143; c=relaxed/simple;
	bh=2qKAoTw6JsF6aX9US1NdsEHGhhWG93fvez9LYRm2kgw=;
	h=To:Subject:From:Message-Id:Date; b=lOPW6TasLalIapPTIP9KJ513m8eNgeMDNnKwEHApVjcWqKm7u5bg0nqqxg70zf8jZsy/MN/6wV3kkX8GebQ2LzxPNFX899FxWPsw75LH6NwmkEqcWVRb/qDCbLpLgz+rC3n1KBkL7/ev8mskTtKOb/+//XuxwrX3rgxJKocu1Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obwqH/hK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obwqH/hK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8030C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716258142;
	bh=2qKAoTw6JsF6aX9US1NdsEHGhhWG93fvez9LYRm2kgw=;
	h=To:Subject:From:Date:From;
	b=obwqH/hKshAqESwtm9VzNe7Fmxh52QO2GVp4xv+eIW/1QFTCE1CZd8M1Ldtn2nhEr
	 zIOxdaq5pCKc0jBmNOKNMpWyhmEAFegHee6rqEcsqPXY9j24BF7TbMMvCzArs6lDxc
	 b0YQ1N4zYqYtnqz7vNxpyOEs+CNxXxRWs5MVKusuJU0dm97wtcRSx6D+Mx0i/10saO
	 TxrrhJ7ofquxOjEbd8mTXgKXJxfBCgKVz5IAyxSqtOy20a4cWNM0Pb4yUEiKxe2C05
	 OTY5AF7e5Mhyx+kXEvN3ucjOlr/FkAKo262w7I0YX73PHr7r7AFYPTXvzVa6gsG0DO
	 J1Zb+muQqTWBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3979C25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625814277.29847.2631575665874755944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8436f9ad4c8c696dcb7ead752a64d4b41de565336cf23647631a06762e5f4ee
Date: Tue, 21 May 2024 02:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716258142
