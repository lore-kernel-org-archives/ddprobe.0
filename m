Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37CC2F533D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750232393; cv=none; b=KbnPxBL8oPj/2HVINOYJM68ijxtV9pJHAgS0LyrAufVzHsCQskvVGqp455Sv7YQ1OaWjYDdCtg0JA7n/vEY9L1oyhUKLTmT3KSJQ8IoIJzoTkeJRxUDlwN3oyHey3I3Uk73ro9s2GNIhNPuLDhwidYq484ei0lumPT0HOnNcP9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750232393; c=relaxed/simple;
	bh=KbrlAxNaGqEmAPdhwZeCyhxL/FAR3z9EyScMkMaa9JE=;
	h=To:Subject:From:Message-Id:Date; b=aFzY+wYfQBMP48H4W0IemGwputscoEraxi+e5tkT6XAmJEXInoQjTL3C6TeSY4pE9+8AqogWJG7/2aiWSZSMDtJy62MKuxUYJJZkGz4oibawQ5flmRwgktEgAqEc4qZxlIEzZpAZAGZANhWfKFS+/ez6lXT7+bUOZSpNok+TDOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAeV+s/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAeV+s/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9272C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750232393;
	bh=KbrlAxNaGqEmAPdhwZeCyhxL/FAR3z9EyScMkMaa9JE=;
	h=To:Subject:From:Date:From;
	b=IAeV+s/KITinoguauR8N28QD8FBR0gtGgONwMmeWcgNbhCTW0iBu68HsRVBVU0wKd
	 429dYlLpwOGPplStQPs6SmJ4Ojua394jqVXBFYU+DGsztZjL6R2YTEyokHWSr0dnqz
	 QCqCoDwHiVdc0O3TyLLpiuTVHDgo3glL6tk6N3L1v5df0Xv1A1SGzhrlPBn8l4T+4z
	 1BBbTUb91h+IMnH20NJ+CH8B1mD6KHfNmv8ODTrWronlw0Obv4veQxPB8qwg8ndsCi
	 QU9sg4jO4UagHRrWckNJ3FWxD1PGwgXpYu9Fjf3SP83Pqo/drMSZk5hHGSQ4WAT/KF
	 IDWI0FfqS7orw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D71C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023239359.27710.8009768469613703471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43275cc1976ff5bfdb97be36a8bca1941b09ebd6c26763c49c470952b4f5c1b
Date: Wed, 18 Jun 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750232393
