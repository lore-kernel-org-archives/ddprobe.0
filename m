Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3158D36C592
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771346094; cv=none; b=neEjajCEqm6zyd8RbjroLNPSdwRwKBr1PJ70sPwWB3vOWjKmwvZYW//dEGu2GrPyiCAHtfxpfg++FlSLYZ3M4KC0WEmm0lOmnqGUEpkcSBWe6HK+0hODNIBh2FfrhkCoTbR7mkreCVj3rM/JWwuiPyM8haYlHsCh9wwmCFcb0VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771346094; c=relaxed/simple;
	bh=KIV5VXJ3FHGW+lGqfEbqroDWjPShoM8FwsCgRDBRWOs=;
	h=To:Subject:From:Message-Id:Date; b=kc3eRMHimaD+b/H+ZK0OXEUdXx0zoUh1r5Tztq2mp6+n26S1b5dhnP6x1MtRutaDLoUaJAl8nC2ewrskCtEu18Lf6uHASzXLNyBxXTzCdWN0YIXUwEkKo+n74BOOC24cK5ef+YjRI0D80DYFKSHoF8Q8FUYHdpalAD6fQDfwi2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C++EB4Hu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C++EB4Hu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE01C19421
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771346093;
	bh=KIV5VXJ3FHGW+lGqfEbqroDWjPShoM8FwsCgRDBRWOs=;
	h=To:Subject:From:Date:From;
	b=C++EB4HuCtTakaIbmfZaZfQR9iqDtxCU6dM+//evbAo6CVLjHkOwsHtC7MAnL45kA
	 eX0iUhO5o0A2bXt8TEA6ZNqiTT+yFh376ha+dR0hKMhrbf9rS/H/4urWzDqH9W300R
	 ZkAjUPxvPeWD7qdSsiPon3WMMKktN1tsG3Uxg94B6gDkDc4xQYwVL9If4W3weQoZhx
	 6nGuwZ9hy4EL1Enb0i26ipBXu84xecTVypZlA+kNYsPBSyvJWGyM5kJnL+tiZYkB+2
	 RBpDxZnGyP6nsyZhuWb6S/l3SMURe/LAaaewGWkEOBBTVEZpGTnPgyVF50DMvOGuT/
	 GrCGamPj8xA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356BE909D3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134609359.28647.7173290554953122774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfb6e04fa5eac43fcbef58fa10cc3b00b50132d3e736ccf1600c494106e0f1f8
Date: Tue, 17 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771346093
