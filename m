Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E181DDA18
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786265434; cv=none; b=meQE5sYDH45qR884BKgGjKlBNS3WsTdB7Og6KZtmCshel/vtof2NWGGxAyXGJZqeIzyS+/1qL2HKvfEwRqqG8JuzFyuNVLsAGR9nwSNbtW5J4byOziHuYl9ZOBrkgHH5XM1ZeRfaY9Cjf7jPVWE8w05xR2ERwe/j84y9murLuFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786265434; c=relaxed/simple;
	bh=Vu2EPw0fQzm4GxAj5BOyQd+MSmdLegcPEp5suOpYuzk=;
	h=To:Subject:From:Message-Id:Date; b=RdKwIBDtxf4GFBuT25lTnoh9fLrs9lT9edComxBlv0mUhTavmQuk/p89H9O92lA7m+hkv7T2X3XnF4QiBRAwHX5DbOMaJPyTX285pFYtFLriIaDmtN0u17xPOBu1EvaI1cwJ9UMwA7Y/6SCMehkdHaa/RydVwosJn8oFxar3rjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctedjRar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctedjRar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4C8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786265433;
	bh=Vu2EPw0fQzm4GxAj5BOyQd+MSmdLegcPEp5suOpYuzk=;
	h=To:Subject:From:Date:From;
	b=ctedjRarz50zzyXbK27QQTsDRUqf5huF6BNPfs9fHk4Pdk1I27t9PvC51362iMFn7
	 HO128pLBqlX0k7IOJaX59nGEgNz0b8yc7XwTaeo4yYigER3QZhgusnNQV3rQrHqCF/
	 R0Zk0ZMe9hlAhlpjhVa4lof1+ejJb+L85YUAGTWikWtkee5zsViyapWBU3rcuzw0pH
	 eCeXeVbKvO4EO1jd+iKRcV6Rx2hXsZpdXGmKj+Tb7aI1kJQ99F8T+kWJYOfHM+yvaZ
	 CSztFJrRfRvnoiJdZTgonjwNsRwK3PhxEBMD7mU4tyUyOZR17fu0gTyL2jIBQX2dDd
	 DboHsaXCC1YFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA770C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626543371.2379.14896886284185698746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd14b5046cfcb8440507cb0b065c57ce98f53a96a089f50414d5d878f17f5f47
Date: Sun, 09 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786265433
