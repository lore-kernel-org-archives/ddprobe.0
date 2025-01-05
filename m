Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E91C5336D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736096754; cv=none; b=riXYEggr+Q6m1Oz5/JFTujDyqBat9LV72hNebYii1lW98JRaUVl/BPV/6UWV1Q3F27/+MxHj9aJ9Q51w+dmfjmjqHxWTAFFbpmlaSMBGJjeOm6R1uJMRruArX5pPhXEUQyL7ohO6LFOwNzeXghR16xIaMUSVRUOjNJRzhAqWlBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736096754; c=relaxed/simple;
	bh=uyvk9+M4n6+cHdOf/8C+EX7gJL4rcThNdoxUZrFRRTI=;
	h=To:Subject:From:Message-Id:Date; b=g0z8mbm0Qr4jygoFkyRo05vfy3uhe1rOJ2HtpHRDmx86wTASiTR0z09IuDj4U+vqvN9kV3oVa2yhSXFZysB26UTaDQHCXo77QGBykpfg4dHhw841pe1np6pH0qLZaENURaDWtGLPGOTb64shganTMKyC2FzecqtN7Xa4c8HoXvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=takAtcq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="takAtcq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C848AC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736096753;
	bh=uyvk9+M4n6+cHdOf/8C+EX7gJL4rcThNdoxUZrFRRTI=;
	h=To:Subject:From:Date:From;
	b=takAtcq5jyKjFm7s4zm3NFVs29z9yU8dWjOydPdARiZMK6IZhAmfL04CjLDfOFvIZ
	 /7p0H7nAW6wXvxH+1jGrF+xFBFGpBS2RSEnj9g/pZls+YLNhBjZPMMpSatcBtBjU5F
	 p7IifGiSOL8eHT/kChDvTvG7Q9BgwfgM5QwnQIEraYA8DcRTe5dgiQUBBYy06RFbXB
	 ESj4YZDQpUSoQTZN+KGiM0Kbiyq1ei+uDmrb/WWzddE4TigMNleMq4tfc4N0vTiB/m
	 ogkqv67hu1pSQl4hUzi5MEDUyxMgskEZtjmQlDxbTUJZGpimi0/u2OMfggd4jrIL2U
	 M6bWPfPjd0Q6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27AAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609675363.9943.14626192914544938554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a473ee40c39d68de831a2ad1084d9bb39f4569fa5e5ccdfeb3528d8abf490ec
Date: Sun, 05 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736096753
