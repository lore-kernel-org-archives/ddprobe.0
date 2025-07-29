Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E33322686F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753762194; cv=none; b=PI8KswfEZd3KNCAiaUib4v1nj6C+gZ3m+vIVeGc+X8wRri0hPSuzmdELgKfX+FkFvg0yV6qokWtk/LuqY79AB416+vCJqZfj00C51PS7ANwtxXru5fL+M4M2Op0oroFbWxli9mC8YP9ppBQf7loTBuOgRg44JJmFRxTFEQeN64k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753762194; c=relaxed/simple;
	bh=JUfb6jABeShYmIQF1hipKFwRPjrhWPXVk01rFIcELDQ=;
	h=To:Subject:From:Message-Id:Date; b=i7OOXUUUwj73YYQ8SEky9nWi03v/L1lavFTD+irLIIxpcL86ZG7D/XP9BDhcUtdr9TglFbd8AEP5eBv7ps5AtjR/TjbyWyaJs5Kzf5xPpVPeBL5XODF1RFXwZ4DVNULNPRi61OTjY8Ty7Q72n7fM/BTJHbaAUVjAY5VuQM/hsUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbAKO5Oh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbAKO5Oh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD6BC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753762193;
	bh=JUfb6jABeShYmIQF1hipKFwRPjrhWPXVk01rFIcELDQ=;
	h=To:Subject:From:Date:From;
	b=bbAKO5Oh+qUZbs8VCUHRUHB3RPQ5yRt5zuiBIlMK+o3img2llA3e+4YYs1qOPRNKZ
	 S4EXqrgJ0km4rniPvH1APZdynLAx0ifIsPfeFi20PaAm/aED7TFtdSwd9b0oKeyGrD
	 N4wWG0tmlWDGJBhSOkxxulfnSxT4yvkLGsGu2cT5oZ6tNusTa70UZXOvdxZrhYPQkS
	 wJb3R7fv+yWYSrOX5KRpaqf3yLw00YnEWlE7Q5bv3MqKFW0T4QKJfSXjxU7OHsZHHM
	 xRjzOWTZ/oENw2xPzcq07LKZ0G255+WuhTBAc7E8gABbk1lD43R0Ex2A6Pv6XbQpyt
	 tv1xo8CFicIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E91BC83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175376219357.5886.16774246172261083323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd74308acb1680887a8f4d841e79b61fd4ff11a25f9278a31be5b415ea0b1bcd
Date: Tue, 29 Jul 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753762193
