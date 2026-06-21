Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470FC1B142D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782034594; cv=none; b=KkdchixVX6hPgM++tzjlunszu5bFbgt3rryPIHEhzzIMcUtQwVpB6AHbWpptQcjIi0eBJwjIfxmhOb1JgC7nFx4XNYybfe8RGEdbwv42eEJ66lQFvMN6aGXgA1KMWu0100pvzmT4ZGG6vs0IjSZ74O/iWbptkoCUUDuBmuwSTu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782034594; c=relaxed/simple;
	bh=pmS/7zwMjs5knqB0RKvukC+3J2z8ZR7cqRVQAxRu98g=;
	h=To:Subject:From:Message-Id:Date; b=jj6K0pC/dTmkrkuynAJjHgl1QDqZfu6MXl3uOg+etTKvXIqZ9iFIs8CCgMQG7OoWDAcE2WOexCgQktNvleIYQ7gVOcJJPk/9nLeyWBEv/zpucgErybrQkULv3/X/uTRQrv96pKei18DBdkTvKc56f3O/iqUkJPrgDhcTdP0AAME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAKJ1WIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAKJ1WIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4767C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782034593;
	bh=pmS/7zwMjs5knqB0RKvukC+3J2z8ZR7cqRVQAxRu98g=;
	h=To:Subject:From:Date:From;
	b=SAKJ1WIcXxSvwZx4DrOEPXwKGE2H+9D2zwrVcl4EiGn0sghBUaP3CwDZLZywwCGKs
	 onmNG031WcHLP31OmG9d2/abaNB3jU3FNScIZyAgJv6Wg/0qfMhXjDu1Hmhn0ScCsP
	 V9sFIH6Jd7SvMYfd59Jg3rT+SHQycR3JRtpLWHRTNm9+1c3tXCmOg9lEeWo4z58Idj
	 h7V9jUFN5ccspBbUGBW2DcHxTbRP4lLsEY5HEta960H2c6UMPVP3TMd4KtUw716WNZ
	 ipkRTlm29cBTkhWgOAwUqHB4lfG7ESn5NhsLd4LbmBHkidGX66HkH22KPWtmM2G7ou
	 J7mZk525tBTFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFC20CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203459373.10189.4638372050616251422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27df502f4198323d0f76bc5f2d13644ed1f5630b30e3fbdda39dfca1b7afa075
Date: Sun, 21 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782034593
