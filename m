Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A7C22081
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733041554; cv=none; b=SSiS+jlNnfAXrxA/tRNJvAht5Aff3gYsTxdJ/QH80awhXCS5h0gwXAwPXGdC0MI4RKtLL1l38PrVXx8bH/b9jzerJxnMHzZIxnUxG+lnGvFunol5mzWVk4lspdFXwOyFJUysKSwukGRLUj6COBt7C8p/PRUml0kDQ4aR2p5Sjqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733041554; c=relaxed/simple;
	bh=x3DhwlfX3SAWN1AJENXabLWL8VjM7snxLLDENhaZohY=;
	h=To:Subject:From:Message-Id:Date; b=jntdWR2n01izznGTIR2s2O6ssSwtIwoTe11qrO0UrgU5yt9oy+3id95P18f8y8QxAzlRTexOPy9gC8ZKXXUtBuJlLrTmdNlvdtYOPk0N2jK3vLhCcDJZVQU0Iiex/i2yrmD8y0t1SmqRAj8pN8sVj4sSYYLZ0ftB5vcjEAWnDO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEsOCSvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEsOCSvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B671CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733041553;
	bh=x3DhwlfX3SAWN1AJENXabLWL8VjM7snxLLDENhaZohY=;
	h=To:Subject:From:Date:From;
	b=SEsOCSvlunLGQAiFaFun7ndyGv7Gkwfmtcg7sL7SCTyrpaRg7myjyAw8dAmSX+A52
	 oHXBcRcFhu8bCFudJLCIR3YwkTmsgEN288poNjZAlTTkP4E2paWY+ri6aVJvKXYuVq
	 0v9s7BrYRUPgs0TFjLMIcnyOLOCNKlvtiVJ3jQwrTg0kbhTLaCPpQATVhNJhifXUx1
	 mwMvkhonm+DkcicoVehSdGtReoEma2d5ZkiajOtYE+oHS/68/mSk9SO9/V9CgIfMLG
	 85bH5lFqIBZyamfZ+WFRiO9W9LQAG0BKgUHfOyYGZ38Lq5PFie0P68z2sIFMpK+8Rr
	 q2iS19+t1AW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD35D70E0E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173304155360.13851.5213061191298035885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9c75db54732045a97b2afe10979d4cb01498bb0426168d0be6686a010faa8b
Date: Sun, 01 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733041553
