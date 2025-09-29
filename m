Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2387D2D3A9E
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759166394; cv=none; b=bX55//T0hOlW9xMGYWL1cIwmC7P2j9Kp8YWV7nmztmVE92CxUOrfml3clBDSzbTJrMiDozMolwN0Nb4VYL1WAF5z0VAeR9uNlnCFjdP0uxWefNHbUYFsifSkSI0Npdtf6enpkZndvpHUuIrZ8NWYCN89nv65e5RpxmhxY4Ojvhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759166394; c=relaxed/simple;
	bh=XYgyFXFi07uoEsUXuUQPOXU5iviPS22sDt4vA9YDgjI=;
	h=To:Subject:From:Message-Id:Date; b=YggSP34e+ykmqEeypR0bbXAOeujDnIkCxA0RVQKMUZ7fZabMeYXV1SwiWSnjktTupwssywwxLn78L2BjnPjC1W2FOk1ZUq813rM4I+FhSI/c5wgHpLK4pikTrj5p+WpbkMqP1Y+TdbBGKiGkdHg5F7t7zb5moF3NWmWV308fBEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhbdsLW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhbdsLW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1060C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759166393;
	bh=XYgyFXFi07uoEsUXuUQPOXU5iviPS22sDt4vA9YDgjI=;
	h=To:Subject:From:Date:From;
	b=WhbdsLW7N6VQwRLOTScs0/1Fp/Gz9l/X35K5LaF/d0u6E86++VxeDNIFInj74nUMl
	 3WXqs7WGj/LfA/oiAVBudMX4aFqdMSrwdliLQlku8weYEFtqEC9MiOLGZxbZOd9Dcn
	 tqWxVZ2QF89by2IKfgU8jZd68dF8QIiYraalvTGggTgFtUOvyKKe+KUXGQRoagk2Ua
	 yiM16qf2nc5nuPN1idDfFkCWMd2ns7qVa2uuN4qWAU+Bp601ISIeL43AdrQlkyEb2R
	 rmcjupnthGlLzUReaqZBOThMVnz6QavtzmhH2vbJhx4gHMKfmf8p5hb4dbUpidN27i
	 6czlwh+jSwb1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B716CAC5B9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175916639360.3851.2620775049272920961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee2ffe739436200b1be66baa0e45edbb52fbe3b421bf4254ff4d506d8b61cc0
Date: Mon, 29 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759166393
