Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A01039793E
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788417034; cv=none; b=qT3NOGPBDK/QIeWohy9MsVmWQ082mvrAZWpw76dl8vKKCQ2R9HeqNL5V8zMmc95LUl/qvCToOOF003LF4jkA3hWbF0JUNYPgCBhV1dRCpsPAK5vf/eB0+Y3NyOCvFsfTKGE1gjz+FdpWHGI46NiL0Jxn/J6wNs+x2Hot0fW7i18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788417034; c=relaxed/simple;
	bh=qC9OWdXJNnC9+zQWyT7wU15snk5GnyNzrOa8p1vhwjQ=;
	h=To:Subject:From:Message-Id:Date; b=SEr6BQTFJZXzmxErnHuldWek8pk7c4lF4pZF4LKqtU/DrqsMvoTa9E8qGWkekuhUPqE/KMOYI4jMZ/z7unja5xH5F8G5+KJ93+bzogHBYdY6H3V9WNpsijDXTr7t3oPxRvOWshdfE58sLcSJOb49XdNO7vrKrSZ9Z1j1BUY4V+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfSSCQ2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfSSCQ2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FE2C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788417033;
	bh=qC9OWdXJNnC9+zQWyT7wU15snk5GnyNzrOa8p1vhwjQ=;
	h=To:Subject:From:Date:From;
	b=lfSSCQ2+dLgC5IlznyrlqIkGUxgl8hyC6PMVnuwgdNx0NQ0ZlGr8snIu5rpzcaRBC
	 UIrvX9svhFw6f/dndnbzrnKwBtgO+l+LxCPAloW4po/7XHryGOmRdIylmk15kZTn53
	 Gt52ObL7g53Lv8gI5H8aa9njW1+Tr028vCzch/euiegH1ed9JS+/xmUmrFj1DPuJti
	 oI8cmKZg+zD26sMyAd1SAVlWerrfQuf/wKZ/BncEgogT8R0tR+I37bhPd2xgFjAElH
	 mkZ/sbK6DNTlAWnYpjl0/7inTiZdY76nU8e8jcpUOLBKfbcdi66pSqXsWNzVNK2NNG
	 q8fdIXL2g1aOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC98DC624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841703369.3899.17231208709001540822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88ade2bd616bff696b8f9d0664ce7b4781b1f8cbc2ca20865f44d0d493e5e106
Date: Thu, 03 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788417033
