Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1448E230BC8
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750669794; cv=none; b=t8ml4a7TcBsrAdsQSaT1XwTbuM0TDsaFWg4iT5zYHy1/+iTJoA2tbZxY9AX4NP8Ph+j0sQE1EEbimqZu8wlDPLDtsRYoIgSfZhqYMJ3FbZzQ4VwyjXqTfFvkuHiBHpZBlJ/u784ErPUxoGBDKJV5BD2MqXBPglf/Ff4EPYOC4D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750669794; c=relaxed/simple;
	bh=77O4YrMEiDoYJ0CACx93jcaKvlaCyykXJFJPVblXz8A=;
	h=To:Subject:From:Message-Id:Date; b=bRtYHmEFbSLm7qCPG5PG66wvUwrZ0qtNc81/xUzeATU3v1762hlq3ExprvZR1pCqUHUT4ZrQmxnV3bzD2P8nv0Q8FzkiAs9KoepGIX+EqmbDIFDADS5PsSUKlOWjV5TUHK8V4SlOi7et3LvrEaP44syA6e3nxTYqPIGxkdPW4dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhGzLhO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhGzLhO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2653C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750669793;
	bh=77O4YrMEiDoYJ0CACx93jcaKvlaCyykXJFJPVblXz8A=;
	h=To:Subject:From:Date:From;
	b=WhGzLhO5uo9EdbDX6NiwAXzWCFa2pasK1RoK407DNM+oZfY+kGJWdcu/0+LqB44xs
	 UhTd/EQfsWP9ubZKwFOOoniUj6TJG33fMoLIN/74mYlEbErx1ypDKcRouVwukV12Kf
	 nw2Lypa2n6S5Oi+H3C0vphIksjxG4WCYzn8hvp+/dTHHg20ZOKJ1ghZFM/K+75FCW3
	 HSPhFU1gnBZISdzGEhk2DagXhHgIlcHsNrOULFKHjNEqUoHzLKBCPJlRlRtj3ZTJOU
	 io3mryT/5uXIVVrawrnGC3F6yB5IqBGRqdyWE6oWNJ0CXeslhX7ZZet0toevQcpXna
	 YxXup/cyKy6cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90719C77B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066979358.18676.18269217311365895900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f167814dc23ae0c704074ccfe2fbb3dbc874a97c1f643a4a62a7f423cb0cf5cd
Date: Mon, 23 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750669793
