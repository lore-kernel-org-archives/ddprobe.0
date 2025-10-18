Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6D519006B
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760785794; cv=none; b=NCTfurnCNmeOucvCWOIMMaLASrw8bT6MPpEY3FD5m3JouPVVNA2i3+05lXG3O1og/BJibjm3cviiaHcU+adNwj5j+znAiqYN2q82pNQxgtYXE09LfnoVWtsBSACfLEGw+IdJuJxGnpIY6370mQrMwBpc9q5C0gFk4Qb6Qn9+5bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760785794; c=relaxed/simple;
	bh=ayTkDCVy64ICiiIcxBkuRvGNdCEOOxLzfscD5/8Yql8=;
	h=To:Subject:From:Message-Id:Date; b=GUH+pU/eluALHbMqVNS52ssgtcx2wV0NuYrR2ru3HL6aA004krTzVxeAjBA+WyEn6EtjHcnlnK38dCjEBG9P5Ii0mrwXFT6SK25AWaa89WYTGFnK1EtbHNPrmuPt7hf9bT9oQT5gAMh35StQLjQFIN+ZfYyERJcI+4tRlumzePM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8V4qI13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8V4qI13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09B8C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760785793;
	bh=ayTkDCVy64ICiiIcxBkuRvGNdCEOOxLzfscD5/8Yql8=;
	h=To:Subject:From:Date:From;
	b=f8V4qI13fihbSRuo0DikfxdLgvBwkYu0q55IFVhOSApjhOewyBOPcy6WlNh8kcT9m
	 kyob/XKmBIbf+PP22GFIPpFarw/k/ncBkUZGgfAV1VSXVdJtvGKz80SPIe2jVdrgWA
	 REVyY+ChUuFuFjfFCAmLxAPS9lAialrZRTZntAfyNIEPazIcne73pVJvbyjedSIRP1
	 aB2BgLhaDTEJ87D3hNRQQ3Vpu0L6UAmLWgZpAiq70BWE5zCDZB8/Qyv1eQQ2M2LyTw
	 Gt9xPRg/7+gXuGHvFBz/sM+GWraOpUZSooZLhWuQLZ8MBBlQqSEGpqkrfEDho95Mj0
	 cLNitqOtbJj5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97378CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176078579359.6830.17603114373876374139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f062d36e41b09e9590d70f181dc8a9b3237391d1eaa8700de957663c01be763e
Date: Sat, 18 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760785793
