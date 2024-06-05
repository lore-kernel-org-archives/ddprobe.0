Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3663211
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717606043; cv=none; b=PvimIGNKyFqlQL9jq3zFx9YBks4RVTNWx4zGYRlFVjrvjhY0K0LasUEJuvH4MLmlJf35BFDMbgMolFpk4Q+WyDZQsiqSH2XoBBFI0z3pZa8aT6exDC4RE5DrsaBkSHZA3od+V5yBPrswCpqcu4qSi9A9+vARFalfssZ9raoPl1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717606043; c=relaxed/simple;
	bh=65yzkBextpI8rfTpdGngAR7BQoCNc9sy4hAyruGaA7E=;
	h=To:Subject:From:Message-Id:Date; b=Ks+Ta1RfY06XM7AvofKxdAcVu9S/KDMM/I/pHTWxuimTbNzZ7yI9qJ4XD2Oxdyo7b+IsiQ3qLFm+nDfcm+vXevAJeKvoeYsuSlK211nIrlwY1ujmqWixJDd0FY6lHvRrqQf82r9FKJhK9YWZi2QGpT348DaIlSvrNMpYw2fE6j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYih8Q1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYih8Q1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51B0C2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717606042;
	bh=65yzkBextpI8rfTpdGngAR7BQoCNc9sy4hAyruGaA7E=;
	h=To:Subject:From:Date:From;
	b=eYih8Q1IEyfxa0uQZ3LzQw4VlxF/RSbDtCOaOBGppC4fUW0XuDA/9NiQ4vIscwM4Y
	 7VpYV8wVwur7xHA+JicUqxVkhZICQ6RojxNJcUAe88CnNWyUNyvDQcm78bpjIBI5fv
	 i/G3feMTBXFRKV96CxZWWR/0SoRhS3THm5BQm0DbQD/TfagZD1RIMZ1AGHufcBhqx7
	 Y8upNrz+SK41bCfggJyM9E0Vqv1fjEoMPndL5fQVs92J3fda4Qf+Uh95w6pVEh58B8
	 76U0QuEii7p2pUk9mK4M6RbRmL8ZqBOex9dNf6v3CSyUUJ2AyEjtUjOWAqH2KceznB
	 UxtrDznCqhe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0435C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 16:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171760604281.22958.10074019506829548597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61347d7183e85681814b41476ec449ee86f7c23f64a36bc5b69d7d0ba0944cdf
Date: Wed, 05 Jun 2024 16:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717606042
