Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3070045948
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759279794; cv=none; b=Rsp50uH8wFpBrC45IErH9U1cwLX0/kkRYDpRcpUr4xhT4+stMAXwhaIgPJDkBeWnrzGM2owqnQCGZy6DlRbE3uMSP8XogBJbzzrzEsQoPJAkZBIAsqgUq4IJah4dc7AesmMtTwmW1kbw09TXbRGmsPtkC7YhzUke7cQnWlt8i4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759279794; c=relaxed/simple;
	bh=DZz/M7wh0+NSKSTjZAUePy+hujV5PbtmbMY0OGF/hO4=;
	h=To:Subject:From:Message-Id:Date; b=lwYnK4WA8dZ+bEJaDIhlTVcVXDa/U7zchI/5WBfu2IBbG/WYSU0kv45OOjtlyb4Id+WZYVgE9/fFNWlwvpGPkn3tOsr7+wMCTiOGsnKz7boWK2zinyU0zXU63PvyT8FVRE0oIft7fUSv8sQ9ngWdtoReCyEP18jnDWJ4U/A66bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUQ+8gAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUQ+8gAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED88C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759279793;
	bh=DZz/M7wh0+NSKSTjZAUePy+hujV5PbtmbMY0OGF/hO4=;
	h=To:Subject:From:Date:From;
	b=YUQ+8gAodONLcJ6C6KaDhibFbVClHJv19g4UoM6GNzd4tP2zx6HwO3aP8JabV4pw1
	 w5A+Zvg8sOIC7YbBCKgNHpXsr8Ae+QsFH36LNW9H3w91m73sZGIdLwsXTo+R8tTDYN
	 PkgdKFPfOufAAP/xRJq/HiqrWZrp/gEh9pzVtIC+wovtUDm2Q0bCGUHavmE/m1okdj
	 x24EJUuBtHHp8WFAVlZ9qMNg3RPQ5w33WFQ+E3Q+c02h//FRFR2gH7ux8BA8c0naO9
	 vFGN0YxwUlLy8bVC9u9RW9P9XmFpxdXGUMe+pruePGtCiBi8mSkfHTZFIcMzdRCfp1
	 8ZFI9ELnuZwug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B0ACCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175927979361.5149.18125904423426672866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e82315e0249e07c4860b1ee632e0b43a0c8a28ab322c4e86736b11d399275b2
Date: Wed, 01 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759279793
