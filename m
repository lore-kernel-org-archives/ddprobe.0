Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FD742A7AF
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785834634; cv=none; b=dCUEOCwHdOkgG2pZQvvPk/h9FDn8xqm1HfIDgNm8kxlPY0Sr+hMU55wey1jNhyoivfl3f4ng7LG0oR/6sbG/SnA4aEBGF3XP6EPtgdoZ8kH+OxeOZHNuLDLp65BwHMOZUJesEaq+9iY0kwu+l2KrCvhizrYOvIQCeBVriCWBkdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785834634; c=relaxed/simple;
	bh=H5mDZtRYv51x1mONYpPGhy/1zLKRo4ryhvmRnAiUXJE=;
	h=To:Subject:From:Message-Id:Date; b=ldrDnwmmY4b+cf0/PuzCO7sfgFSvte+xTPJniK8e5o1iXN79OfGUKBQCAOjophQg0vn74y8cQRUdXIf42cP6hmm5MuFqSNk5nWm2E91N7T8aCFcF8QyUvcPLKj9CuQ2UDaUme/4clkqP41kzyXSjJANENywGHRyqV1OrqVP0ORk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR+YaZB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR+YaZB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1388C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785834633;
	bh=H5mDZtRYv51x1mONYpPGhy/1zLKRo4ryhvmRnAiUXJE=;
	h=To:Subject:From:Date:From;
	b=MR+YaZB5QIsPEr/a55pIBbJs+fYUT63u8l4bhPkiFOaHtz+5wg8Qwub1XS/HPNvoD
	 9q3nBVX3ia2/UkQ54mn+inhXr3xKsGtItW5AvPw005IH4FW+YRiLs0DpKVezXalZ5S
	 2s46L+kkWXBPN/3Zh+a2yNA5BNp1ONzj8MfqYqDqYAHww5e3MaFlduhISF+BZtg0Pu
	 PkIWUxSpdQmbmO0NXkal4Qvkp0Gdn63sqx/zt3Ak6n36Zc+TIK+sa6iauHYkswTkZW
	 aMdT6qENZzPwhTke0gBf181vRYX1ozqrM4ObJ/4oqhyriHEgZOKi31hPAF32axknSF
	 MW1QNB1uFivWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7953C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583463373.26441.4671609143319248151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010cdbf5a905b7a792beae25d774ca927e07ceff2f6f36198ef7191c8e0ed487
Date: Tue, 04 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785834633
