Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F5014F121
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760149794; cv=none; b=GWkmnJ2UUp+UWpmT2D+tQg7QX69nLRYSR/73yp10vmEfTrrBuIqT47AvURxj66lmUN8NSIjJGYCcHK9vxkxpeb2NglUCjnC4ffRDXUNPyI3uGBEo+plymtEOVY0UqKHvBP0LKmbGynh351wPl1PfmAaniU7Li6Rbn9O1NyDt0gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760149794; c=relaxed/simple;
	bh=aWB5jZHtKDPtYECeEyjIOdSc4xEzwmQj+5srmRu7Z9A=;
	h=To:Subject:From:Message-Id:Date; b=RJkofWr080Sb97CnG0SecG0g5Bwqp33eU/0DgcmgwBn1aIy2UkG8GdjXQ6EpwmzCLMd3D0N5RoD/eGodw4QPU912eCvjnuaVNqZdevQgCO9+BF2ytfhhGvp9QHyXz4EwxT5Z/dEvTz97Ip1eFKVBcRC5hl1fKf5AY0AiWdUKczE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gq5IFMiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gq5IFMiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A628AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760149793;
	bh=aWB5jZHtKDPtYECeEyjIOdSc4xEzwmQj+5srmRu7Z9A=;
	h=To:Subject:From:Date:From;
	b=Gq5IFMiNJZUCAj661VyZCm9o+WJKAbbJ8hQxsvylPggeWdsMQ7Zk1y0h/7NFsBqRk
	 reUb1b7YU7MyE1jVv8VYMWYPVIISC79GqYSdpTgastEw5SWDMHNaZbo6x93ogy4Ggy
	 2kjRaVGA3XMplm8oL4lgB69bnD8AmFkGw6EVdkyT7+XwT99uRPZq+btFq4wH/tb5yZ
	 UhVyZ+ZLsbGQOBIoMiL9dS/tzYq0ZkSHopLdI6YSSruU0xStwzmp4DQE/Y62EHBH8K
	 ZN0tr2zFVPzWKcYt9pTtRbMDCci0tya69R+P4F4pTXvtuAT3muiTAhfTpIkfpqsy15
	 62Fqu/+8yEHRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94820CCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014979358.2704.18208424083518730751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1265dadd0d0cc3d0eca4059b16339516ffdcd9402a16f43909e51e538af2e0
Date: Sat, 11 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760149793
