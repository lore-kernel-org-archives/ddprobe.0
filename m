Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B9A37CD29
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788532234; cv=none; b=hSkj4UN1scSfigqbYbUV40p96KW52NAxdb5eN0dRsy+lavN57Cv9lmfD+zvmvNNe6B0XntqtK5DPcmwQnlntFqejsmG7sQ9eVHkvAhQMuoG+7E+xSTVNhPGR+/ShaZfaRWhCThm1s/dmz4g0vAdoD7/VLw6f2Uh0YxgRj4zJ2Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788532234; c=relaxed/simple;
	bh=BMLtBlRJj7qx4uxQcwzRRgmNnHD+TcN1NUorO48qoxw=;
	h=To:Subject:From:Message-Id:Date; b=H+PJPAt4v7KfaXSGWgU53fjgkmriWzTftMu4gs8kbgH+sXSti0fzSvOu92CVROOYUTuKmqBGQIEP1IXdZ5xtINjUHEh3hzrXo+Yp5x9QuE6kAfx6nEjMl7Iy2GoZhDOUBqUEYAZ0W5IIeRYziPdn0rj4T1najvNQtbL1sLezGwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpLS/T6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpLS/T6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D171BC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788532233;
	bh=BMLtBlRJj7qx4uxQcwzRRgmNnHD+TcN1NUorO48qoxw=;
	h=To:Subject:From:Date:From;
	b=gpLS/T6BvXMzWRAS0DdheSmZly1NghgHopXEO8kWbbdq1haXnqF8RJlTKvehW5gLE
	 JTireThjrEo/LVzbhYGA68hhEK+xxP/UPNFQAca7ncYayh1ob/xYwHoekEKeshLmM1
	 JbjWKwlPkpCn9Zv/aRo/E7NUpk3+l1c6oezp3zi2NMw/0vfW4GRf34TN5cR5xECOi1
	 xkyEQ7Qkza21puJqqB57ZrPG/EmWKr7RYjPeAklIHIJLD9TFkD+ubnAfQtvmEuvs36
	 eXQVFq2PqKPrqKGo8W8fF7hdg9mLK5tWbrUATEkgW0UO/m7+DCjqwaiuhXEQZni8qn
	 UvNf08MpXNNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC7CC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853223370.4403.1569159739705243052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e8c043c19409e88bd20861bc64540edf3ecc17ece8541085c1c532b0be53da
Date: Fri, 04 Sep 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788532233
