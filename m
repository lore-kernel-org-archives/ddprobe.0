Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16ABC14A60F
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771237494; cv=none; b=c/c0pwDTbe0CBQSeBooDPESTBi+wQ4MD2KtC01ZU6ydeZh2/edYphTiJzXspH+cMZKLIp3G0qBMjDUyqZbjQ7HHKbaPWix4wNGoQeB9mJz5Pw7pdLAzaYjMxt92CBvVsLCf7OJztKzqgZHakfW50obDjga/NHubxBGHvBmmVZuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771237494; c=relaxed/simple;
	bh=VP5/eThHvhR9gxuEGMO7IDyHdDiqcjDDUBmpg8+xnv8=;
	h=To:Subject:From:Message-Id:Date; b=MyinvHEm+Qjc8LqIwv4ArnDEylKDTFi+ipyvCTQ4Zjkixy65ZZHTJKEY3deluX/QGzfKdvSJkDyR7x/9O0Nd/lo6lSX/RUzxQCE/9W8htTDm/6ThoAQWmcETtazz1eSunpcylb6aJ3awipACp5/LbOGF0w+PdnLvckjf7A3EC5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVpFPQJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVpFPQJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EACC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771237493;
	bh=VP5/eThHvhR9gxuEGMO7IDyHdDiqcjDDUBmpg8+xnv8=;
	h=To:Subject:From:Date:From;
	b=eVpFPQJDMqhfUej3jRL+KOJ/2c6l6yI7TVl2x5C+9QNNpL8hplYTeXi9DJmtWSty4
	 mM6SrK7Gjao7ehsWATQL5Ok3SPWwD4VAUUgWPf8WLOjCZA2jOtx13pldZEBOsXnQZU
	 Ovi/bvA4eymcwTedPfdNV/5isqfVZkmyiBzd3rp8T7OMY/hdL6tSZ5aWtcrVVnBmJX
	 SeMTVKaod6Tule+R7uQN7IeQLBhhLEVRDB4AmjNy36U+jE6yWV9AWBuJXxnQ2LZ4/m
	 6jFsyB+j25lx/FTs0tTR7A4lEYiXRJT3uqx3Ih4CdmwxqeBnwYy9HtsXraIo4jvdHh
	 xw/7zpa1AAVuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D84E7BD86
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123749366.9444.11196155496620922388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19235d895acaa91c806a8ebe1aaa1e3bf7d8945bd655e1d3403a20380d195378
Date: Mon, 16 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771237493
