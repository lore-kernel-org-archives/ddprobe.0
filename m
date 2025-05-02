Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D3221FBA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746178194; cv=none; b=ZY1cF+n7lZoPEF2wIt/ODwm0ktOfVZ4s8cJyDynhapblJb+NPL7K1fnhMs/pQAta71Y+clKTk0Fk4WyDxJ7fSYT9oYU0Y5B/GMRxUHJtBIyvyx27eoQAr+S3PCL7lmF+Fnsjot+YbNi0d8HT9WsHP8HuGpu559m7RyOE8OHjLdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746178194; c=relaxed/simple;
	bh=FgAA0ZUVNGwkXZS/lHTU+2ANhqQJqW36BoFG3CcBsA8=;
	h=To:Subject:From:Message-Id:Date; b=FzBBl1spp1uVdl7k4Q2qoZJdNTtL7IqmWbF4fKM3RSVuj5YY3V73TTRwNeOiAH7U0j6+LeOm8dLuc+VsySOdaMqe4Zld4MIo0opt4XGExtoHFKqGfi0K20SLU+9f77w8ZY82wETV6jCz0lNW2rMcUnqiclPsLM3o894GMw++HhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL+b9RTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL+b9RTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB45C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746178193;
	bh=FgAA0ZUVNGwkXZS/lHTU+2ANhqQJqW36BoFG3CcBsA8=;
	h=To:Subject:From:Date:From;
	b=tL+b9RTqC97LatHaor7VintAnPYe5gKIKh+BjgH4hExgePd7eDpmROKX/nqhtjiXd
	 u7x9vo+J2NZ8csEbptlWieu3POCX0wxIoexxCRhX7KrcjleOz4X57roKow/SmtKvt+
	 dZr/cPHSlwpfYdM6xmdWCEAVbluMjL7lyc0bHe+u/k1FAT+hBWZ7xSriDdQ+K3X/Tv
	 Zsq5T+jOGmU5CraqAXHjgIS8VgTQN6stcJLAhXakJsb3cV8iGuscpxMt87nisePi9X
	 Rg9BCOnreVoeur64+iOYdUVmHsanCqwTI4TpMd2mAss8M3RSWK5Yad6iCt0K9L1h5A
	 vEz3N2TKc1J7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F512C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617819357.17155.9442019178179513834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda296d329cdc81b25103040ace38513f5fe28fd2cd13517ab2431d7cc654c76
Date: Fri, 02 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746178193
