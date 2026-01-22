Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758693A5C1E
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769121236; cv=none; b=oSWobkCUT1ua33ew7kiVKqeIwye1lQ1rEDsBcjBuYkQDHuwCbrnntDGsV/RQLeb2uVkkeWobCgYpj16Dtn86tk0vp8eCR0idMe4uqJW2zOKdNSMyu9rsvEe0XH8Kc3iXyPAEcJx1tGl+B1zRzy22L2UWUQu2Lmf1BsitvtyP1+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769121236; c=relaxed/simple;
	bh=7/yvMrAJgZBpdgdG5UpXDTMNTma5xoFDWYaMC1PaZy4=;
	h=To:Subject:From:Message-Id:Date; b=pqhZ0sIvAvlCaxgwY4wbhcFsYylt+Rl3eAn8dP1qbMxCyMYoSyM/ZbnCXU+hdP4wTaecLneQCHzF4awTal3fniZu3s0ij+jDz5jZrm4cP7N8nzZAb90J9MntgledTPyxoWsYmG8EL320tmRdh5hNc9ipYZg4ITOiiXvuSbZ9TRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kEiNOr6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kEiNOr6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C7CC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769121233;
	bh=7/yvMrAJgZBpdgdG5UpXDTMNTma5xoFDWYaMC1PaZy4=;
	h=To:Subject:From:Date:From;
	b=kEiNOr6DBe8D5/ck1tgeivLh6OI9rh11Xh2fDAYNNjW8MeJUPbDcHJqTxQR04+az8
	 POKVuCG8uDXMNnSEXK3wZ3tNZReZkIk3M/0MkE3SmgbylV/mPkzrhpgdWBpJGYzQ27
	 zj8a531e6uNbUnLcHUtNG6YcTJM0YzRosTY13mRlQDzq3Nx5cXCRLGGWnK5DEmaFGe
	 r5dds1K8nxHHprU5Wz2AfXNsHxXrgmAeQaxl0hMpyNbF0wg0ANk6iNU/pggQDBen7X
	 whRufOYExiXiZzT3eoeycS8DDducgrow9pLOGsmcvExNnw8r7SRN3hyLXmldpEuriM
	 OQ4xmPswE5Ulw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92657D6CFAA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176912123359.6730.11150228321631645324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb936f96deafa40dd4f7cb98a39a356d968a2ba61e87f4dd5b61c27bf366e27
Date: Thu, 22 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769121233
