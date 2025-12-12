Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280151EF0B0
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765514574; cv=none; b=kb9zWaLM4TBrYeYQyWksY5dychElXGjLaLRLUyRNC2KHO2F1YBIunjHb4FmAz/Onq5r078GcWBvgFyrdjwrSpGNdd0nKk+GmKuTmZVKWuamR2lWwAaY3oG015jXBItRFLxNk/Ruc0w60KN/lXamtOq6jcUhD2VH9izl9MknCZd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765514574; c=relaxed/simple;
	bh=AzvcRzRU20EAjF2D0AGGd/tUMrSxmgB2dimmuamLUsQ=;
	h=To:Subject:From:Message-Id:Date; b=bbp6uLkuxt4p+J7edRkpVEV2haZTg3i1zQjCU0fwLb2dgjfLvDycNrvMbjGCX55Lm5VJle5U6ozFenmBuP7PsWti6pmSBBPYHK3PgNyndiEgNZQ1Bz0Ffetmogk8mFzWXogMQqqV8udhPcw+WOPj0YPpZZFYRmkRRuaZIqx4hLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GPdwLhvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GPdwLhvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DDCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765514573;
	bh=AzvcRzRU20EAjF2D0AGGd/tUMrSxmgB2dimmuamLUsQ=;
	h=To:Subject:From:Date:From;
	b=GPdwLhvLIxSd20zr2c9pFRO2sXllyadactusn6NCc42qOfiwXK2fcWVDG9OYeZjIe
	 kXGtoLooFcqNNDDSRTLaKen3FsXOZVfYtJKrXEj4UcLt8H6chbuqe6jo0jMAB04WwN
	 brWwRfJlDX33QFeeg+g7J2Se0ARSPZlLiW+o/QHpy+LMMyAi0d2iywQcwi0wn75jae
	 gxJFeg8tdNgxAny+vn3Xp0lxe9goghALzNxDn1LN19k0pb68lXcGltJANdg/rBd/Jv
	 Yfu1/qp7fOPIBxhcIq867CryMYTOow3atRcMlzhDJ1LBfX1ctmx8JLXVQfiaMIC/nI
	 2G/gPaEVkwaCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95665D43369
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551457358.6500.8826755070080852047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ea00636582d26299db756d8a3685cd52c99e9219b20e01a659da23e362b4b4
Date: Fri, 12 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765514573
