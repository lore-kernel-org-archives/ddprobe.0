Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352BF35965
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758439795; cv=none; b=gslfkUA2rjgZpWUSe4rYBzfKBZK6e4emL9PhE5MFygHtGPoTaUc93fSOhhPmIaHHEREUcpLmxy6fd21c10xV0TMQKX/hR3alFoRoEHxr90BjA7ZEHmDSu3PfMVAV9tq7ooDYAsJ8qDUFvnPZx+DzyYIIT234etEtxsWZZllQY/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758439795; c=relaxed/simple;
	bh=LrGIQHvGWS5ZbDj30hwVJU11LRgQZNqvCEnaweyXcbE=;
	h=To:Subject:From:Message-Id:Date; b=A1rf6PY24Pdaf5bqWMX985C6mlrNYgVr/nvaLMptum3bunSV+6sA7D90zqAlEmyxZ1wh73gwBp082VZm+PpQT12/6RU2CqGsMhrq1/jv470leS0Gdj/Oul8azhy/7U8/4p606T2lugGWBzVAJz3Pt9G/GUym15UoHMaR5ZWrRas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=koeAoH1F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="koeAoH1F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DAEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758439793;
	bh=LrGIQHvGWS5ZbDj30hwVJU11LRgQZNqvCEnaweyXcbE=;
	h=To:Subject:From:Date:From;
	b=koeAoH1FmIBwR339yIiP6VYfzVDdgCAznospxsiDwMpVkx7azv/HNptxHtvFmk9fQ
	 hLzsvuPQJAYCvvgx+DZxxR9nGwy7h2kPtSn+Ru3UdWPt5IVP0nKamuQN7SNYFfLEZB
	 7w+NgrPBg624Fw1WKGaR0WxmT/UXf687UO9qsC8L9OKbU5noqWvIZqrl1Np071QGBu
	 Rcn8av0JkuO0pWMqP1kp6dQmzDr3+hnZAe+D0swIwcgQ7GGTYCoNzASNXObmYbwVKz
	 ChJ7fIVBI7VMhPjVl+FA2RpwSjobTbK6TtK65z5FwrAMAkn/GQE0FkBHSLEqiig9AT
	 1Hfya+PBu0+Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917A2CAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843979357.13722.16683252251254024007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36ab2404996ebd64f80d2bb9d975fb1590de8d8fa9a90cd7e6214e837d5fa1d3
Date: Sun, 21 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758439793
