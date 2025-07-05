Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25BB91A9B24
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751737794; cv=none; b=jtde48oFFNUUcRuG9snOqtw8bBbB83s70m9LX/4k3P3tpO65pOWyPqqqdsE53MXd21FfPi2sIpnHgHFgbLnYLL0Tg0xW9k49wVNd4gWu7GOkRXlZPsX/+9/5sxxZZkSWsRgDbLw9FPmcpAQIHbOd+5Vqax46vC1xymDhSQncoiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751737794; c=relaxed/simple;
	bh=diLvPH5qtfm9okAL1TVlSUV9BDutYvpxAciaX5Vfqm4=;
	h=To:Subject:From:Message-Id:Date; b=eg7jiEVf7Zjss6woQ7BjPLx70c6FFD01W9S9anKpzqHlGtns+7/RfplGqZgfYW2hpOd/eXs1fDQsxHxmqdNjUTgk3zZj+YIfL1QIcPT9rUkgXoMZnYOBQU9TkgClopi7yLYnaAOTqFvxyXFuomp+n7tQgxRwSIvlALHyuD1q0BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sldz+h9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sldz+h9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26DCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751737793;
	bh=diLvPH5qtfm9okAL1TVlSUV9BDutYvpxAciaX5Vfqm4=;
	h=To:Subject:From:Date:From;
	b=Sldz+h9jltV++vZgrjaGeRqmDuYELO6rtrdmNtaAQZ+e8S/5RpF5Ee+0LoFHg3nez
	 HBVdsmOTevOXcD2eI8jHh/w/f8vPzIhyrs362vpW2J2y441rH37+Ud1FtsoceTbDq3
	 3yo7sr+pma66eVqOgBjX4K9hI4HFp7NM4FLOOUq+4mly+eI9RnSNOfhuQPzJ7Epw+V
	 cjjL/Rha+TqQicoOHngSXMoP1+qkvO8e6o92zigFgs8W+7lcDFsetIRovNzbJFx1vv
	 5XFBLTDjQRQUb7BAVnpBcsdMs01WQi4iexUhoUQU6IjQI0P+q3Kwa/n8C1sovXCzpa
	 efTiE+ii0HD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C1C83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173779357.27877.15855386045341461481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36054de17a4805f9cc7f0c464ddb5e643f8b4904d338d27fb01d284a0c776a6a
Date: Sat, 05 Jul 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751737793
