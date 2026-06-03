Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7FE37DE89
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780509874; cv=none; b=h91/ux0yrBjwWOiSEruL4pOVzKS8XLA3AFHzJHvHXDctQz2ebxSwz0mJe84YZD5wyc3UwLORA0iPtHG/YG+GTMah72lNb32v8U2lTjaL86nW07SzUKp30961+UdXmReuJ930nOowuNPjEOJQPSZCImKBM2//QXaSz6lqutw2FCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780509874; c=relaxed/simple;
	bh=Xmqf+KBKUgj2hm00OjzTGxPtI/27GOILtlEH3thYr7k=;
	h=To:Subject:From:Message-Id:Date; b=e7yMNLlxsdds9OmePe+JC1IIKLhFsWSLPt5U31eW0g8kZPugfNu2tAKllsfi4TbCbVYYfBJX2OCXOBfglIfG6V36sRuAb3JTwaHTuflsq8ad21ywOq/1W1C9/GXbevD3S/R2tK06U6tLp1hqmGOSFYDvtb5g/isWDY19fZq1azs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoKYmI0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoKYmI0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E7C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780509873;
	bh=Xmqf+KBKUgj2hm00OjzTGxPtI/27GOILtlEH3thYr7k=;
	h=To:Subject:From:Date:From;
	b=PoKYmI0H28V63lr8dkYn5gjx1MMo5CyqeUHUu5H5hXpZzi+pr8ajsolwuB2Jh57b9
	 bIioM+DpnLL+DW9bMwtHWd/sPH9Ge64ccsc1QHe6AULak97meFTnbPK7ivVng4rgkm
	 xZBZsaX7c8MmLbj5ipyvcKP8/6t53QMNEM3RArg/7BaV7QcvBoqfAt4KSQLEqwYLCi
	 1V5U61qvZ8UPeXgpED2Is+8SB2AZxkuBU/jRMsYRqZ5SWhuGg+1gwzD7OBXvTT/q7e
	 U0IYcG3RQuCUucHzjMvQ1VhQ1Njjc+APgOttCnyNamyF1UAptRq8deOm0P/xVcdpI5
	 1Panwf38cskOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54A1CD6E69
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 18:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050987373.6668.11078495910683762067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c0877288d9ae46929a87b1ce42084f9bbb54a2e26e0b7ef5effe190948c3150
Date: Wed, 03 Jun 2026 18:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780509873
