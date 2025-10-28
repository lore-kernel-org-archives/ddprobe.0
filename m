Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0703E1534EC
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761657594; cv=none; b=mrxve51g6J9NbyULTmMUztCKCusi3ve8xUibBxgqCCnr4eYlBiigjmoATO5zglkIKtfkyDAnVvSLEsPO9AxVtEtu7U1Y2Sh1BE2U2ZNZmvQ3Jj1faytmbuLHSI6lYb+FVJyBs9RE4c1ipxsLF4N8ADv/4CSxjRC5zF8+gZ+PmsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761657594; c=relaxed/simple;
	bh=HvkRaWFHzr4csBtvJAS9LCQR7d/poTZ1VzIh1Ukp5p0=;
	h=To:Subject:From:Message-Id:Date; b=b2EgNeQGL+9J3LboHTORMtaFPJQNe1zCYybPTuYe8KAMMkhDyXxym7oF0Q3CUD+RJGyQmjcrqaaCYGSclPD4si3UaY9KLFxFT+jRY3utJUVYkw7sFETACay2e1R5qwGg5yu1xrC0kC53Omd6x/d0qmyJiPRsUD0+YUbbnIaX5/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGFZ1CqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGFZ1CqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC30C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761657593;
	bh=HvkRaWFHzr4csBtvJAS9LCQR7d/poTZ1VzIh1Ukp5p0=;
	h=To:Subject:From:Date:From;
	b=IGFZ1CqX9FpL40xOaGUf7zw+51VSObZISWrb0KUN8evk9Ghm0PgFr2kFQXg7ExJQm
	 V9ESlKkSYd+4SgZzKEC6eH5DlhdIt8MMRc+jWNwSUwnzjSK/LmXm6wli1SbyCO82mN
	 eTIx7grZ9dp8xteT+6Y8VM/2UhUa5rc0CVs7+beELe0I2swQ86cr1GEZjluwSTbZku
	 MatrCgjkBCaI2i27ZmpgHFD0CewlunEdbc3aNPWgDwn5DOQKBryk3i99KnaTxXsiJd
	 UcnFClsBO72TPNWn4u43W/IctqsR9lY1wKAG6lbDbq7Bf7d1Nzrv5QSBbakryoFQdd
	 lzGTbZOYQhmFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD1CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165759362.18989.5227279779143068530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc53cc687f2bb64fc4abbffe45b90ff19f61842a6036aea57efedc5dc89eac91
Date: Tue, 28 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761657593
