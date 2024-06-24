Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3464AECE
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719270203; cv=none; b=Bwz4Qs47D4jS+kikm7SvdD3KY1LhlJL+H5XF8vWiuzdyzBeuxiBhNDkA6FyVnISrmrszNcecISFxt1/1pRf82uDkzqk/dYq8OS4H+Rss5GPve6LX72MDUozU3Po81UXRJ75nxMi/nur4w9ViKPJ09zem0k/P+6Oa/K4Vrzrgz0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719270203; c=relaxed/simple;
	bh=0PuJiK9cVR4JSbdhnyJcjFn//NfLB6Kmefx+A63dSYM=;
	h=To:Subject:From:Message-Id:Date; b=ucZbwSV49LgB4aqNwQBrbPkR+0phb2hx5zsxtVkGwrzs78L0CUQUfbcydNVfc1XP/fWwvUelmuqNhm0Q/DumTTeiFncu8clJSgNiT7eLkMW9mXtWQnq7GBLWiuLMdgqAfDYBkdkECW9ZIP4zGIzMw7kO4XR5QNDslau5dSM8eak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVLBi8AL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVLBi8AL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7234C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719270202;
	bh=0PuJiK9cVR4JSbdhnyJcjFn//NfLB6Kmefx+A63dSYM=;
	h=To:Subject:From:Date:From;
	b=LVLBi8AL6j/PBSB3WrmutwxclV+WIOFfuM6OFvCqViryERyqsanG6uA2Ls+qTdP0F
	 hsrRzALQ8fXJ7OKFh2AuiXxdHTtHrF7nDeEmUwY02o20896fT8qeV83FPXWQL889eT
	 1GvBF5JTodCS480sYaSqo70Wepzodw19hiu4wDJ+DoDx6EzkjwFdx86EevOWCdRDbU
	 p0F/gYyOytA5pzfqh1BdZRoBL2nim7kGgB2qxukgMcaImFXvtWmLFRrpyGHCeJF28C
	 ds5pyCN/trwMvwCxzHfwRvIkyYNLxarRrcjo/npe/C8vaZd4iVyo83iNCz7qkNFNmL
	 S9SFlIKexqAww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C453FC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 23:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927020276.25835.3428565654711903891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154f242ada3bff9ebb90584309a8535d1f2d467d2700d6c457d9ccd5d72f3498
Date: Mon, 24 Jun 2024 23:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719270202
