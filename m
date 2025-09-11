Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F52199BC
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757634593; cv=none; b=alWP60iUGonKQoJ760Qu4wqj5ykDuDugwyChW3hMWZpapSsoVY+qZHrNar48cJL5LR5rYeSJOyC/MX2COj1XhwRJoAuVlhEZp4TJ3sicRH31VoUoWJ6bwcT5diqnUCFMbTa3D+UxmwAPUGeeqmTou/p6bxp3QumHTOk5dWDDS24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757634593; c=relaxed/simple;
	bh=eg/OiHXsnaHA3jW9+DDJPfTCgvsCVrNKb9GM/3/nVN8=;
	h=To:Subject:From:Message-Id:Date; b=mrKfK1OIr2G7fmg0Y+v/XzgBRQUsvAf7HU20LgYVuFtcH8bEiDHBsjNTfujeZca5nXfAdJgFXpaNPjDjwi9OvTKl7NH+/5ggqqHMuq9FfD46uAIsWoWPilrsK93keYLRS6ya4rmSa4oG0OkaexNTLsoWOY9y6HXRJT2dKiaYzEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA89rwGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA89rwGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A05C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757634593;
	bh=eg/OiHXsnaHA3jW9+DDJPfTCgvsCVrNKb9GM/3/nVN8=;
	h=To:Subject:From:Date:From;
	b=MA89rwGXqKKbKrghy2OlO2UU/OFWVGcrEbl1XheQ5hcUnSl2CnJiJM76VTdGYh5jj
	 qZpIElheGz+xO1WmPPsB8WLDrXAMLv0qobIsD5fZkVojOKb2IB0LknqWKmQ4yi8y9A
	 Vcgz8zKo0xyUVCefRVbTUTV3WPylJRVLQA8TDNwwRjlxPDPf8+mHGY9w7VYCtSVbUU
	 VKspy7KTucmbAgnuxKhd6bFQA+yB4OLcdxYXv3EiZr2JmPOtmbX4cV8AbLkkq/QIZF
	 KPJJvFfBH2qsLdeAXhjfYWPa9Kpq3mBrWWe1R6GNunJRTtW8drlySE6jH4NyYBnUPM
	 k+otuKmcUQq3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9422ACAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175763459357.18165.3519471605334058069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223555bef3594aa97104078732770e856a39e4cca3faa1d0815adf58007252d8
Date: Thu, 11 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757634593
