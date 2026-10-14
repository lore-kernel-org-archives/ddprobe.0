Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63FCE568530
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792000834; cv=none; b=NMQ5sitG1eYMhiLLS9bfQZhLmduP0PBQ2JkGdMA/tIWGXjHf9Apw6t5msD6pTXF6iANSgdJwUj6TaiwEQkdOk+aNkZ1JLROsEnSg+vt0ho4SFk3zHjSzH9ODL/4jcdPloTEphzbLhksMrNWfsz3TYyRc6DnFJ9wO6pOccAKgC/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792000834; c=relaxed/simple;
	bh=0f7QIvb/gedZ6Ew4JmPWdUP7nhz29ACUnGpZP4J3RSE=;
	h=To:Subject:From:Message-Id:Date; b=E7dYFojktd1NRN1c7JKEdEpIcGXK7+yUYcXcmIXlIXevyMD9Pr7ULCjoO7Le9lBX4oyU/l4/y95RFZeAiegsW+x+hf8snUS+q9/MVcefJsTWC8OUVpVNZrg48TFV71KCRo29IEONLULxQ/TAa5pN3scHGdFxOJopDMC2IOeDj/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFAa9DU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFAa9DU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E03C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792000833;
	bh=0f7QIvb/gedZ6Ew4JmPWdUP7nhz29ACUnGpZP4J3RSE=;
	h=To:Subject:From:Date:From;
	b=JFAa9DU+zjOZtS78DwS/lAwRSNgNw+E4kK8qoDLKzAvomOGr8L4aHfECrhhuXqFuR
	 nlGtbph7S8HZNjOflgPS1fdRceAgR7vN+pMoNmEfrBxxy5y2RuARCESzHObOTbzW2S
	 LLAJXBTlE3VkdGgqt7d/Q+zq8pYFMT2Dz7eV3om/8ompIFD/UBdBekp1f/YIwmGp/i
	 g2LNuBFdxSKyY25rN0JdOtjQ+wp87fJKTVPuVzTSd3fBzJipO/3IYpTvWyyZqBH53w
	 e+wmDwVBnI5psdI3cXDSeQMGJYsf6s2zwDac8cfFxjdZNPEQRJvK1eYQokx358Z4Tj
	 PYKEnmDp8enog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE198C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200083369.31641.11137529680646154937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba812a28e90e0620fcf2643c1414d213bb94c6e1dc27ebb9fd0cbd2ac9132c4
Date: Wed, 14 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792000833
