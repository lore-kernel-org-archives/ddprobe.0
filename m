Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B6527F727
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758658194; cv=none; b=H9PnJkBiIk9e8/+2nve2bNXTdVWWL8VFbc9XasUIJFS0mMG4nLM7A7/sjxKzfZLWWj8fTpY2vYjOAYWLiz1hdCHH/nt4YBRF9m0hNp0jxtzaXkf5aDBKReckKonpSSzFMUNiXR/e/curaDrPbLtyLGP6fGlvcQBPud1kOzinwH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758658194; c=relaxed/simple;
	bh=6r/t4fh5VPxiUfK/RJ7hri5NjJTUD0SUmnfYL71vPnY=;
	h=To:Subject:From:Message-Id:Date; b=E/EPi9j+BgJ0WLIEw2h1CJZCZLGnAd7wczAz4xFv5bc/x1Q4lYSSnh4yx5TD7IwROccjEICqbB5b/cHbmwJMlNxexHrAwxRuHuhfgrb9RgHRdzDfCsYWst97A2lVxIqTBzWCBbHCM8qxCApn3LCltCdzuMep8r6pQafcCEm9W64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjSk9ULp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjSk9ULp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AC1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758658193;
	bh=6r/t4fh5VPxiUfK/RJ7hri5NjJTUD0SUmnfYL71vPnY=;
	h=To:Subject:From:Date:From;
	b=HjSk9ULptea5ldE2Hk4H2cbuXtoDbssgTLPSux546J780L881vktAGepnKMp5ZxY3
	 SpYRbxgTDf6YP0aXl1n72sV5E42dixPV70zmIjDzickm+UzwVZ7mo9z+goUxa5kDkq
	 avWew90b2Ed/SnazvQ7gq4r5H7euzCGNbtuYAp6bigW0QLR11/SGoEItuXDWGSfM6f
	 Xe+A+T7ktOMC4IfZbyDbWj0v9vk3wbcAoftuo7+fTevbvak/W+F8NbJtqXHMF7yYYt
	 iUF+wBn+JrubsbHEESHPeIJv2RlROkJYYq6Iia8ymccJUhdB0G9YYS3gsgfLhVE7Qq
	 ygDCyzkUehztQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A5CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865819358.18778.8708088678403902064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5bd79fa6ed86d3d5db77c6cc6441c151d6612b079af5837b06bd05f2916453
Date: Tue, 23 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758658193
