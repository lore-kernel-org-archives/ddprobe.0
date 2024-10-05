Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CA213C908
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728164754; cv=none; b=R/2H1V2D34On6LlVz34Vn8z3S7VYO9ypR1KRV+PAFrRwbppj5mHk+W+XfC2PounI39U1OAsg9p5pnoHJ5D0/lm5N0tLMRf3JJhhh1fKFH0czUVFDuk26zeRvZoH3x5oSVWlB4lrSGWoNcPeIm0bdP+By7Sh3CJUjgfSOruwGi5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728164754; c=relaxed/simple;
	bh=0P/O+xLURETpSZDNtOyrSSnMoJ3Nhibxwz0lRkvJ8wc=;
	h=To:Subject:From:Message-Id:Date; b=UnVTKLb/kL9neSKnBWHycm2qE7KBGuHHP7CxgHDlPGlxlx6TnDLQv5ACAydbQ9ul/hE4qHxKk87GJBF47g2sN0UasCikJlp08wFIFF9Y+p6rl/JEWdaVJlGruTKNuVhxtYELkuWoe9KUgMcBRrX+PEyXcBRJCFT0rmPqHj1d59Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fC995g+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fC995g+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CB9C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728164753;
	bh=0P/O+xLURETpSZDNtOyrSSnMoJ3Nhibxwz0lRkvJ8wc=;
	h=To:Subject:From:Date:From;
	b=fC995g+8R8OScp4QdmClg/I5hMw2NYTdH3rv/76rpxhsgadq8rXbSPmRdhFxvNXc7
	 OvjzzSt1FYCJ2BBHwzqHEir/ZbC5ZVIFSS26f9iztYFzSTSIFIBNFQXopZuvjYT5UB
	 hyJPznjhyLPyWOZ5CJPUoVhbXmZ7ksuu2SSAzhJ+8lYglwemn6qq/GVpAzb77mkdEO
	 SllY0fvtD5kl4N/wqVeLPbbmbYqM6ttiNtf15VZ0xR0ins8a/D5neepbX2AS7JyYc2
	 1ZsyJ9zufFO6IW8YzIdtWzoPhypLjhWt0G6rmGYdhyB704RwqJtIwpxeoR9CHiS2+L
	 O22oP/dsTr31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06CDCFB43C
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816475361.2237.2254806565235633101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc6dcdf7d6990aca0bbbc1182640434d54829876fa5c2a2484275b5b9fb16993
Date: Sat, 05 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728164753
