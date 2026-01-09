Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15790273D8D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767938034; cv=none; b=RPQaMypDsWz659Tk6FH+8zGl8bAOI3kWSENywa6Z2XJvSJfW35+/T4nbSprEKFzqJ7npt1/5Sjg3DU1Gnoaskma/wXZQ135brLUkKjXL9c/SJOktWo6O4XwZQhw8rlglpPn6UVvz+hWiaJ5kigMuxffkNYHvnoVv6R6ASNah/7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767938034; c=relaxed/simple;
	bh=D9D0eI7bZLQZxWykBYJC2O4nnUrRcvrbm2/p2dre6P8=;
	h=To:Subject:From:Message-Id:Date; b=Rnlc9X3vIcc8EBC63WzeQbprEKIPt3tGp6oAA1ZtfQ/vYMQq5ArMWo+7FixeC+imqdXYxJEhy8LZZwz5S1qWFph1wmwswNCJoPw2psijoOiIvw7fOztstN8oMu2d1DTX1BS7JSEtiWJjdMY02n2YuH2byLrjEqNM2tgg4q5SaEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8fwa0/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8fwa0/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC4C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767938033;
	bh=D9D0eI7bZLQZxWykBYJC2O4nnUrRcvrbm2/p2dre6P8=;
	h=To:Subject:From:Date:From;
	b=J8fwa0/e88Zal9LwIdKFwE0R60xOTdj2txe1u/otJBezxUPZUT7/gx1fD4B1XM8pT
	 3kHPpy/g2IaZTVxmslQdudz1Bm8+6DQZDABTFQeWzaeWL5JusfbxYPCPddFnLZ9Hew
	 wKmaN9MQKFGVznP/W37BqgmbS2LpXOYPIfBmmCdewCAL7iWkiIJ0B6b2AppqQZDeGh
	 Wgn2XebGPwyBgPO0BudN/cBqG/Kl2xyqzGWfSyfkhpFkuJUo/X1Il/u6RwGYloArGo
	 xalCDV4qeAeIllIYiNpL7CjoCCDIiCkh5MQ6CJ8y9zP3RjE4shkVnKtqZiOaXcvj6F
	 iVYh3AOsobMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92AF5D232E2
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793803358.10074.18250366188575667836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5971aa9cf2dd766be73928f9b4291b027f5d7d7caa8abd945f3e7a8c34e0743
Date: Fri, 09 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767938033
