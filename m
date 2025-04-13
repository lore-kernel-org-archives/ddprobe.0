Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C3FA94F
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744533594; cv=none; b=k7eBQIuJ3jHnxoA/yxupG97pWe6fSH5daw+P0dS2QReLHn7L0A2qjKB8W6fpVgJxS4L7JPewrnYFG1tdyEhnJBavDJbrbNuQCLJp7+3/4iQ+1pu4wF5H7x7cufrY7Hkt8RjLodY8/f2D62T1JFMmGviTVWLmkqbzy7+lVF9mBrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744533594; c=relaxed/simple;
	bh=u0y5WgpsRoPToC9ZgA+0+H5LBzGGEXUYme9WiXqOMDo=;
	h=To:Subject:From:Message-Id:Date; b=DPjrlt5zV0umAjmQAgDR/uH++1SWZ9xXiGYPAy8rIPh0x2go1ttDmn4CrIDmpr10y7PHhcvIT+LFr/I0g2AxHWCfAdrt4JQ0iCCbvXynNo0h0Wm6KWxcm+dSDe1OJO0V2YfAThHZTRQQcnYUyY99QtZdAVrdpHpxSPYS503B8oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDIIZc2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDIIZc2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5BCC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744533593;
	bh=u0y5WgpsRoPToC9ZgA+0+H5LBzGGEXUYme9WiXqOMDo=;
	h=To:Subject:From:Date:From;
	b=NDIIZc2V1aDuYRlrH649Yop+vj9YGAeftnkUk8xh6mtN9j2SpxFfUUBpvAyvQudT3
	 1gZYRiAXgsoSK/XxBhyJu2z1OFAWG/FDBxhzk68mdypBqUYiSLTsrq0GD08QEHbEgH
	 Kz0KEBlsB6BIF2vmAokwd+ms7RI8x7uJShIESOFr7nCQB3K2YRcfX4zeiVp3te89S4
	 QX8/YPx4rfin1st/lZCaV804IYldv26cyD6uQ1T2hqzjDz8L+NutYSals8m4gKmS2r
	 omzI5hRTgZfL5reEXTYCiXcrQjoH04b8gCPj8enppHwwXEZ929U28XM/1tEFjDVog8
	 dck2YVCRKQ5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9724CC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453359359.10746.1181452548676052638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e92f847744050fcc5788db027926dbe884a444925a96b22631ba2836f33b5ba
Date: Sun, 13 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744533593
