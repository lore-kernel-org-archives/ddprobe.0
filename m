Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBB510A2C
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713568823; cv=none; b=KH+t7lSVHI7lwL33oIoTypc3Ii9DpP+vQzE7wyNaVakMuWbQqXml6po7ER94TtsddN4Hlhtv4QEGpswrvj+wQOlk7k4lsQn5rJxLcb8XcxnoZCJRltfeFuX0vvaLcs5MG+ay6ubTcinYb7EoNyty3yiNX0SGapwzC0igNAnAriI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713568823; c=relaxed/simple;
	bh=HUz9pj6RTCP3pcRQ/jjxh292diRmXmBi1FZtZ+edH9A=;
	h=To:Subject:From:Message-Id:Date; b=eDeOmy2H4MHX+EgmhBknPreIVw/iZHIVA7tkHew6/viu9Z27A9PU7v+tQhCPCFk97/FH1xqHh+hAcroJ3NAU7PNgDwQxYy3B1uAI0YEaMJ0h5fEaulBDKWDZoM2xf9ZgP8qQrW7CA//mg/Icea1bgUSVYxzoj0gEVKoZaYP4O5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uU6Stt8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uU6Stt8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD9CC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713568822;
	bh=HUz9pj6RTCP3pcRQ/jjxh292diRmXmBi1FZtZ+edH9A=;
	h=To:Subject:From:Date:From;
	b=uU6Stt8lFI97ZioEHODXKFudChUHsOAx5vVqtjpQ5XWuCcTlCIH4FhO+9asiNqPDO
	 ketPsRwmIcu9bLjnvVA0KmkbSYs9dyUM8/M85PhI7S5Aq+AeN5owsP8+7FdJNNuELr
	 ZHtzgK6CD1jFR0KAL3m3Pvqu1ZMbz5Beev2h4UN3yyKUbCDVqmjx4CUDgtGAggqGT6
	 kPuAFsD6mBYX6h5brFFQnl8G5IruVZrdBudA6pkaD4EDJ88Qn5yv7Xf29BTW8U3jbW
	 +Ef9VgboPjqhI1pBUV7m4VGLFkwUlxvV7VOXUw0QRzXTcSIW+9WuopXunIBpqJ+uEX
	 tKKAsOVjY+P9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C72A3C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356882276.13308.17049334148506224830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8327c24001992f38d2090203ca9f6679244bd403d507a57782ad8a99c9f9f7b7
Date: Fri, 19 Apr 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713568822
