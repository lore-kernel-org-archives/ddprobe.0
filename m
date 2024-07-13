Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A981BC23
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720844363; cv=none; b=fNOOtFnN/pvJsyE6rGf2zMDiM8dkAolf5tUP5VH4HydufEiDLKaUpXXDcYoRmyxegL7GaoHPBf1mL68tuvuBkAmaqz/kzYsqQddI6j/RrJAz5t0ypcY55KvKZWLCnuhe3OsapF/AVUu6qvL33jKLE4s8muhGhaB1OLd1fxTgENA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720844363; c=relaxed/simple;
	bh=Ez3gILGIUq9MCtSAYtQNLg7VqgN2DEI0pt+C2xeIfDc=;
	h=To:Subject:From:Message-Id:Date; b=e8mDUCxCepcuYr8CnDqUu49f7fltt23WkC78jdZ3jguw0vL5NVqQOoC7afPmG1524npO/tuWpT1+H9h3x/w5/C1Z0RDzRHNylV8xVw2djQ0HRL3yhP9BXseXchlLbFwJKA6JnEOnLeK352bugbyMqFwFM/c0xdMM2Q64ZimLfVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTDaVs2m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTDaVs2m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 024E8C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720844363;
	bh=Ez3gILGIUq9MCtSAYtQNLg7VqgN2DEI0pt+C2xeIfDc=;
	h=To:Subject:From:Date:From;
	b=CTDaVs2m0bu4ZZ8l/J6GJe+N3HwgKd2rf5prujUv7HQ8bnMDbSJGaYDEHq5HnV6Su
	 o0QxZQKUugyHR1G21jS4bIr0h20ez+9kgfYif0tX5vntf0weFYDSprK7PqwGTB4Pjc
	 kPLjBU38NFAmpk03AAidw9PaBfrfwUfT/CjlFVNnss/ZqxANhu5VTEVh9JRbYAdn4+
	 2GzoYuCsa0LvcZJFH9Q2aOISJBDWyynazGTiQ2XdmM08dzgE/5hDFfwc7stQTDPe4w
	 Oiq+t0iAXrDMmO7tcxZqx1uOmaz0JYRS+4Xy22Gu43T+82u7ZvQCM6Q0nmpFe245EW
	 TMBYAgCisMdOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D30E8C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 04:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172084436285.11967.9810112383309516539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 034a3c6b2e5c6d57ede7ddac7d5585434e142b2514e6ccd90570182243593717
Date: Sat, 13 Jul 2024 04:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720844362
