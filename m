Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3243621FF30
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772262294; cv=none; b=GY4JVrKUYVivZec+Njb+XBgyDSGJCK6V54fHDW7NQKs/wpXaulvyMyf6cpwHYr6vDRBxcTTW6lvwXGkmWS2QBn0hA7Ce4wv8DCgrkfMHsHl8JSTkUvp75EcXmKo73mV1UDmBEstQngfdtzkRaYGqM+Os/HB1MBU/SNwuPCHsgeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772262294; c=relaxed/simple;
	bh=Fi1RypiW49zVnEFUovDLQbQlXmnDCGmCq8IteuCwcHc=;
	h=To:Subject:From:Message-Id:Date; b=mqBQWx/RymF7PbKGNEQl4p89I+r48lT11NbJOQzEuE/anjK724AahGNKhoiqgbyCEUc1GNySJXlJ8AI90jaO5k3VMNityZP+2m3EyezkEvlk+SxptgjOB9NHviE9LpQhVudn1U/KfNCc7Tr4Ju33tX9ONBmzSU49juBo444EHQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nIjoceoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nIjoceoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DEAC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772262293;
	bh=Fi1RypiW49zVnEFUovDLQbQlXmnDCGmCq8IteuCwcHc=;
	h=To:Subject:From:Date:From;
	b=nIjoceoo4yQEtVuPFynemIOAHggp9pCBPilJ8QtLugjeSdRoVQf9DlXhTl5MTCm9G
	 WW8Ld7/bd0EcFgwIPNHJiA3vwg8kWkRGgO1ZHsu3I6RQ/Ug7LzUUYuUGF8Roe6o+Hg
	 pyBx8FaPrUvo3/UsHl2M9yJRHaLiUU5dwZkMycXzSR0uQ1A2MUBJk6leivpS/Eg5A3
	 1PirpnpR1/zIHktObuVoZ5DBD96KMMeUdOsJbHTrpsCSIa53QnZVmrbbqP6aBoShHi
	 AGTwdu/IXIBH/rEWSXR4lGDno0uNd/M7EScYVCkp8uFR05WkfR9pR5gupmz2k5LBVB
	 NLJVPJkzPhs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B98FEE4CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226229358.20233.15143942583984758317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06628ab8a823f15cc8986fd82b7f145aba7cdff6b7e25ac8d864c34dcc5250df
Date: Sat, 28 Feb 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772262293
