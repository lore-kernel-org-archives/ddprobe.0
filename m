Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167C33B531C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773066294; cv=none; b=WHYcCrg/XbMWeTNYIEB8WdeboGmP5E3CV/iVpC57ZWVO1Vq71rk7BohLK84MbpkkMn2hQrOR4cIsasJx1Q6KdgwzuA2H0Io5TtZi7Ae8SarMaLWV7TZYdQXeLNmUVu1vX3urtn5rSwOjVXa7pqBpYgAWtv3DouZXO/joP9+Og1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773066294; c=relaxed/simple;
	bh=USM7ec5vmrWbdDnXoO7/Ct1q+HAqjIpDEmqmkr+uUHI=;
	h=To:Subject:From:Message-Id:Date; b=VfrGZ9Zy11J1R6V2ieaQDBiAxRpN43LU1CVPMvZdbyHAMfx8fuXmR1yYsTbIsi9RfSOr79oM+Jp2U2QQpc4gELDd8oVSt0MGXrHdJXtzPRE6saKdwiuT3MZqW4oIbqhYFQCFBaA0G918stJWuXN9s1Ez0O32thbI4ymo/GIsMOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qj2LSGDB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qj2LSGDB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773066293;
	bh=USM7ec5vmrWbdDnXoO7/Ct1q+HAqjIpDEmqmkr+uUHI=;
	h=To:Subject:From:Date:From;
	b=Qj2LSGDBzIwGynvRbwrBpI0fqYz+wdaW/gBQzLH72WpRni7z4VHK9eRGUckTYlpls
	 YiU+dL39SCkXddbk6sDuLAYxw5/au5W7MS6+CSE0FwfPO+90rs94U1cV76vwBRd3jM
	 0E9aBNOtHblDPOPdWNVDD+XKhCa9ozzs2HNNSFRfP1YD7gjM0wTfdRr9twNy50op5O
	 fxSsdFzR98t1fTNw8SCnOxe3M0I1zZE2KPCQSq/ClEHDeTQGyKbHLTLpplyRq9G9Ia
	 AWbRIyGnQnlGk4CdwV3PXMZ5jzn8xK5omtGnMKvikUud1e5znpWkqo/OZat9KgIJvE
	 RJhQvKNqoInWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B7AF3C26D
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306629359.19501.14231784733831988042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0575e65c2619348a7fba0ec4a4533070ad2083193a0fd4246c8351baa0b95536
Date: Mon, 09 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773066293
