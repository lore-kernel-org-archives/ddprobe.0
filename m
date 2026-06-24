Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0D65C613
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782278194; cv=none; b=EjjoXJBD0jrZuSmzaWdsqU32LmrAjPOaay2Mt61D2/SJ0YMDj6hbrbCeaKCk6DwosZBwUaFziKdDpLi1ZUW42ihlVO3IN074d51OvBujjmnDsWuqZEqRXvJXGGgfxpWA4aMvySnSO+s7pmQdHCPJ21Po08iMr4Oxxds12rVQ3+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782278194; c=relaxed/simple;
	bh=62LmtyakvH7ADa+pEMlbr35t2iSoF6qObl0S6O+VmuM=;
	h=To:Subject:From:Message-Id:Date; b=hN3/GTsA+2orcRQ35SusTJ+jBjswkDcEDG2YwfAZnp9HiVJTS8TvIDHrgWK65wgNBAnhmyXDcBHHxTGs4VO7Jt8TQet/W/ozYPtrqns8SN2my+pBk8PHZjxxYp+z5z9LeHlT1moE+IZbUYyGabc/pe3JaGlTRfefDa5zAKCg0KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DN2l44w1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DN2l44w1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FC4C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782278193;
	bh=62LmtyakvH7ADa+pEMlbr35t2iSoF6qObl0S6O+VmuM=;
	h=To:Subject:From:Date:From;
	b=DN2l44w1lUxCqMijOXr7QijyhdPkUWxqxSJzXOGG28PG6i4XSaFHrIrNIStofND3i
	 YaihsSPMNXYcbijmc6GUm3PI/T611L1p2L3HflxtxcY8gH6UboAdtpc41H4l9ehAq8
	 ZTy6MC3QKGEmh+0sMatwsgPqnJeILlG/LEUH1fKp7gmwwxfOCe6FXbr0b9JRb9/7Q2
	 T/d4WbsfKd66m41PXTlz9zp7F4X7keHpFbcIJ9L+k8IfMJnCscuKJa3/4b9tQOMLwW
	 Vy0SlHrKkkmdA1AUZ7WX3yVR7rEdCbBP+glq7w2TWQjWJ34OfSvZym/UhEX7JYTQYV
	 9S+6T2dl2cpXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40CDCDB470
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 05:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178227819372.20490.7901722826304328243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c850825ed51e63f0ca0e9dd65f0468a0508fb79525469c2416a7e44a9756445f
Date: Wed, 24 Jun 2026 05:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782278193
