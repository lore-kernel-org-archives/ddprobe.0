Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2103E175BF
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759558194; cv=none; b=UDhSh/KqCiZLvgw1ysDux3RzhEsnpHJX/xZPsspnrh0zzmqqHUT3v3E276tJKokG7ISIazboTM+gK2P4yAsjeRi4eaMnuvC9SDUrJ6rU8NyLEwIZ3l9RVekm8RtouDySjsXfGdDkoCK1DYQodngpifOLNfJDBw/1QAE1O/6w4YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759558194; c=relaxed/simple;
	bh=x4uXr5Kx6PZR9X5lzQLb9rtFPJsDHT0a+2LO4Y/srNA=;
	h=To:Subject:From:Message-Id:Date; b=SmR/lv0vzhdJydYRwSjye6o9+NWoQjBs8nFKA1UVr7X/Z++/BiOVKz8urAd5t6FFLg2Wy/ZX0OfSKqj3cVxg5jLmNrsgqdSRcW44kzXq+SjEOTIFR7nKPOV+pSYXYFADsVT7eXss9HrzkfBqISUkWMxUpsRxDcpSqR26NU1P8g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAxPG0Mj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAxPG0Mj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A321AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759558193;
	bh=x4uXr5Kx6PZR9X5lzQLb9rtFPJsDHT0a+2LO4Y/srNA=;
	h=To:Subject:From:Date:From;
	b=rAxPG0MjcxPuy1gAtVvrDaphr1UzqrstKXoCRrTKsbLv5+0PQXui/G7JVvYZU3BMy
	 8bGWz0xZmvgb/BYjAHjwROSLu7nNKNBYsVygyOk3BoSEAX6xzlZ09oeiHtE6Be8MYu
	 QERYVJ1gnzJO2s0xmhLgEFYRXkoF2eOkLyoQPkt2EbvdNqVot8i0CsVesksxySOvEq
	 rLLWal+EKU6FQNEkRzNQ6SBIe0Rr28tzVAMRrqBlrn8baFoVksv4+BWkGUe9WKowFQ
	 GgP29O2Srb/LQk35VuHZZVsiZ8G2fYgFSfgYrOjDQ6b/flz/MoDAI3uohWKpSnG3aL
	 R4+21BzrBdD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95491CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955819358.6180.14724788548921578574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d32dfea1e49696788155d7d41b6918bfa866d2464f8ef8ec98afa5d18730e2f8
Date: Sat, 04 Oct 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759558193
