Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41511586CB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721754353; cv=none; b=pKxDqFL6uC9E8gMLppb57x5HERZ2AfmcpZ9cCRe1hLE049V7Hp82iHt6ZstU7RPzkjJ4nUaN5o1FdiPrLk5w9wb+pFkbt12LOUbQeDJo6fksJ2qFt/Vmf9vQrUvnpF3S8kFi3nUGGxEPtv9h5+7NiCqbjkJODXQovxmGQvU4w7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721754353; c=relaxed/simple;
	bh=kBOAd3Yqmges7UTP852AsSTRiHRiTp6ZVvNaNqhnMM0=;
	h=To:Subject:From:Message-Id:Date; b=dFIwjTvD0e7tsxA9H18C3tAtvGlSoFFAJNIlDLBBbIA9NeZ65Y41yFtdeVqj388ou+vxaICbqL/Lnxp0n4yL3BW7A2rOEtCdZYiw/BNHrrJLxvJmytxQIMOmGHrmzTKkqx2YbOdI9tmAykfW4C98Ln05KYpbgvGBfK8bdyW0U+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oQjCfP9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oQjCfP9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D7DC4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721754353;
	bh=kBOAd3Yqmges7UTP852AsSTRiHRiTp6ZVvNaNqhnMM0=;
	h=To:Subject:From:Date:From;
	b=oQjCfP9egljStu+2mI9hXkiTSTr+F28Q4+I73MdIOnHodk5DRP3oeLC0B4/G3MBeq
	 xlW987R42bOdPmuqqOYRi2zqco8OtzitoVuEic791am1lYEzQAF50HBAY2hA5/qGZj
	 h+pqkhvrEa/38KNRKgr/+p+H6sVL9c/Q6URVrU9LMt90x3DJ+9HN2e2Ute2NsJZe7p
	 DMCYU8pa1nAFAVEoNcnlTXealkemJbkfjLz1oOA4rTY0hbgoFdi/cZIyPp7egF5tk3
	 XeNRAdweU3BUj2arvpMJXVLWWk5IJCUdxFNXCHUM7IpE2Px1hm17I7zsGIN118PCvM
	 buohTYQUIW2BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1837C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172175435363.30517.15974708283776299930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d85749885011c5a62e51e5977092a2db4e861071a2a0098553ebc7fbcca54c
Date: Tue, 23 Jul 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721754353
