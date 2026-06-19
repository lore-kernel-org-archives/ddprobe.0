Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B5919D8BC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781835994; cv=none; b=XkN1livKJLQvjxNEwKoskkMILOhfPObqm1ATCIiInacyO+YZYvNT8ZQ+Zo7yrxxMDbQrvuiw5WKJcIN8GoKIhmaDwzHV0uHZuL6NGlO7csHOVMXLNn9sFGl1bk3zmdGJ1VL0XYTJXYWzdnkNtjH94FGkIPjsaWpF+PsODb5ujNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781835994; c=relaxed/simple;
	bh=fAP9oUE4yUZWLucTnwELbuqDHiFuvNi+6O4I1LWfOfk=;
	h=To:Subject:From:Message-Id:Date; b=EjbMFkKAVCQIzK97LuMEqpE7Jmf37UpKwRbpRMbDpTy4sn5zX7wSQKI+O02spmSFzO8/6iyhv9XuKnwTKSxkfzE3g+EsyouystxgHl/OJ5wAwNagslU68Vuyuo6JEz+DnSlJ5dGgJSI8wNM0X5PfxEANi66m0PTMGrvw6tF60Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPbtHGwo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPbtHGwo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2ACBC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781835993;
	bh=fAP9oUE4yUZWLucTnwELbuqDHiFuvNi+6O4I1LWfOfk=;
	h=To:Subject:From:Date:From;
	b=EPbtHGwoDn2SNYpQK7rf719AzW5ATMe2zwCzPtynutedyRZ+lrMxb5w6YqWLunPg+
	 wP/HsYKMtfI0ILPqZUcZN15sYiNrTU/jnzZZG3+GMBkFlZfHdyJ5nstVoV0I8F9X+K
	 JGECGXQ3TO1ZrkSGMBDkPIZa0jWeHukuEPbSaNmMhfIzrEo5fMyC8Yai8aFQYkHPjZ
	 UEuzaphVhD8lIPaByRuQKYRNtKGOXq8E/IgwzoC/AzVWG///IDBRv156oVek0RhIeS
	 DIXB9uEJV1+GkngeIGFN4gV/nPNIShczrIn7tVf3V/MHL0gTHxIBsqETjuFYhwVG4/
	 0BKxNm8iWWRbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB6CCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 02:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178183599369.15255.11367810472001340542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ea1bb6e8503e8cf6aa67a71ddc4d5f200d3ecd9696554fa95782d1b4e304ee
Date: Fri, 19 Jun 2026 02:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781835993
