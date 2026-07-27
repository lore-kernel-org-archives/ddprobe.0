Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E2F3A0E8B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785120634; cv=none; b=glui+w+C2gCdL4dKDuVq5BASBfjLf1/aiOemU5mR8t0kJ2FHUySH3sKL8c2Hz+BueXWgBinclmss4vqMfj7xG2+NgotKRkLO9IHrh05OgxSK9H++laZQ49TG4n9fsgnML6YFkZa0ACzbXBDv1pFAHUDbSUVSzbuZa9u+nlrO6wU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785120634; c=relaxed/simple;
	bh=zkTiPCMJUlWmYG4Ic+iugSpqzhYoKAv1Gpx8nqo+2/Q=;
	h=To:Subject:From:Message-Id:Date; b=VwGNIeZ/HYKJOVW1APFBEkTtUw3yE8uP/CP1lWfc6yCxRVPoVB4fVJdvYdilCzkIbQxmlAgNREshf7NIB6yxokP92+AwgolfOSOdRwjaeR6qxTzDKDy25yEMxKiwZDcPAhsRmGRs9WW782SMJ2xn9pqpRwErPo0IGYky99nGBo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVJnU3ge; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVJnU3ge"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C95C4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785120633;
	bh=zkTiPCMJUlWmYG4Ic+iugSpqzhYoKAv1Gpx8nqo+2/Q=;
	h=To:Subject:From:Date:From;
	b=aVJnU3geMHdBZEcAuVFL9vOqPSBawyHmXYVqJ22FJwSzpwkIpJjEWL5wfFzNwco5z
	 UKaTP2h7pJAGCwPirZBZPfON8jR21wGHxrUVXATADSDVgooV0UASGFHqX1XIEL1OjV
	 ZRdWDCU3grL2JSVD+r0GC9Xuq3J1W/H5s/EFBWl+V5U4bfHiR1E+13nnR6Tyulx8fp
	 Hf/0OAzdBcac/PI9jbfXQds9bcBYb+mP3Jh3p8t2zzDtLNZ73RD3FmnAEz4VegDjPs
	 kNInLQu5BkXPuMtipkQTQlZ5gvPcn6Ue9RY1jj2fhsXu5nrZ7bPxb6my2FVXzqYquH
	 28+uZTqed8VBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8815C53200
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512063368.13577.17998938082799778156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a3225e90b68ab0855c4b65f1cfb2d3ca9bc2e4b8d89997f60cfd2d0835ccd2
Date: Mon, 27 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785120633
