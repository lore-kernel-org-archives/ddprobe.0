Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC9513B58C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772415294; cv=none; b=K3oSs0xnOZ2uae+OLj977t05durXkUpy1eTNu3PBc/EpmMrBypo0FKnxTkmJbIEyoYy8uaGx9pNPUGpP1xHmORukphhKxkP1aunUEqRajlTbJQ3SdyJmRxx8ROlSZYHaPWlJ5dsoSEQc+ppaQJfiU1v6gyLuSoLtcbi6JMVJZyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772415294; c=relaxed/simple;
	bh=pLm7JzbrtZedsCQ3mrMH2uRJE05svVCoVI6VDgac0pg=;
	h=To:Subject:From:Message-Id:Date; b=ukJNyiYhbLnUiNRVDO4/b+sFt0nDWPTUzKWlIHbuQfC+h/022cfQQ3FGBWOJQErQLR5E+GZs3j5URGjU9S1YY2O4sf417bzuuEH63NBAEhZjLsPV+OVYYQ5IIvcZEV/SlVfXQwe6PAQ5llTSj5yIw4aQwyU/ttQdr73XZTcMhXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/KHBJua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/KHBJua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EABC4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772415294;
	bh=pLm7JzbrtZedsCQ3mrMH2uRJE05svVCoVI6VDgac0pg=;
	h=To:Subject:From:Date:From;
	b=p/KHBJuaR2nzWnIbAFwWD6WR0TE/f+MEof0gFQbSpKNIyBY1918YDAFerkJDk2kth
	 H+V9hJ9pVZYC8CtPDX26GKHFfY3jHzIScFmkXsTOL6vZpP7nVdtjog7RWKcDfUN78K
	 YD4sLv8gmmm8FRbWTDyiqB+XFCKF5N03hMI7cxIlfi7tdBh2J9A/OLsLsZ17wEuiiJ
	 cARtylbVN0AoQO+JUvqhzujrEK96fbndN8yNi5v8F34/g4MQa1bD6bX2CrCRf6O4Z/
	 yOQAoLPwJ8MIQf7bX7MAH1paNf/uY/PctwNlsHyOEBhKaPm9FEjuIGfCdjqtjt3CHy
	 98ieTBr3skEEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC57ED58E43
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241529382.18068.4503639769806945315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88e9b43442f62815a92be847d0a53d553fc08bb5ad2ce6cf335651de7ee009a5
Date: Mon, 02 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772415293
