Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCCCB661
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748237394; cv=none; b=HvKjxRMICwedvO3XczyUKENMSaauTLVIjk205FcEXDSNENrUcbpofgtyRyrJzXxLeIja6bEdnRIzpm6qax1c/lH1cGelCkahH971MNiUzMwefQvgtPNrdFSiTURsvYzQ8ha9KuTkTFXY2F76azC69MidEialh+tXwYSXW7p+dz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748237394; c=relaxed/simple;
	bh=+hzWYORlj7yLXeREJ8BN67QXnO3syi+ZOKLAU5fupW0=;
	h=To:Subject:From:Message-Id:Date; b=HNjMvHwuyxEgw2zJAtMYOokidrQBEyh/x9v3mb8wGtrWIoLS0K2jF/JzGdFTTIzj6R3uxTPuOwIRjWMSzUBc6P9Nd8N0MZDRN1i3AnlMJ+bOkRf9VluXArdyHCcge1RTwoishz8oIW+TDOuGV3wn1O52UZSqQXt034pZlJOSSYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKJhmu5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKJhmu5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB185C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748237393;
	bh=+hzWYORlj7yLXeREJ8BN67QXnO3syi+ZOKLAU5fupW0=;
	h=To:Subject:From:Date:From;
	b=DKJhmu5XvoQJLdKNNgZcB4WkqnoHpz+7xdwlIMP2tmb4b5FaqUjYF/5EjBObvDhvA
	 L2oEwmjIJhkUKC+vWVJCoF4xAkSMRiOZHTVM90bEBvrM3lwmAcsj06jEyEkfOjM2Ox
	 6Ttw5jadIENXEK66rKudtKPWrfxoMsFfMhFkoaDecQXTb0eref/3AuffAT/nEGZ/Bd
	 ku9UAesa3fF9gSCxgzMcrEDPywUgFR5G2lXewlxhSB5Q0JmIalmjbaifugR6K0Uwnr
	 cPDrBomlboilPb71mixznWCgtehE5ndqbRvaPFb2j9un0XgD8HVHBJ6eeINyUbEGiY
	 GaOELgaNlJOTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8FC54FC6
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823739357.8850.4228359923461667585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c7d0fa8be3a52ccf67bba8be0565f0f79bda3f7278f06717579172c045d9a0
Date: Mon, 26 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748237393
