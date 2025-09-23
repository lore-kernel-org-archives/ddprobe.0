Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2027D1B423C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758640794; cv=none; b=VqbvYsHRNhzpz8S5U6b+Dob4yn9Ah4mkNrFKB70plVNm05h8KtnQZTBNbSOnsI3FzmRgvBKAHSexy5RjlU8kV6FdL6/jgoXBq56LL9Dx+CqdccSAmDyaTvnk/ZAPqa6SUyIg865OQYltYhirDL1qZW7FnIR7hzp/HXvgm2ElN00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758640794; c=relaxed/simple;
	bh=gjlkoxeUbuOKAQJGR7+wRo7DZwSsa7fHMCInWeIPDTQ=;
	h=To:Subject:From:Message-Id:Date; b=mnl/7Sfwppn42Ren5FSYElkU+vzgWU1jDPIujHBY68r82NHxGIBlzfshrU0ry6Lt5KZywoNS+00tTbaFBD3uBKAv+imG7xxfWq9sIywgdB2vpyZpX1nA5GBl4S7U6Lkh0QS2HYenCtMIVjnec3Eu/aBUWDtYNj9Ei8J0ulcnrhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEPNpREA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEPNpREA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85A5C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758640793;
	bh=gjlkoxeUbuOKAQJGR7+wRo7DZwSsa7fHMCInWeIPDTQ=;
	h=To:Subject:From:Date:From;
	b=NEPNpREAzqOidLRruXXEGAtXRMK+V+vX4D/R3ZJm96mWgcAeXyd1QyNwpwyECn4LV
	 FJruTdbXRaFpNsYsjI3654Si3nFo5KmglfkFgcmGT/BL/Mrsbd2+lQ1F831XV3eqOZ
	 RDNCZaOX1LboRNnRhP9wTPDUaxqRRi3/vDJEEuDUih0jQGGEluFk+/10ujq3lk/rde
	 vksMM2t6KSoC0rELp4CZkdBPPL2yzvZ7JnXRxrdSO0j1fTavP1CAjWIytkF51b0XMZ
	 yX+OS5WQ+hgdvsdg5afX/GP8tA5mi4vDsveZjqSFdQbgP6a9uqCM5Zfrm5O1+YYESA
	 11FyTbkc6gfZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935DECAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864079358.7031.4094534656672025410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f846c207202a951560b32bd83c1577bf0eed5b06f76d9a17ff84e48a21f5ffd6
Date: Tue, 23 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758640793
