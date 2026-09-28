Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E42A4E0202
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790610634; cv=none; b=XAIMNMvGk0myA13Rr2UZxJhDC31BTaV63LdJF+Svvyc6RBU9d4ggfnb7oCJ1gjJm9aAqSUhHhctPBR6Ek2QhgvchkKajIoI5UHzVMTAMJdj0FfO9Qm51ZlaZmJlMXxICLL/pzja0Y9GQbioC1vgkqIzTT/XC9gZYt0oOJXDTGsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790610634; c=relaxed/simple;
	bh=oDPoBdnpWn+aKQGkeqOVFS62m0kMyhGYiSdhSIxwU+Q=;
	h=To:Subject:From:Message-Id:Date; b=d3YIZ+YjOZI0vHi0gQT3qwsCW79hdlDTgO7Of+5SSnsID0GYVZMugBND6zFpZ1sD4N9WfmHCOw2umm+A+mQ0CZuHS0NAWcz++yJ8oeZDOU8ODqFBS3jx1yRRVmCL/lmcITYAkJydkxteNsNOGVryd1lQaxCs+K/qDCmKOnI7LTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnSoREvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnSoREvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DFBC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790610633;
	bh=oDPoBdnpWn+aKQGkeqOVFS62m0kMyhGYiSdhSIxwU+Q=;
	h=To:Subject:From:Date:From;
	b=nnSoREvOXAiO4fe8RHbb+jC/kgt/gmK8lsG2RoocHQo+SG/LD9Azj7yf+Gy5EcUF4
	 AArLs4TM0umKY9o2o4DwxrcEyK27AjJYS520krYWEf+fupCMkzAgcvAzNygspeemxe
	 ZGpxPnw9KhvZBJWHP3VbC2pX7AKto+edwTB53I21+hs8C1i9K/yfyZcJ+S6SClgu/s
	 Di1MD2dl5/aYipDKXYuVLniJLCr2WXQDeqWlS25jtc3v9sI2+aBCCMiYZ09V+uxDKQ
	 ku0RT934PsSe9ROlOCDWqnafWNywGxzZW2DTW4wAGoWaHHiahcpPf3cyZXze7qcT64
	 qYM1toAUDMfPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF2CA5FA2
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061063370.18622.3025855510568289374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab9d95d3fa7cb9cd2bcd3398ecc9ce7979a56d448434097594cce2ee59eb748
Date: Mon, 28 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790610633
