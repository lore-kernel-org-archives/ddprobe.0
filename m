Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B55938E8D6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784464114; cv=none; b=jxe3JRSQtzpV570znR+EbHHVbqNaP2CpoD4TGwZTDOEt+Xhf5lQcaanM9VesIHIk8TWUAfy+MUbbo67cckPhVK3FQxE5WGtWuaZf1ViLmjgehuiZ+l0RWEh+N06pBi9dWnWLJ284+h8O4Byn6Y1pBihqJb3tDWt9gjZF8G46pjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784464114; c=relaxed/simple;
	bh=g7Hy1sFuWoTnYGo2qf76sHUhkzBOlAOzoAgyQchtG/Y=;
	h=To:Subject:From:Message-Id:Date; b=p5bTncaxaiR1Ag49XT5QMcbmTGUy2Kw0ZuFGC9hFrh9Liulz3E/I0Gvi8whUg3fyIORmbSAlm8gbdRWLl3esPJf1Zcc1rmYTyva9sBG9Jchv46VPHb4CCFT9e/GlCIOgnTo5xa67N/D8Wt5U1eAlKiakQnH50whK5jgWJcX7Zdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lN8ElUE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lN8ElUE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ECC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784464113;
	bh=g7Hy1sFuWoTnYGo2qf76sHUhkzBOlAOzoAgyQchtG/Y=;
	h=To:Subject:From:Date:From;
	b=lN8ElUE8NPZhUZkwZCZ+wDFYDEZ7Q85ZRNK0XDEPMco2rVTJ96BQu+lwnxiKbjDTP
	 oQbuB1AnPqF+Ne+l8OtuNlbjZ6YXqLlCrqFw476WNS+GwpGc3Pto2/GwQzs201IEfY
	 YSlP7IFkWkR8t+DuLdZfpRjTyNALcXwRKwclRClXJeVFlnf4ml2eMpu8xG088bTuzx
	 uWZF0Lk8oJpgPmY6BAC23K82OLKjOKMzJxLVOWIfyQcenPE6x1J5Y/THs0zBwPSOgI
	 sKUtOOewR9wm+KhBL4p4vr20rrGA7KER6rp/1+sJVPNH3uHMVvihnENnjNHkDZNhdJ
	 Z5m2+e+Gz3N8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC129C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 12:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178446411368.27661.7713524429330673179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd7c39b6a9eef7d1186d0f8ad7f639a7e4d5e851a6bfb42fd0683a3aef153f72
Date: Sun, 19 Jul 2026 12:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784464113
