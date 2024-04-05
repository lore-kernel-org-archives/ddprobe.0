Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD11A1465AD
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712304496; cv=none; b=HiETAv9vMULgz8PJswfXTzfjDYjML2W7VXf143cLQD66CJ3mMs+vW6OM/8Hl2aOgCauY4R/3sClQYoxe7O5RyLuwtvv1YozVS+xXqbqJC+6XGGm8uG409jTi4I4zcdXiSjWwQUQHsDwmpLfZWG6DKEydNcvOS5KB8bxskq2PxOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712304496; c=relaxed/simple;
	bh=gqWJ1AXb0vuKjlKCEIe8Qzp/jou0bswTAcBwWHSmbH8=;
	h=To:Subject:From:Message-Id:Date; b=IFaE16X1NynacsUiEiaVuROUNzhTv0og3DtIEisX3RpX9XNAq85QRh6unjiTQQ2AdWS6zGkOVXdvIBY8CV7KsAVFsgn3bqzt3nilFiMP1QY/ThHfwpjJ7w3nZMnCy52HvH7I3oQwOSR5ht7GuYdxNAjZk4lCNRZOga+7M4ftxaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLffyd8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLffyd8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEAAC433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712304496;
	bh=gqWJ1AXb0vuKjlKCEIe8Qzp/jou0bswTAcBwWHSmbH8=;
	h=To:Subject:From:Date:From;
	b=BLffyd8MHF9kvSkB75Yt9mzBV7RhVcz3IXwxw4+HpPOtWDiW4KD2IRCe7P8BEztG+
	 H0RGwRM5DtsOsK71GjwZplQinX4fFj3dakZAKmZ37phfdtzcaDJNR+syCZqzj5RrYm
	 vVKPxUYrVBgA02AMLmq9+2Te1Y6spJaf7kpU095jWTKeIyHjJdiXuCMJMoLY1rbUGb
	 yDQIKQH40nKLQTiaYrVsfQd3uQi8Ko+h/lEEh4CaH8I/GODH0OuEq6WcI36dwKbkTg
	 PIJQVm/moyVW0mgGwcLaBMZM3eiH5aSo1ShvMRVe8woHC4hjl7q44MTW/JMny+KLuY
	 /HYoFTAopVHhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E93AC67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171230449638.13022.10593311371990267439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8c75d97935adabd82f78fcf7fb4b1959e79ee2d9e55ce5aa3f223cfb9e17581
Date: Fri, 05 Apr 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712304496
