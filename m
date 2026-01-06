Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157432DA762
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702234; cv=none; b=RqwDN0/QXzFKRv+v4Wm59r4GDMtT6qM3kUhett/7vTgaJk+ZiZc6s8AtjNH+6G3thINxGMGZoPy4vrRDSPoDWJkqRg00Yx3SHQlbYPNC9EOjpcCdQFMnk7GRCYJdu7j2MwnCR1t/L/YX8lU/kqcD+7Ph5A85H/d/GtWrwcVGtdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702234; c=relaxed/simple;
	bh=wtIFTT/5sydp51oyvkslt/yk2r9mk6StF7c+yngRbhU=;
	h=To:Subject:From:Message-Id:Date; b=OoVP/C6KKz/4947g/bJrVskpdvaVYrqa6XSHb/mOwid8pVczWxwVphTbgmbWS2rIleSvCuOsFNcEATN4LSc4fq7ESUk3qSOj8+3ZY/y5txJM74fnxU/E7Uasu31/F1JvP+/P+JPEJ9HlKUzcBLpxPGkjx9NmoxNf/6a/sFgudfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyWzu05h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyWzu05h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0C4C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767702233;
	bh=wtIFTT/5sydp51oyvkslt/yk2r9mk6StF7c+yngRbhU=;
	h=To:Subject:From:Date:From;
	b=NyWzu05hYNm77avTCt41hAdQ1UX8jQ7kjWjEGzBxkAn1ESJpXQqaCh+rfLnHG2VrG
	 AXLPR5FNvcPs5T6xl0XBL+whmYzkwgs/sSDzOnz7F62M9fPrTW6qSsefgS5xfCU3Zy
	 a7k5M7qlDXMH4Dw7Dzg/lKBa4YnLqaJmwiwN5ef9HPg3ldI1OIzyunFv2FdlVwteQs
	 826gRtI7uD8wGUcXhTnBwmsTDDbB+UEY7Scwk+Y9PjsucRX6ISS/vMYw1ShIvRXMSi
	 QTUOXJozzldDqZAdcpprSI28QSUKEHEL3Segdp+PTc8XKqir+fmW6LlZ7BAPNF47XW
	 ARiTbnKkBUjjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E565CDC18E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770223357.3895.8915078173969783300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d8bcdc7d0fb8e975f6ce7677abf0e076ca78a3043c1eb8f7a96c4c08910906
Date: Tue, 06 Jan 2026 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767702233
