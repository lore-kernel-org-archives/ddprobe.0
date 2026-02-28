Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05CAD36CDF1
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772292894; cv=none; b=kw2PUtuzuqjRPIIm9SBje9og+lkpyi4PrS6JN3daes2yYHAuwpl5QQ7McVNBbAPcoJ1uWvTOpfKgH5B2Xv63K4f9ItDsvN0mV8GV6698nDvsQqW6WZ4e1NjZdhIOs9dYq9Ot/O4UzFvdTTbk5i0cGr6GRpW0KH8GRDDYudTNkWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772292894; c=relaxed/simple;
	bh=jCUGfHfmVWwS1V66ePAZ7NMIfXPIjIIofXY300UV1sA=;
	h=To:Subject:From:Message-Id:Date; b=suN35jTq9AG8h/b1a6Am6W0lXMGIdvtbIKaIDdt1gOvYqs3EN1lq42nIzw5Q0t1Q3DA4WgMxPF3t9j+Zl3E8LToWkToPWP6lpGBt9sLCdffmorAXJ+BT4OFRXwmqImA5sy30RfGcSe5mncDrhijh3CXrLD4rfGP60ndfpZS7nDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5EYeIoK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5EYeIoK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF48BC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772292893;
	bh=jCUGfHfmVWwS1V66ePAZ7NMIfXPIjIIofXY300UV1sA=;
	h=To:Subject:From:Date:From;
	b=Y5EYeIoKRHuMqNMgu8G6j8xmeMm4EEcWDufpA/RmZIc3skqWCU4PhsJvrxl633FSN
	 3DDNh3InEHhSt2s2mhN2A1szHC49Z8fmkRlrOCgFqgscJu9IoCAtb6mAwvE5mTcqcP
	 98bqK5AdPRTvlrtgU0eYcRe6vlG4QwEXYO87Z0eOjqN9ZordFlJ7KppahWbN5mQmA2
	 TyedNQBBs0WaBD6Rf9drAe8n5J9UsMGppUs70Xxg5C5xkW6b8NC7WwpmQoBI4LayXM
	 IPO68PVn1wjHFkG/FFlsAswR5FkiuuA20rNPNkm45Uc58OxuatJ9LfVYkuoOj/vWwH
	 7ueq3yYd3dERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAACFEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177229289360.22780.12913105680662885981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a03dbd198e78f121357f6fd7a57d88023021ee8066488ad496afcb225abc467
Date: Sat, 28 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772292893
