Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EEE3D969
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718452103; cv=none; b=DFqpOdiL9EbTQyY6C7XWAzavk0MbvGzsqIEV1FGeaMRFWnowytTOD435gLMmEBf6wQs4YWP49lGj2KtxyQgHg51OMQ5Oa7Wk3GWuVrqTe3rUyPNfVuYbobwQe8XmrsRSER8cpCyoOTvCH43qfseKnu6WWQ+yamSxHhDsh0qtC5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718452103; c=relaxed/simple;
	bh=q2wDnbZUm9TlzS/rKuHqp6vuSpPg0RUP5fuGfg8+x6Q=;
	h=To:Subject:From:Message-Id:Date; b=SI4QcxR1YoHHUhis52cvw++MJp8WNUpd7NEo5yFXwM2vQLEKHgWK0+ueKzv88PfWiKag60eXWeuDSS1MKU0mM0PfDZCsY+FEqL2hSPKT9NO6PNaZPoTrdJWIh2AEd8zQFCw11ML5mzMhalJLpClAcw5NEgAT7QUqr3s4PoEmUiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8UY/XX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8UY/XX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 019C8C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718452103;
	bh=q2wDnbZUm9TlzS/rKuHqp6vuSpPg0RUP5fuGfg8+x6Q=;
	h=To:Subject:From:Date:From;
	b=j8UY/XX1XMkTX4xbC5klgjhTdY95sOIrzgtzpqPwGlYJONDH42guhN9LUdXQCYNl1
	 20hhTB+ENvbvtj1IfG/S2V/JCQ7hpdbv+NVE1k/3xBWHPvHH7pK0n+FMziVvoM6HLL
	 fGNrqoHFARJUjSpnOnZz4LdUcg75r+onM7lzjphcSokAXcV4Ozxp0h3eo+xTUw/YhF
	 Y8GOntRldQ+KAve07tQDzc6owhK0R3g/EH/U6pQpYgpUv1CYdExegkK3og5yXVZSN/
	 Hez3WFhOnIzR2NrHkv6FbMSek1+YtER4uA0dZbK5sxTxXklUE7DqTLtu1GnK8bWUPp
	 hw8VuFer8FJtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D90B1C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845210283.3299.12644501301610716746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bd42cf77e8a456d054acf7987dab17045fbf6a48b7e890f09be5c0d173c6a8
Date: Sat, 15 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718452102
