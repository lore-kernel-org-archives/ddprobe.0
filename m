Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CD2D515
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748656194; cv=none; b=EtmZ3mszuepFXgEA3Rgf07aQzW5MBBPbtvwc9KdA+6r4Ob/DPR6a1RwM3owuS9RB089ecoj6c9858faiBmHq0GALQqTG25fwiTVM9xrZ/3Q25V2yslapqop7TCBMhdlSLCcHATJAXuDWeFopiBEDVJ5/DJHbYEzh+P6l2/hq5dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748656194; c=relaxed/simple;
	bh=+4bdSjmehWYn5JjAaxHpwE85guLbDX5qmaeu5JOs2wE=;
	h=To:Subject:From:Message-Id:Date; b=DAvouW0vwEHI/8LO6YMOJtrJtTzhCYRluQdFLgyXabWXpB/yzZPp/lDMDZV/xO73UJlrX42Tse/rfvusp8JVzOHwlDbqHogBgMSxXHZGF9XDc7ENUEysKwd/nFz1snntDyX/0iLBpdpfwlyGsquuCyMRbEgaxTBHblZxovoLz9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCJ8//SL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCJ8//SL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748656193;
	bh=+4bdSjmehWYn5JjAaxHpwE85guLbDX5qmaeu5JOs2wE=;
	h=To:Subject:From:Date:From;
	b=NCJ8//SLcpHNy2ecDiNXA7MySnHKFfiKebwtbA/kdU8eTZXM9TZA1KPGmjb5ADcBs
	 E5RWh3JWbwjnCzABYMEGjir6ughie34pt/SOXD05kgCLxbau/XnSwklBTLDqGaCrU7
	 5aBqdLk1NAsSjLREB4ISGokI498l/kAEfPhabfmn9iw2LOwtnlP4WPP51n1OH2VPXi
	 ZQVFGQHAtD+BSDU8CivOwGGUGQSAmwjEEpeFG8LXsVAl8/bSemOfD4ea21jtdRKg4o
	 wr91oPedxpR+yPSOFoR6I00tzNMsgVscz4JDziXw3DAqs/4rRoZQKVSxST+gIC5YFS
	 40wegPDTkpC4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8C1C5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865619357.24428.2090010526806100749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 486606ecfb9d6d6eeee1c1121a1c472406d10945eea81dfb2525650a86cc73e9
Date: Sat, 31 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748656193
