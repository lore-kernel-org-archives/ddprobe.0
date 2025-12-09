Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA862D3A60
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765293774; cv=none; b=oGlm5297iMzfBse19JDtXkeKq9hoQ5YJl1CAqphPDX6xBeCtAAjb+IzNI1+OiTjTFr6k4NY8SFqRwaD2VDtk2WrO92VsrvdAuXJ9ea+vea1PSFM7iQ2xEEzD3kF9f01j3Wkvv6maHzWGk3ofhfL2sNtMS6AUuTQYz+CevyvUW4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765293774; c=relaxed/simple;
	bh=2rxpvDuZdTuq3bHOpUpLMp0m2P7AkPLfxLmRiuOowqA=;
	h=To:Subject:From:Message-Id:Date; b=Ua2ZN7POLvY3VqX0GIG13kvZhH01z8EsiykFRh51YKjQeIudzOTvD7Foqsd2lEhACfnOj9/jyNr12uKgSfAp3rbYgK/adcXj8geRhoA7TbeV4iQOikaVKCNJ8kir8KoS0rq+Y/aR+W9DeHeDCq4imZmAKfnuJ8ke2SGcq8xLjHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaDyTnwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaDyTnwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B7C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765293773;
	bh=2rxpvDuZdTuq3bHOpUpLMp0m2P7AkPLfxLmRiuOowqA=;
	h=To:Subject:From:Date:From;
	b=qaDyTnwXRfqqPL1haBiLnJ8CGr0MgSNNyPcT6YQngpEdzh6MTE1CGeJIvO1q9Dtt7
	 H2QzW/iSQwaTVkepr2CmqyH1hS79AP5BR3TQ4DbK/gHngcTlx3bAGEeCcQcjuKoinl
	 y2JFhUT25hj9KC5rgXOzD0FMYRs+3/omaGxZcPv7lIwn006gpB3IbhzS3acEtxI8jv
	 gAUp09w35z4ECnv7kIiTyQ+GVDB51Hzbhbj+OnW0PI9oP+cqjqjUHRJJwFBdIEcmnD
	 r+yQo53s6qjBdVezIRzKpHzAhWG9lnKPYm+g1ZxUtd8riGP2gPkF+vLgTy8bhQV7Fu
	 DbW2BND59Hy9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F90FD3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 15:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529377358.9620.13886286991027466664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa86952987e03575fde093f6c9fd9fe16c3bdbb4ae922b8176913f23cc0b4207
Date: Tue, 09 Dec 2025 15:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765293773
