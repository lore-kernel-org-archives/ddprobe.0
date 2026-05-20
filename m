Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E051F32B128
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779248436; cv=none; b=f9NF6gwOXpZkc0Z0kWzFFWXSoTOn0G37JAU0XRYCBTlpw7Q13Z1tSRa0BR/KjU5aBBb24jZCQDjKsR0KcETBssy5nyW8iFKyB3IrrWsXmfiQmBtYTKTsfeR9ahgDahDh58MYcpfvim53jeK345MCf1zxTpLi5TJEDBnNkTz45r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779248436; c=relaxed/simple;
	bh=TAezGBhgzpcafLdPQ5XFBI/3DOEEyUrAdUN1EvFjw9w=;
	h=To:Subject:From:Message-Id:Date; b=X/PpeUV4Z3FWWnr5dhVbnknAVDL/6/9ps3E1LFim/lo92vmZBrYaxKFmwklgmeGkfh7vigYahnfTEpXzzqJ830Li8haaJfWUm3BDFyrgJKJw3LAgRs7AztbGYvOzT+XLIM3tt6iH3/Fy/y2pS7HiW1ojRV46NYBoToIycXvaJeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J47wkQKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J47wkQKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB3ACC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779248433;
	bh=TAezGBhgzpcafLdPQ5XFBI/3DOEEyUrAdUN1EvFjw9w=;
	h=To:Subject:From:Date:From;
	b=J47wkQKoohzcDDLvZj1ZYskgXEIm+lAir4ImN2uclqYt5fLMRe5dr75cliZNSzhB+
	 91jJpHF0usT2LB4jAg9nSj5+kczHiarqqLCi5U1LFTTySIN2CmhvCta0XBFTRkLpNe
	 OZCrK7ChAziAjmxJ7+em8B/EgxBbaVX9SA7ELGcWxX9Y1IrTtK3LX6ZK6ZOUjMh2+1
	 605rcSiUhK6XCOfVT87L02/csubafiSnUaCT3FaqQDX3K6x5ZXl2fHeBrVn5ISnNKC
	 kXTt2a1eDUYPAawajZouzKdGQ4RNNRuoWGqgAnnYm0CpVbbAjQ69b1FlQ2YaZjfaEp
	 10lHYx/+hZJLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4DCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924843368.5213.17775687061959129149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34c926f0075acebee7d86afd13322271f2febf20450841b0034788bdf70eaf7
Date: Wed, 20 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779248433
