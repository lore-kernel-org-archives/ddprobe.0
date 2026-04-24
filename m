Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E634134A767
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777061854; cv=none; b=h6tgq0Wm88DjrkE90x1/pYawxM9SmspOtGmPKg6H1bX3YasjzYD9O4nrApGbvectnoN1NVae/ZiZbWL3jcTTj06eWWctJ14AR4dLs1QUh1awngOjedZoxIS1dcWn7ZC9vpwUca/0zJ25ly/YHD9uzm6QY1b982xM4a7zgk+XYAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777061854; c=relaxed/simple;
	bh=Fs3k89obx9klHDCCdTaXPgwq0WCwuYvD/WY8Pd7a7FQ=;
	h=To:Subject:From:Message-Id:Date; b=f/5WQ5GV7IJh9WMrbU1WgYk9jeD3RSKp6uTx21n2i3g35cjD4NGoVVDQxGt4Nh+Y5mjQ+T+4GKeF1FXK2Fh6FEAD15iB6tSTVO0SSxYN1CsU0+x5MaR1HiyoKjt+X6S6gcGGAUPIomxUjeyzKk9KFaCodMPCqdoHZePRQjuejns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdI523Tb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdI523Tb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5B6C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777061853;
	bh=Fs3k89obx9klHDCCdTaXPgwq0WCwuYvD/WY8Pd7a7FQ=;
	h=To:Subject:From:Date:From;
	b=AdI523TbKwgUuYkBXOhY+HMcyuzyzZ4ylYYxX8PRrmk/GvS5496LXZWg7wsTMtROs
	 DU61ksvj4p8NyGUChnDmnf3wFUDs8zK/C/DwonIpVoPiQoTRWN/i9qSivjOZTNoNST
	 VBFNfs3HFFYk77m5BTLIBq/MwKc6iQ/bmfKXY7UtzrQM0UYKY3lL2rcGt0s9K/xgrU
	 G4ohby77/wgIH1dG34cA+LLNWGxWC9PTWEgnGwZtiEWETa31RzFnY/otyfwiklQWLC
	 ecHdVXIwCZD7+UThYFhqy56bIF9BqKgG6iobbUEimThMP5Zv+/b3n1/p5NJxLnLXtc
	 4m6Zx1bFiP0mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0D5FED3FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706185368.4444.2050134587226509556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05809f3fa6be6983fd742968d5b8e646e085d659a05431c34a823fe2419806ff
Date: Fri, 24 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777061853
