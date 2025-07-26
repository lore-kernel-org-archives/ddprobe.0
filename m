Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C70733F3
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753572594; cv=none; b=WoQMcllXUNckqTHDZYO7Vhf6dmWn1K8TgGqJMx7tX3F5GQD1A64gm488hHMQZljfLUO1wFFG1ZqpUBniVbaRqGT31iX9n86L+TOvpM7Aqy+ruzZDDYxcWDK7WUPu2QjSnGMbhik0C4/fRt1MXQICNrcJ21a8WrodXC9zjdN86Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753572594; c=relaxed/simple;
	bh=PrXx3gXB8sLxy3ms1txQlcs5SvgcTPmkrLISP8GZ34I=;
	h=To:Subject:From:Message-Id:Date; b=ck2AVYu9MLeDkBbQ0prDARCa1/dMx9bew0bSekd3zY/n17SASHBeUb84zkGcMXn44ntwRkBEvbQNHm0i8WFzlJTCyoDPf/A94Z9zzbcG2q8t/dLrYSPobkA7dPq9Re3pEvva2HMD5R2Cxk3xjxS+s6WXf0cX131wIh5xQezgy8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=olmKggpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="olmKggpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A473FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753572593;
	bh=PrXx3gXB8sLxy3ms1txQlcs5SvgcTPmkrLISP8GZ34I=;
	h=To:Subject:From:Date:From;
	b=olmKggpUhoW1T6zPDFTA+laqdr21fB6bxV+S5hFvdrHoaHbXA6HUZRalxYngiqGvZ
	 BRgl3Kn4wFyA6XrJluMBLTc/qnu86/DpzPeyPrK/XNFc+PfYxL5MXLic1K3uvya3IG
	 jE5+x+7kNrpRSQLdB5uz3tCGd9DHqjAvdRMMYPOdB7eDj81DGShWP6PDGc0RlWeDBb
	 Tgy5UJ3uvtjhTXkSHFNQhBcBfFMnSvL7V1/f0F39wNO+RPTve1lBYFsWM4QzdFVr5J
	 eVzFO4VP1Qv1EbtiV+OmvWbdAWbaaFomcFku1RzuKHQzUtVsEV56UZM/iUPAo8SFtQ
	 PX9XdxuR0WdzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C7C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357259357.31530.12275850484857871855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0540e11fdfe8b5bb22b632ea928a8591e70cbaacfd1ab1b188c5f8d29eb7f7
Date: Sat, 26 Jul 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753572593
