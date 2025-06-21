Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6721A2632
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750505394; cv=none; b=EfpKS5myU3O7SHNBkcxcB3kktJIP1ucFWiL7Vy+YwpaZKl2p3+Q67FnL6ps5VtARroVnhlnv3EM2Fmd8pOQnE/eHLadEw6WmN0MqYaa0jefBvOc3ZkvnFCNIuLd49uY7SlKa5ktrSPE+MMjccsfUu3otEECcndrRljhWWL5mOEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750505394; c=relaxed/simple;
	bh=ckZPvvo4VOajVvM0yUNxlUevvrahkVz2C6DnSdJ6KK4=;
	h=To:Subject:From:Message-Id:Date; b=VgZSVoenSXXphdM+ka1/b6FsTaRh8lEnVCwTMuqlRfRG9C+YAS62g+KLgslQaXODLB9+TGbT3Ulaogwi8sztERdwx7IHcQl38ptPJ6zaRMZJ61JZ8GsZXi/cWaVOe4F3xqJlmbUNoAPr+GRQDxpJJNwUPaqqrwe/ElMEjtDuans=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYFomBsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYFomBsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750505393;
	bh=ckZPvvo4VOajVvM0yUNxlUevvrahkVz2C6DnSdJ6KK4=;
	h=To:Subject:From:Date:From;
	b=WYFomBsABTN4puavAU3YvLe5+ODVp1uv4y7Ie+3trLzGlfhbkAS3Fk+/QMiNBdUbL
	 RXowLa8sbJtfqcdDrWN4rFgS2l8wA1Dd8Kv0HFTyqN8pdUA6ccoJNVuegBGFC8hN2a
	 6Hr2OuLp91QSxgddTONKMTL9WS4Nu0FoK6uYXzbP3wQQ9M4gOdmwJG7tQ3xnyTcMIE
	 DiD2Hw+dU1qZvVTwM9ekebsaFYU4P+sO0g/Fs7JP4eBNfN5jEnz+nLheqSzii0vYtX
	 9MV+uUGtApxGUkZFURzgqu8/r0Q83yho4suNbMNBuGFXMpONRi8Ju+DUY2v6zNciml
	 3KSAdzOHTVkrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFE0C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050539357.17537.3181692645322339397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51453f5044705255b25505f84afe63f00cc4d3c325f3de903df765f68925fbdd
Date: Sat, 21 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750505393
