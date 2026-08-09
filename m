Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0AF145A1F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786318834; cv=none; b=G52x5fwV5pLB1i67+/+JzLjIcdW5CkH3oLp9xHVhI/A3yZq3ivTPNp2qEOyx0rUHUCr+I51FzYbegUkUAaiJytP6qBtHLuYywevXfEafq8wkv8vccbwUK9PEil5vTCkoC12fzVNtdLzPjIb2EyEBo1p003atADL30P5vwHFnehg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786318834; c=relaxed/simple;
	bh=GAnujGF4/gdKEuQcf4uq17xDnIGSPG0ATt/fkrqCN2s=;
	h=To:Subject:From:Message-Id:Date; b=rhH6DOeHb7gDlkix2ZoC7RxB58/fKpwpx9JmeUsBY8x1Imz32u9xgqrkzufubD0WC8imET2r+PpocZeWO74aPNFT6Fkix3hn/r4iU2wjoHga4THeClNgehNopfIRhtfzdT+gJRp/2CE/3MJPHtlYuivLDB5FT7CsS6ypvV+SG+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dlZh0c57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dlZh0c57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB253C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786318833;
	bh=GAnujGF4/gdKEuQcf4uq17xDnIGSPG0ATt/fkrqCN2s=;
	h=To:Subject:From:Date:From;
	b=dlZh0c57bUpU94dHl0/F9+q+AjMV7SfD58OyizSGMhFhYTzXq/kxGYepXsfz3LKbP
	 ZAJgh3sVo5JVA8LPQzO7yLMSNtvB/cr2snL9W5Djvl7fTw7LcybhvPnmvLor4+2Oh2
	 lg/WTRk06x37oSzHssCLIgZK2Pa4bOft+jAkDGStBFCC4T0PEnmSPa4a1vdWejSnV8
	 DuanM8BkNerALZ8l63YdOj5gwsVPUVVNUF9ivDG/FyoKbYWYzJK11Ngo3u+E+8nbXb
	 t9kmdeJL+FWqOhaUIfozlP5Q/dPlQVZ3UeKTDATZ0CMeHp4wiH/BnmigMMX9AReDf+
	 7JilmiOsXdLIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2222C5AD5A
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178631883370.29055.4967186367617466028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7848bde00036834561dcc198cd2defd1ce7e65b9d7e35e4358ca0e17a9a51d92
Date: Sun, 09 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786318833
