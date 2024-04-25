Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA4A3D0AF
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714025483; cv=none; b=GVWiBZNWHDHSzj9meSCxXR7og4Osj+azdEUcEcbvaOFRJaHwBgHBd8XrHeH/BZw6tqZwEe/5pPMhez9hn/kXvKStbsR4BYYdOdk2dB7FoQNKXibSkXZJctw7DE+Cf0u+19kt0vdRdbgMs76gIn8qErHOuFBGg60st3irFljwz1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714025483; c=relaxed/simple;
	bh=ypK3reXOKvEVJRA3kQU2WbInj7SJ/4/sCvKg5QeJens=;
	h=To:Subject:From:Message-Id:Date; b=ljoB5R2eiaa1PWbW9cspvL50GcFG/VfNfAzpExCpkBQiYj95xCieJhr4PPsg1DtQV1SzVYWOBZsIiZVloaIcWEu0w8Et3Lw/VX4m+qSilrxP/sJ/P9WFuuogLGqRVZn6p5BiBezPFXirdWAYyePMw4mPySxFdQjMef1iRlW8TX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ggsf4am1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ggsf4am1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0ABCC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714025482;
	bh=ypK3reXOKvEVJRA3kQU2WbInj7SJ/4/sCvKg5QeJens=;
	h=To:Subject:From:Date:From;
	b=Ggsf4am1V39+m4TlzJDZnAPPVJbCE9kY6ZIERXJ/U54qhrvJw1C4SEV/ds+e5TJEZ
	 JpvRyp3dv0DNdFTLkKtxxGsgDmHJEU1Nt1wAtSkz6r4tcL6Bms0BlnlmJZUfdUirPh
	 ol5BcAoRvlQwRgAU8GlMjlOcy12FCDj9yqeBT8aWi9slA6v0g0z+g8kXwh0Aeampq1
	 GCPShioJATcB6YfNIrWyHNRdgDNdaLruugmS0HLWkHUKlKkQI2ILnjP7EmtAF6TjgE
	 vrBYVU5UKumLHNsAAPTi8J5SsK7CiTA5UhEzbJ1tgFfOeqGhCFPNhzTG8kBziY9ZZO
	 zL4chQFL8qQHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE7FDC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 06:11:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171402548277.28068.3898398042173322930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf58ae3706c81e5490a8b2f0e5bc54511c433defa1533ed171c3db2f1d6bdd6
Date: Thu, 25 Apr 2024 06:11:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714025482
