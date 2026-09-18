Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6655650E588
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789747834; cv=none; b=tsJKUN+PT8KCy5oT8GsBK+k0ePyfNecYeEj/6wzyoOxx+fCrgrrIHJFebB8fCiZCcmwuKleQKVAJgAF6Zq5xOfRSXjQ5OGQYr5mTHU+XbprAjiSDEfOuUHUYr+NVCqfCAxDKSZYTOikF2ABF8531d1l1HiA6UIQXa1CxJT+Ot1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789747834; c=relaxed/simple;
	bh=41stnPvM3nhFAAkxNGN2qNQtVyEdYz7AlTR6eqg9fHg=;
	h=To:Subject:From:Message-Id:Date; b=WcLOlONfkR2na8c7Mo5QfzcoMZl9M15WlX9Pgzu+WP0zJFQts36RsTAqPhvh4FU/rCEldHvc/QyHNBatccraH1UqM+9EtVVx1HFHUQwLEcP9gkZDr9LpENfEHiisTEfRAgWPhqoNVFmxZ3RnrZTkZKIfx83b5G/r6ZqdY0gJcX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iSqgsQqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iSqgsQqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E8AC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789747833;
	bh=41stnPvM3nhFAAkxNGN2qNQtVyEdYz7AlTR6eqg9fHg=;
	h=To:Subject:From:Date:From;
	b=iSqgsQqIDnsQ/MJ3Ddu9z9z1xK+tONwPGII5znKeEuzUFmxPX8RLYIUOS3mY8FMrq
	 rgVzQR/2tV5ToYC5wNPLdooPwLUbf+YxY0OIoBnuO2WFLXTiukv7ryMuj+a7Onl9H7
	 9prv5LIX/HZ3EahA6yX9UbMlaImgNEORmO0Cr90hbkV3BMS0hmOhBiDGpb8l6PA9jk
	 M5y1fl+medWtLFoWw8Py5AQCkJZdIfX6R6zALA4qUVls9uh+w5goSUJNVu1qAJ5yEo
	 b+LH9wXVVpDKQazNA4mfGwIhz9syWzMT2dTuCc2qeUmQZWIYZArY5nx0YqRpznl7YL
	 q0Wfqu/wyP+FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B042FC982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974783371.543.399894822851826288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d639005558b2343288980d2810d7492173d08697fc0cb37ffb1ad2a97d79e6
Date: Fri, 18 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789747833
