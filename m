Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A191E3DE8
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748578194; cv=none; b=ov49UP/fC9dX9Y4xqBuSt4QHGos+dVaCnwXbnUrpU9KpqyjbKM+7e0UizJbswmn2wurwVBCH36O1piq+inSfpPtYnzc9uZkPq0UcXXEfUlQzbc5Gj3dYUBMhasllirsaTtUu35m81urm3OupqUnizcXCAgoz2I82SO5JedB01yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748578194; c=relaxed/simple;
	bh=pgeKEEfP+jZcgOqdM0xYYnJ4lF37B+m2pJom3uLqUbw=;
	h=To:Subject:From:Message-Id:Date; b=pGA6bdO2gHm/6rH687VmHFGhjE3zx3lJD9YqqATLdfFeXa5dEJoBWJ0ERCiyQY9MRCB0Z7iIfmpgtjYNdkJ4J4iAgZ9RHZ1pEoSiTp7gqf6RY/NKoz1cO5uzWt8EJaHQ3zU40uR6/krnPaz7/N89CTrMM1XHbAzUnQxNYMKjbtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7sfayts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7sfayts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07DBC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748578193;
	bh=pgeKEEfP+jZcgOqdM0xYYnJ4lF37B+m2pJom3uLqUbw=;
	h=To:Subject:From:Date:From;
	b=p7sfaytsoGGSqu/kW0KYJIDMztAd0cLrmsn78FU8yNBJz8LQEJvltB+QkTmI3yfKf
	 HDXVLEWvpqRqQgvCvXmPpQUYEODIo1l3SLBkIdRe/yX6lZQW09e05qWI1eTPR4V7jh
	 h+fqoN1SQX3zN1a3hzzyhFT0HP+dCPw8GXEsL/LixieDrSbOoGet/kXBqLfnoSmjYP
	 Rqp3yI8jqL9p8xG7CtO5xc06gmY9qpfeXbl5A152xb/aUI5dQ11KTjqMxSAFimAP6+
	 qEUjTib9uQlk2DmQI1pWZ3GmREGM0+sEn9xfb47G7lI3ddZntKCPi4NuCdQPLZKKoq
	 W1WyZQ16gZH8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FC7C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857819357.4865.13624388322639018078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a4c50f724ef686b093316ff869d6cfcba68f3969adc2d52ff970fd70c29948
Date: Fri, 30 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748578193
