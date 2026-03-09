Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B4C2BDC2C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773078294; cv=none; b=RKeovXy6cK6f156/Z5qc+jApnarcloqqw4M02awWXKxXKfs943BxX200R2oPSrfUlPlOsHPGxHycXM1bSd4+PhfcgHeIONz/IZXa/haVQZiyJlktmWAeql1rKB/du3O7wahJgNnY4U1Z2aZpeNSZ0OTMuyCIu2xfF0GzSGOiX+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773078294; c=relaxed/simple;
	bh=UQXNuk0GtrNTelx+WTNLMDgS2FeUBtYDlGWJtJd2Naw=;
	h=To:Subject:From:Message-Id:Date; b=Xv0XaH1Plqz1H+hPsZA08WoByjkuuv47TMUAPvtsbLU4NQVB8ytEbPARsUokZVLT93AoW7c9M0qk5qcEnZuKYpjRc13ET1ZhRh9E72Mvj0/Ia77cVtvlaY9sTno/1f0SvAeZgNfX0yZmp4UVk3pj3p8tPdgggxeae2Jrk0yd9po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUjgsS5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUjgsS5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773078293;
	bh=UQXNuk0GtrNTelx+WTNLMDgS2FeUBtYDlGWJtJd2Naw=;
	h=To:Subject:From:Date:From;
	b=nUjgsS5ONIgmtCtFS+myg5UHdn84AsN03Mw6z1yKlT+6i/qIKogNnRFbl3jGQaV1b
	 ichw9qB2Rv9jwyxpc+3vFLliZVpYdjXyE5JlP+ILf3EYC2d8zfi25bUHznJTkDC5Gp
	 n+wl3DCGMydDmbVqkXZhxOEf+sqaS4oJ5LVzijEJaaFqXGevQ1ce9plZuFA7rgZ+Cq
	 ScRgdbml47TJktpBL+W5CGHATg/GHdxEhEgeFZNSoBG4+TJPrZRXa3/DH+kapsLlFd
	 8s6JHTd06tJJ/dlNn5Wxg1C2Y4i52XO2Le4nZV0zB4EvPV0+I1mXeQMHZxsnUdpNTo
	 hCgWOT0hcK32w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96343FCA164
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307829360.31573.16123160567237357746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3865c2573e8943ab06b94b2d6e37ee0f6519f0481cd4e523445973abc6f4defd
Date: Mon, 09 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773078293
