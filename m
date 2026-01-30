Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0465637AA64
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769811234; cv=none; b=Q819KNVsZWjoIlfAIJHtUP8PV0axK4+P8LZsGcOWuIavrRzG5z9ZDjvalCZn6zrKtj1vQQwC7LO+skouyxdWRvLf9Z2G+z12WVNdL7Pc4cp1pr/MiW5Ou8ZnZHbNARmthjdOGiflVCXoK+Hu53RBJDkEsfGIggLt6tln30YujKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769811234; c=relaxed/simple;
	bh=kUNGqhzW+CtCyQ1N23tAPbsPHbYPTRcgKmMsOwsuJdM=;
	h=To:Subject:From:Message-Id:Date; b=SMJxhzYnoflm867ttl6sRsPnQ4aAAbQdqVcDqRbEDh0tiI5Ezu0nPNBQM0Bx4DHCZurr0rHjM2PVYv5pV/riE6VuWeiEhAochfHmnZXWY5uRBydyL0nd2OsOF8mr/MNRH/E0KA8msxusZZTu5ggAH2E/X5+xbqOtnMdaMOtkOYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXWZotEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXWZotEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D575C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769811233;
	bh=kUNGqhzW+CtCyQ1N23tAPbsPHbYPTRcgKmMsOwsuJdM=;
	h=To:Subject:From:Date:From;
	b=bXWZotEEiKxWiPdR7rFs8plhe7O8UdgdidrtF8DpsTQMLpvoIA0EBVZWJ88cWp7lN
	 gBPW1/zTCA2MVS6wZIM5qYhxg3kDt25rNe3DKQoxTKtyle2pV5QNlefMXtEjf7+DKi
	 nj/gofzUObUK/WieFHI7SD+v9/iJ66KtjGbcgnOgewiwzFAywickeIBicNE75+oMZK
	 1HKesMlCx1Xo4xaQSwjupsHGot3+sCo51IToOxRUiopsc6VXZqdgzOXdoP/XsKvhdq
	 q+1utY4QSNBtiDn+jzCYSyWg2AZGngJrx3eyoSmAfAs6GeFlq72F5lLwpPHYRoKUip
	 bnvdDnI5D/Rxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F145E6BF3F
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176981123357.6172.9629059938597361201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fe777c1c639ab78cc4cdccd4b389d2a9dc5c64fe5d6a523c4a1bd4598ff4f5
Date: Fri, 30 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769811233
