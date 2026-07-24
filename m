Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4E4194AE6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784869234; cv=none; b=AuGmipV6foofjDRGiYqzriiXNWMZBMTTTyRX2cHYqQIb+CI5xxmDVCpHawAe/wvYEaMKS/wfVgFo8dYilNtTuUcPi4tiBlNu5b/j26E6w4Ots5UZWm+E5DIosq+HXCHI7po9hT6zvYlgnz6KAnsQgt93NIKrHE7t3EMDFnKxsGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784869234; c=relaxed/simple;
	bh=ix2tto1eInlQKrf86JolOBdtwrQAQoBJllO5/vqHMqw=;
	h=To:Subject:From:Message-Id:Date; b=iUbZVXzQZbp4oMKySIHQAiw/WbsYTz7Wh5fYDmdYnbeBa6iymPO3V+IGqc+FbmndGGN/pRaRfmoUyobTGViJr7FGPFmZ69TujNElDoQFR/orZgISXSKeXYMSkz10M+PwyEaQdG3OS5PGtUMc8opyow6CCUz42SMTQhAA6rTDXWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzAZWnlk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzAZWnlk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8A7C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784869233;
	bh=ix2tto1eInlQKrf86JolOBdtwrQAQoBJllO5/vqHMqw=;
	h=To:Subject:From:Date:From;
	b=WzAZWnlkwEwksYCGDvsCiXecWGtwHfX7n+RmDUYoX6FBh6h5jEPDZa2mT96Pa+iu/
	 l9iVZICQVKHHkh4yccAeZGTjaMqgwsmPPbEzPUpP1bLZSfryauZHfywutQ5VxVWCIV
	 O+uZxZIH+eU0lHi5hEQvfTr/D0tYThJqBbnQSg/iQkLynExsjqSuvtadvh++wwR8ql
	 5on4Jg8HODIbEUDS0014goHCwUE8XKkdz9V5hRCqsxaG7+aZ0/vjLkSG4bcYIxrxLu
	 1xwKMPRml1PKcAlRhS+xdPo7YayUWPjbC6tNB+4uUfqVrAYDEaM1Hb15NqwEGHnIo6
	 qmkHlhWTKaJNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DA0C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486923368.23424.14699514560978403810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85c5d54ddb84610f9f6828ec598fd5fe2ece75b14e1aff04e43c509639fd12f
Date: Fri, 24 Jul 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784869233
