Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B8078F58
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743718794; cv=none; b=J0ANNl4OpZTutro8Q1UWO9+TT2tnjPcvWLiSjFssnTaj6vXxYX3v2GSwXo/724YG27IXYeaUDFymGPoMzP2qdMj8qBWfSC7X6ji5c+hvlmbY3HS3tyFlQEcooqFHSFTsXG/roSel8QJ6cGfQQHQxL3hUju0vUPfQVa5XwSVZcN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743718794; c=relaxed/simple;
	bh=BI7/ggf0OtniV3Rfgghs1JHo21ifOzNZRUsqeBV/cUM=;
	h=To:Subject:From:Message-Id:Date; b=JDGA3fj899vcLIRAbEcBOOiU+fqTLlB9PEING23wwtHS8ZKg89inJN1Uri2u8wsw7z98DSrdjzDS5eWzpNCfoTxfyEdWN80SRifjfy4WkX5GHx4r74LXGSFETOTKoIbfjrYDpV9tUmyKuZV5t07Tbw6grX76c3T5bf4guG8DQHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YVydAVjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YVydAVjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3945C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743718793;
	bh=BI7/ggf0OtniV3Rfgghs1JHo21ifOzNZRUsqeBV/cUM=;
	h=To:Subject:From:Date:From;
	b=YVydAVjPShRQXp66QFqw2nWh2ndeQY+q0W4WCAAazvYR3LfYmSHiBFtmxG3kZeOf1
	 BN2dqj++m5KReHGgp8iX61xeYThas3CBQEQiWAMWaLdr5PeqOAAJrNGDEhr2KxQkYF
	 9aq29tQ1ygNizuaszll8i98SysmrCdyoo0zcqInPjxbBAMBxX/DDgQLgT0HXyay24c
	 oqeGf1JKF5cKHosefl4pQLGF08Wulk4I9tMCV19+pmX2jb/FOes+hDm6xP6ZYi3B4b
	 dtuAhF7QdXhZo7gI5XKk3Er7iFlJBr+DbFQ9JwrLajPGUdqKBcs0KPhumlfmZvjIYH
	 5GD4s/07gGPIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FECC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371879359.6193.1929689780624398059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31dfa13962641970d7e1ee96627ce6d48dacf2d382c082a561ad9f72fef3c16
Date: Thu, 03 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743718793
