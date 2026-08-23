Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1DB2DF134
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787529034; cv=none; b=Ah+ZD8C1lOkPt/7Y9I2L0/s2F+85af6FrrpUGwYfYIYxiqiHojAnKtdqis4wLuwEv5GXRjZXUsR0kM9G64GM3nYjLqOOWFjsWkGqQcsec6Jv/y5xicS5OkAvWF3r18x7agmQCu4Fqr6ZRvLwBrn6XGJuN/5XCW+XzveFVq90GNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787529034; c=relaxed/simple;
	bh=2bt1zU6yheF3kOi6wWhKh3fOhzxvayt4WdEGaM14CRY=;
	h=To:Subject:From:Message-Id:Date; b=fuJUACKcCdHWCgmzyDDa+IN4xshwxGdlELk9UDZQhocPsIOMjFHxJuzzmVQEQ/DiDRSYzkgWsF24+nuFSiR3obBk0FcrLuTReQU/4oyqr8HU2i1e/10gJ0a6yUkfDr4I2zbTciRAxDQF+9nYkLC00hB0zY/gPJdEnAlXVd1m+lQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atAkPr3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atAkPr3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3959C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787529033;
	bh=2bt1zU6yheF3kOi6wWhKh3fOhzxvayt4WdEGaM14CRY=;
	h=To:Subject:From:Date:From;
	b=atAkPr3RRKjkN69L1+7YZ+fo8Vi+1smlVkuc/Ui4P6sD+LSn/PJYWkpzGfGAgubeh
	 yC/HxG3h7UclJuh8juaZk959m9O/XY9WgLkbDv/dnSX76quyY8JmGBZc+siiqJ8sBe
	 5xQ5gwecZqm4cOk+EOmN4v1AkXQWqu266Y2RLeXDbfRXHNxQrks9QFWABl6N7FzxvZ
	 pj40fpyg6EWkYwlYxrYuho2O1HCrNsv11E4ri+Q4VZyRPr93UEwb01JZlTEs7hqgu+
	 FFMg3ph/HcgPadOb+uwHHFxiSH1MCqzsSWJGlxqpCXrkk9MB3nVeEF8P6WWhgNSKXw
	 OHqQ23mwuvDAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD805C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752903368.26033.9746385786582981044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da20520217819785559f11dd85eda7ecd52ea080d10aa83096d9cdd13c7bdb7
Date: Sun, 23 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787529033
