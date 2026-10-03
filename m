Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58542388887
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791069034; cv=none; b=PgtzepoWYf8FsIoZnAZL+WU2WvTyhPHaabLqCFIHJXafQ+mx+5NyqFXbx2nctefLFIjsEol6LqLhaDfZtfsQtMgrkLYKedRe/rBoZQf7IFZ6vLUhDG/uiIwbGxRQXnICBLrEv12bRej3O4pEas2R2V/j5C8ikaKyZSuztZ9SbnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791069034; c=relaxed/simple;
	bh=OAq6eqJ2XirDTFAj2K9nxdlq14M8XecDdZnq9QZK7Pk=;
	h=To:Subject:From:Message-Id:Date; b=nzZnzKVv9HZh4ZWEYHBCos/MJtM13GfhSLcW2LCsPRGIYItrNebKjgBu29UUntEASJAGW48u6f0XACSa11u/lJ6KrieuL+eD7CDaSO3U/FnxN7PC1nQSHRbzfH4wMBME8fS3AsWGWr3PGfxXyONs6KRZXarjkscJehLSqMsKxA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdP8PRe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdP8PRe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D470AC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791069033;
	bh=OAq6eqJ2XirDTFAj2K9nxdlq14M8XecDdZnq9QZK7Pk=;
	h=To:Subject:From:Date:From;
	b=YdP8PRe4X/YSyiGH1qDs/gyoomhV8dJTilsCYFy+OUYLZrM2zsg7d1aJnCxoW5fFf
	 u7rAQY4/DW2g2fDSoTXNxRNWRtd74wFXIP6nPoxTBM0XJgM1qYkz07NTiZUKoBw7KF
	 hzBKEvfa5xXPluMgkGF0xknpgRvsK55uV167NG1V1vM+sboR2A04C07Fjav7fcqS+Z
	 +LZLIS7l6657XPRArsZSR4tK/t/rzx4ZaQPYtz9Rooyvgxgv3pKzmm30RZ8Q9U/aqU
	 ChrIuZb98V7H8US5QhZitgad/h+CqMFJ2tH5+/Ogi8iQf4ogj9d4TJ2IZvD4bH5Wf/
	 ANXLv+J5tBR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B115BCA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106903369.6290.17239695507024333537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00c1dfb9b16b15d4c9db0774478a751162a88d0e3c914d1741da747d1940300
Date: Sat, 03 Oct 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791069033
