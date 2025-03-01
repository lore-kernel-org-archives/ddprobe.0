Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437C02CA8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740845934; cv=none; b=Om3UdXBRGjtebt+vKKmwsnSW9BMsg9YBgI+ps7MTYEHPhoPttE360WelXPYjviC+iupc5W5Yo5nCoNpTJy/pjgyDDt0vNEZ9XI0vPC+9FfuwL9LzkxZbge6rMZueatuHYeZyrRHtyJ7b2xKRmEqN9gXZ/ny+kMAcTz2Ymz2GhnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740845934; c=relaxed/simple;
	bh=r+V2fZuSbKfTY34T4f4Ecp84lQxIwmFHjX5/QcM9AKI=;
	h=To:Subject:From:Message-Id:Date; b=KYyFJ3jHbn9P7hpt5qmwirBDA58bZzfq8+fgJkkD74YBLFBvywAIbym2HjEPILwoy+2HmF1kLfNVEAmiysQi54JGduyQJPCvLJpg6AOBrZqpZhPjrVgmdw3hTicAnTZpD28mixZmOPoP4O04DYnUeOJFbeYc7Xi1iyCETGXWxEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERpBBtaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERpBBtaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B77C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740845933;
	bh=r+V2fZuSbKfTY34T4f4Ecp84lQxIwmFHjX5/QcM9AKI=;
	h=To:Subject:From:Date:From;
	b=ERpBBtaRe05aeXZZOeFyhH6+Hqrm0RvO4BefHjigwRfNBgONnmwOF5xu/vOplwRqA
	 QoH18LTAS2Z76+cezgzNXGiP+k40LLrgj0Zx+JDG4u64KEmYTuDiCotcz7f57x9tJF
	 SHFBnMnVzsf2gX1HF1YSbEVgW1muA2Xmp+XreyYU1IJ0FMsCiqHkj8Kxt6+oCROMzp
	 LIQjfisLy5V3ClojI7eO7H61H+AjQj1oRtPRbVCNEX1WI0K3aRCcCh/rwJnWZO4e0k
	 SYyXZnN+iytd85sVAtiLdjw00fCVBgmzCF7a9GmzKzhTK8shJ8wwH4oGlh8lJcsPWI
	 hrD5GdUouzJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F63FC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084593363.10162.16818907725698091485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee27588a3e6c6be327957110962a8d20a0fac880bb5c9187d427c8c8b236540d
Date: Sat, 01 Mar 2025 16:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740845933
